clear all;
close all;
clc;

for frame=1:35
    
    close all;
    load(['experimental_results/',num2str(frame),'.mat']);
    original_left=imread(['original_left/',num2str(frame),'.png']);
    original_right=imread(['original_right/',num2str(frame),'.png']);
    calibrated_left=imread(['left/',num2str(frame),'.png']);
    calibrated_right=imread(['right/',num2str(frame),'.png']);
    
    figure,
    ax=subplot(2,4,1);imshow(original_left); title('original left image');
    ax=subplot(2,4,2);imshow(original_right); title('original right image');
    ax=subplot(2,4,3);imshow(calibrated_left); title('rectified left image');
    ax=subplot(2,4,4);imshow(calibrated_right); title('rectified right image');
    ax1=subplot(2,4,5);imshow(disparity_map1,[]);colormap(ax1,jet(4096)); title('disparity map without post-processing');
    ax1=subplot(2,4,6);imshow(disparity_map2,[]);colormap(ax1,jet(4096)); title('disparity map with post-processing');
    ax1=subplot(2,4,[7,8]);pcshow(xyzPoints,calibrated_left);  title('3D point cloud'); 

end