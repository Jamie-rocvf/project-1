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

for(int i = 10; i < 190; i++){
int sizeR = 20;
fill(0,0,0);
rect(i,i,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}
for(int i = 10; i < 140; i++){
int sizeR = 20;
fill(0,0,0);
rect(i+42,i,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}
for(int i = 10; i < 100; i++){
int sizeR = 20;
fill(0,0,0);
rect(i+84,i,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}
for(int i = 10; i < 60; i++){
int sizeR = 20;
fill(0,0,0);
rect(i+126,i,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}

for(int i = 10; i < 140; i++){
int sizeR = 20;
fill(0,0,0);
rect(i,i+42,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}
for(int i = 10; i < 100; i++){
int sizeR = 20;
fill(0,0,0);
rect(i,i+84,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}
for(int i = 10; i < 60; i++){
int sizeR = 20;
fill(0,0,0);
rect(i,i+126,sizeR,sizeR);
i = i + 20;
sizeR = sizeR + 20;
}

fill(0,0,0);
rect(10,178,20,20);

fill(0,0,0);
rect(178,10,20,20);
