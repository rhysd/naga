@group(0) @binding(0)
var image_1d: texture_1d<f32>;

fn test_textureLoad_1d(coords: i32, level: i32) -> vec4<f32> {
   return textureLoad(image_1d, coords, level);
}

@group(0) @binding(0)
var image_2d: texture_2d<f32>;

fn test_textureLoad_2d(coords: vec2<i32>, level: i32) -> vec4<f32> {
   return textureLoad(image_2d, coords, level);
}

@group(0) @binding(0)
var image_2d_array: texture_2d_array<f32>;

fn test_textureLoad_2d_array(coords: vec2<i32>, index: i32, level: i32) -> vec4<f32> {
   return textureLoad(image_2d_array, coords, index, level);
}

@group(0) @binding(0)
var image_3d: texture_3d<f32>;

fn test_textureLoad_3d(coords: vec3<i32>, level: i32) -> vec4<f32> {
   return textureLoad(image_3d, coords, level);
}

@group(0) @binding(0)
var image_multisampled_2d: texture_multisampled_2d<f32>;

fn test_textureLoad_multisampled_2d(coords: vec2<i32>, sample: i32) -> vec4<f32> {
   return textureLoad(image_multisampled_2d, coords, sample);
}

@group(0) @binding(0)
var image_depth_2d: texture_depth_2d;

fn test_textureLoad_depth_2d(coords: vec2<i32>, level: i32) -> f32 {
   return textureLoad(image_depth_2d, coords, level);
}

@group(0) @binding(0)
var image_depth_2d_array: texture_depth_2d_array;

fn test_textureLoad_depth_2d_array(coords: vec2<i32>, index: i32, level: i32) -> f32 {
   return textureLoad(image_depth_2d_array, coords, index, level);
}

@group(0) @binding(0)
var image_depth_multisampled_2d: texture_depth_multisampled_2d;

fn test_textureLoad_depth_multisampled_2d(coords: vec2<i32>, sample: i32) -> f32 {
   return textureLoad(image_depth_multisampled_2d, coords, sample);
}

@group(0) @binding(0)
var image_storage_1d: texture_storage_1d<rgba8unorm, write>;

fn test_textureStore_1d(coords: i32, value: vec4<f32>) {
    textureStore(image_storage_1d, coords, value);
}

@group(0) @binding(0)
var image_storage_2d: texture_storage_2d<rgba8unorm, write>;

fn test_textureStore_2d(coords: vec2<i32>, value: vec4<f32>) {
    textureStore(image_storage_2d, coords, value);
}

@group(0) @binding(0)
var image_storage_2d_array: texture_storage_2d_array<rgba8unorm, write>;

fn test_textureStore_2d_array(coords: vec2<i32>, array_index: i32, value: vec4<f32>) {
 textureStore(image_storage_2d_array, coords, array_index, value);
}

@group(0) @binding(0)
var image_storage_3d: texture_storage_3d<rgba8unorm, write>;

fn test_textureStore_3d(coords: vec3<i32>, value: vec4<f32>) {
    textureStore(image_storage_3d, coords, value);
}
