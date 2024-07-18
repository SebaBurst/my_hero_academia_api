// GetColors.tsx
import React, { useEffect, useRef } from 'react';
import Vibrant from 'node-vibrant';

interface GetColorsProps {
  imageUrl: string;
  onColorsExtracted: (colors: any) => void;
}

const GetColors: React.FC<GetColorsProps> = ({ imageUrl, onColorsExtracted }) => {
  const imgRef = useRef<HTMLImageElement>(null);

  useEffect(() => {
    if (imgRef.current) {
      const img = imgRef.current;
      img.crossOrigin = 'Anonymous';
      img.onload = () => {
        Vibrant.from(img).getPalette((err, palette) => {
          if (err) {
            console.error('Error extracting colors:', err);
          } else {
            onColorsExtracted(palette);
          }
        });
      };
    }
  }, [imageUrl, onColorsExtracted]);

  return <img ref={imgRef} src={imageUrl} alt="Image for color extraction" style={{ display: 'none' }} />;
};

export default GetColors;
