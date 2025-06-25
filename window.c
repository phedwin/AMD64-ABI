#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>

// Shader sources
const char *vertex_src =
    "#version 120\n"
    "attribute vec2 position;\n"
    "varying mediump vec2 TexCoords;\n"
    "void main() {\n"
    "    TexCoords = (position + 1.0) / 2.0;\n"
    "    gl_Position = vec4(position, 0.0, 1.0);\n"
    "}\n";

const char *fragment_src =
    "#version 120\n"
    "varying mediump vec2 TexCoords;\n"
    "uniform sampler2D mask;\n"
    "uniform highp int renderingPass;\n"
    "uniform mediump vec3 fg;\n"
    "uniform mediump vec4 bg;\n"
    "uniform highp float colored;\n"
    "#define COLORED 1\n"
    "mediump float max_rgb(mediump vec3 m) {\n"
    "    return max(max(m.r, m.g), m.b);\n"
    "}\n"
    "void render_text() {\n"
    "    mediump vec4 maskColor = texture2D(mask, TexCoords);\n"
    "    mediump float m_rgb = max_rgb(maskColor.rgb);\n"
    "    if (renderingPass == 1) {\n"
    "        gl_FragColor = vec4(maskColor.rgb, m_rgb);\n"
    "    } else if (renderingPass == 2) {\n"
    "        gl_FragColor = bg * (vec4(m_rgb) - vec4(maskColor.rgb, m_rgb));\n"
    "    } else {\n"
    "        gl_FragColor = vec4(fg, 1.0) * vec4(maskColor.rgb, m_rgb);\n"
    "    }\n"
    "}\n"
    "void render_bitmap() {\n"
    "    if (renderingPass == 2) discard;\n"
    "    mediump vec4 maskColor = texture2D(mask, TexCoords);\n"
    "    if (renderingPass == 1) {\n"
    "        gl_FragColor = maskColor.aaaa;\n"
    "    } else {\n"
    "        gl_FragColor = maskColor;\n"
    "    }\n"
    "}\n"
    "void main() {\n"
    "    if (renderingPass == 0) {\n"
    "        if (bg.a == 0.0) discard;\n"
    "        gl_FragColor = vec4(bg.rgb * bg.a, bg.a);\n"
    "        return;\n"
    "    }\n"
    "    if (int(colored) == COLORED) {\n"
    "        render_bitmap();\n"
    "    } else {\n"
    "        render_text();\n"
    "    }\n"
    "}\n";

GLuint compile_shader(GLenum type, const char *src) {
	GLuint shader = glCreateShader(type);
	glShaderSource(shader, 1, &src, NULL);
	glCompileShader(shader);
	GLint success;
	glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
	if (!success) {
		char log[512];
		glGetShaderInfoLog(shader, 512, NULL, log);
		fprintf(stderr, "Shader compile error: %s\n", log);
		exit(1);
	}
	return shader;
}

GLuint create_shader_program() {
	GLuint vs = compile_shader(GL_VERTEX_SHADER, vertex_src);
	GLuint fs = compile_shader(GL_FRAGMENT_SHADER, fragment_src);
	GLuint program = glCreateProgram();
	glAttachShader(program, vs);
	glAttachShader(program, fs);
	glLinkProgram(program);
	GLint success;
	glGetProgramiv(program, GL_LINK_STATUS, &success);
	if (!success) {
		char log[512];
		glGetProgramInfoLog(program, 512, NULL, log);
		fprintf(stderr, "Program link error: %s\n", log);
		exit(1);
	}
	glDeleteShader(vs);
	glDeleteShader(fs);
	return program;
}

int main() {
	if (!glfwInit()) {
		fprintf(stderr, "Failed to initialize GLFW\n");
		// return -1;
	}

	GLFWwindow *window =
	    glfwCreateWindow(640, 480, "GLSL Example", NULL, NULL);
	if (!window) {
		fprintf(stderr, "Failed to create window\n");
		glfwTerminate();
		// return -1;
	}
	glfwMakeContextCurrent(window);

	if (glewInit() != GLEW_OK) {
		fprintf(stderr, "Failed to initialize GLEW\n");
		// return -1;
	}

	GLuint program = create_shader_program();
	glUseProgram(program);

	// Quad covering the screen
	float vertices[] = {
		-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f
	};

	GLuint vbo, vao;
	glGenBuffers(1, &vbo);
	glGenVertexArrays(1, &vao);

	glBindVertexArray(vao);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices,
		     GL_STATIC_DRAW);

	GLint posAttrib = glGetAttribLocation(program, "position");
	glEnableVertexAttribArray(posAttrib);
	glVertexAttribPointer(posAttrib, 2, GL_FLOAT, GL_FALSE, 0, 0);

	// Dummy texture (white pixel)
	GLuint tex;
	glGenTextures(1, &tex);
	glBindTexture(GL_TEXTURE_2D, tex);
	unsigned char white[] = { 255, 255, 255, 255 };
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA,
		     GL_UNSIGNED_BYTE, white);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

	glUniform1i(glGetUniformLocation(program, "mask"), 0);
	glUniform3f(glGetUniformLocation(program, "fg"), 1.0, 1.0, 1.0);
	glUniform4f(glGetUniformLocation(program, "bg"), 0.0, 0.0, 1.0,
		    1.0);  // Blue background
	glUniform1f(glGetUniformLocation(program, "colored"), 0.0);

	while (!glfwWindowShouldClose(window)) {
		glClear(GL_COLOR_BUFFER_BIT);

		for (int pass = 0; pass < 3; pass++) {
			glUniform1i(
			    glGetUniformLocation(program, "renderingPass"),
			    pass);
			glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
		}

		glfwSwapBuffers(window);
		glfwPollEvents();

		if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
			glfwSetWindowShouldClose(window, 1);
	}

	glDeleteBuffers(1, &vbo);
	glDeleteVertexArrays(1, &vao);
	glDeleteTextures(1, &tex);
	glDeleteProgram(program);

	glfwDestroyWindow(window);
	glfwTerminate();
	return 0;
}
