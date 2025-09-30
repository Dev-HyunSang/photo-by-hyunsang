#!/bin/bash

echo "Downloading travel images..."

# Download travel images from Unsplash
curl -L "https://images.unsplash.com/photo-1488646953014-85cb44e25828?w=600&h=800&fit=crop" -o public/images/travel/travel-1.jpg
curl -L "https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=800&h=600&fit=crop" -o public/images/travel/travel-2.jpg
curl -L "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&h=900&fit=crop" -o public/images/travel/travel-3.jpg
curl -L "https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?w=800&h=600&fit=crop" -o public/images/travel/travel-4.jpg

echo "Travel images downloaded successfully!"