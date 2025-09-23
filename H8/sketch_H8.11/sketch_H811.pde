size(210,210);
background(255,255,255);

for(int i = 10; i < 210; i++){
line(i,10,i,200);
i = i + 20;
}
for(int i = 10; i < 210; i++){
line(10,i,200,i);
i = i + 20;
}
