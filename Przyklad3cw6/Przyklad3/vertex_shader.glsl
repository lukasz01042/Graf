#version 330 

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 vertexUV;

uniform mat4 MVP;

out vec2 UV;

void main()
{

    gl_Position = MVP*vec4(aPos.x, aPos.y, aPos.z, 1.0);
	UV = vertexUV;
}