clc;
clear all;
close all;
f = load('X1600.mat');
t = load('Te28.mat');
l = load('Lte28.mat');
f = f.X1600;
t = t.Te28;
l = l.Lte28;
[mew, U] = pca(f);
[correct, incorrect] = classify(t, l, U, mew);
fprintf("Accuracy: Correct: %d, Incorrect: %d\n", correct, incorrect);