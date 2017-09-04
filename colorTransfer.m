function img_out = colorTransfer( img_in, img_guide )

    img_in = rgb2lab(img_in);
    img_guide = rgb2lab(img_guide);
    v_in = reshape(img_in,[size(img_in,1)*size(img_in,2),3]);
    v_guide = reshape(img_guide,[size(img_guide,1)*size(img_guide,2),3]);
    
    rate = repmat(reshape(std(v_guide)./std(v_in),[1,1,3]),[size(img_in,1),size(img_in,2)]);
    mean_in = repmat(reshape(mean(v_in),[1,1,3]),[size(img_in,1),size(img_in,2)]);
    mean_guide = repmat(reshape(mean(v_guide),[1,1,3]),[size(img_in,1),size(img_in,2)]);
    
    img_out = rate .*(img_in - mean_in) + mean_guide;
    img_out = lab2rgb(img_out);
    
end

