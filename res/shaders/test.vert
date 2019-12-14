#version 450

in layout(location=0) vec3 mpos;
out layout(location=0) vec2 uv;

layout(binding=0, std140) uniform Test {
	mat4 p, v;
	vec3 mask;
};

void main() {

	uv = mpos.xy * 0.5 + 0.5;
	uv.y = 1 - uv.y;

	vec4 vpos = v * vec4(mpos, 1);
    gl_Position = p * vpos;
}