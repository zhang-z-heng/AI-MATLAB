% s1 = 'h'
% whos
% unit16(s1);
% 
% s2 = 'H'
% whos
% unit16(s2);

% s1 = 'Example';
% s2 = 'String';
% s3 = [s1 s2];
% %s4 = [s1; s2];

% s1 = 'I like the letter E';
% %s2 = reverse(s1)
% n = length(s1);
% s2 = s1(n:-1:1)
% 
% student.name = 'John Doe';
% student.id = 'jdo@sfu.ca';
% student.number = 301073268;
% student.grade = [100, 75, 73;
%     95, 91, 85.5;
%     100,98, 72];
% student;
% student(2).name = 'Ann Lane';
% student(2).id = 'Annl@sfu.ca';
% student(2).number = 301078853;
% student(2).grade = [95, 100, 90;
%     95, 82, 97;
%     100,85, 100];
% student(2)
% rmfield(student(2),'id');
% fieldnames(student(2));

%cell array
% A(1,1) = {[1 4 3; 0 5 8; 7 2 9]};
% A(1,2) = {'Anne Smith'};
% A(2,1) = {3+7i};
% A(2,2) = {-pi:pi:pi};
% A
% 
% B{1,1} = [1 4 3; 0 5 8; 7 2 9];
% B{1,2} = 'Anne Smith';
% B{2,1} = 3+7i;
% B{2,2} = -pi:pi:pi;
% B
% C{1,1} = 'This is the first cell';
% C{1,2} = [5+j*6 4+j*5];
% C{2,1} = [1,2,3;4,5,6;7,8,9];
% C{2,2} = {'TIM ' ,'CHRIS'};
% C;
% C{1,2};
% C{1,2}(1,1)
% a = magic(3)
% b = nem2cell(a)
% c = mat2cell(a,[1,1,1], 3);
%3-dimension
% A{1,1,1} = [1 2;4 5];
% A{1,2,1} = 'Name';
% A{2,1,1} = 2-4i;
% A{2,2,1} = 7;
% A{1,1,2} = 'Name 2';
% A{1,2,2} = 3;
% A{2,1,2} = 0:1:3;
% A{2,2,2} =[4 5];
% A

%cat
% A = [1 2;3 4];
% B = [5 6;7 8];
% C = cat(1,A,B);
% C = cat(2,A,B);
% C = cat(3,A,B)

%reshape
% A = [1:3; 4:6];
% reshape(A,3,2)

%isfunction
%file access
% a = magic(4);
% save mydata1.mat
% save mydata2.mat-ascii
% load ('mydata1.mat')
% load ('mydata2.mat','-ascii')
% score = xlsread('04Score.xlsx')
% M = mean(Score);
% xlswrite('04Score.xlsx', M, 1, 'E2:E4');
% xlswrite('04Score.xlsx', {'Mean'}, 1, 'E1');
%[Score Header] = xlsread(04Score.xlsx);

%low level file input and output
%fid = fopen('[filname]','[permission]');
% x = 0 : pi/10: pi;
% y = sin(x);
% fid = fopen('sinx.txt','w');
% for i = 1:11
%     fprintf(fid, '%5.3f%8.4f\n', x(i), y(i));
% end
% fclose(fid);
% type sinx.txt
A{1,1} = 'John';
A{1,2} = [1995 12 5 12.3 3.24];
A{2,1} = 'Tom';
A{2,2} = [1995 12 7 2.3 2.8];
A{3,1} = 'Jean';
A{3,2} = [1996 3 2 10.2 0.8];
A
save asciiData.mat-ascii;

fid = fopen('asciiData.txt','r');
i = 1;
while 