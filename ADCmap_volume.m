%VolumeデータでのDWI画像からADCmapを作成する

%まずはlowbとhighbの画像を読み込む
lowbimg = dicomreadVolume('DWI＿b0');
highbimg = dicomreadVolume('DWI＿b1000');

squeeze(lowbimg);
squeeze(highbimg);

%画像枚数を確認する
num_lowbimges = size(lowbimg, 4);

for i = 1:num_lowbimges
    figure;
    imagesc(lowbimg(:,:,i));
    colormap(gray); 
    axis image; 
    title(['Image ', num2str(i)]);
end