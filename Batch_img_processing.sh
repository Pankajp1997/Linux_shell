#!/bin/bash

# Set the directory containing the images
directory="/path/to/directory"

# Set the desired image processing operations
resize_width=800
crop_dimensions="200x200+50+50"
filter="grayscale"

# Iterate through the images and apply the operations
for image in "$directory"/*; do
  # Resize the image
  convert "$image" -resize "$resize_width" "$image"
  
  # Crop the image
  convert "$image" -crop "$crop_dimensions" "$image"
  
  # Apply a filter to the image
  convert "$image" -"$filter" "$image"
done

echo "Image processing completed!"
