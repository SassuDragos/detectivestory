//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 lum = vec3(0.699, 0.787, 0.314);
    gl_FragColor = vec4( vec3(dot(Color.rgb, lum))/3.0, Color.a);
}