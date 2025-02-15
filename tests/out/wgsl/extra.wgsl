struct PushConstants {
    index: u32;
    double: vec2<f32>;
};

struct FragmentIn {
    @location(0) color: vec4<f32>;
    @builtin(primitive_index) primitive_index: u32;
};

var<push_constant> pc: PushConstants;

@stage(fragment) 
fn main(in: FragmentIn) -> @location(0) vec4<f32> {
    if (((in.primitive_index % 2u) == 0u)) {
        return in.color;
    } else {
        return vec4<f32>((vec3<f32>(1.0) - in.color.xyz), in.color.w);
    }
}
