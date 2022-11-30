
sceneFolder=$1 #command line input for instant-ngp scene folder

# Start the GUI
# python ./scripts/run.py --mode nerf --gui --train --scene /home/ubuntu/data/"${sceneFolder}"

# Train the model with selected configurations
# python ./scripts/run.py --mode nerf --train \
#                         --scene /home/ubuntu/data/"${sceneFolder}" \
#                         --network hashgrid.json \
#                         --save_snapshot /home/ubuntu/data/"${sceneFolder}"/hashgrid.msgpack \
#                         --n_steps 30000

#Render 3 RGB frames from toyota imageset
python ./scripts/run.py --mode nerf \
                        --scene /home/ubuntu/data/"${sceneFolder}" \
                        --load_snapshot /home/ubuntu/data/"${sceneFolder}"/hashgrid.msgpack \
                        --screenshot_transforms /home/ubuntu/data/"${sceneFolder}"/instant_ngp_test/transforms_test.json \
                        --screenshot_dir /home/ubuntu/data/"${sceneFolder}"/instant_ngp_test

# Save a 3D mesh output in obj file format
# python ./scripts/run.py --mode nerf \
#                         --scene ./data/nerf/shuttle2 \
#                         --load_snapshot ./data/nerf/shuttle2/hashgrid.msgpack \
#                         --save_mesh ./data/nerf/shuttle2/hashgrid.obj \
#                         --marching_cubes_res 256

# #Save a video from selected camera path
# python ./scripts/run.py --mode nerf \
#                         --scene ./data/nerf/shuttle2 \
#                         --load_snapshot ./data/nerf/shuttle2/hashgrid_scale2.msgpack \
#                         --network hashgrid.json \
#                         --video_camera_path ./data/nerf/shuttle2/hashgrid_scale2_cam.json \
#                         --video_fps 30 \
#                         --video_n_seconds 8 \
#                         --video_output ./data/nerf/shuttle2/video.mp4 \
#                         --width 800 --height 600

