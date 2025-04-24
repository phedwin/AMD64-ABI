

#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <sys/msg.h>
struct Msg {
	char buf[1024];
	int msg_id;
};

void *send_msgs(void *args) {
	struct Msg *msg = args;
	time_t time_t, results;

	time(&time_t);
	msg->msg_id = 1234;
	results = snprintf(msg->buf, sizeof msg->buf, "Message recieved at %s",
			   ctime(&time_t));
	if (results < 0)
		return 0;
	msgsnd(msg->msg_id, msg, sizeof msg->buf, IPC_NOWAIT);

	printf("send message %s with id %d", msg->buf, msg->msg_id);
	return msg;
}

static pthread_attr_t attr;
static pthread_t tid;
// if theres something in the queue then read

#define MESSAGE_QUEUE 10

int main() {
	// pthread_attr_init(&attr);

	struct Msg msg;
	// msg.msg_id = 1234;
	// send_msgs(&msg);
	// memset(msg.buf, 0, sizeof msg.buf);
	pthread_create(&tid, &attr, send_msgs, &msg);
	pthread_join(tid, 0);

	if (msgrcv(msg.msg_id, &msg, sizeof msg.buf, 0, MSG_NOERROR) < 0) {
		perror("msgrcv");
		return 1;
	}
	printf("%s", msg.buf);
}