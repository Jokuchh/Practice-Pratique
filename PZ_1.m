clear all;
clc;

% ������ �������� ����
N=12;% ������� �������� ����, ������� ������������
t=1:N;
N2=N/2;
Y=[316884.6 432235.4 473121.6 515510.6 584114.1 1100564.0       1572180.2 1929758.7 2141674.4 2168627.1 1998275.4 2551935.6];
%Y=5*sin(t);%
%Y=10*ones(1,N)+0.01*rand(1,N);
% Y=t;
%Y=rand(1,N).*rand(1,N).*rand(1,N);

Y_avg=mean(Y); % ����������� ��
D=cov(Y); % ���������� �������
COR=xcorr(Y);% ������� ������������ �������������

figure(1)
[acf, lags]=autocorr(Y);
stem(lags,acf)% ���� ������ ������� ������������� (�����������)
grid on

% ���������� ��������� ϳ�����
P=((t-mean(t))*(Y-mean(Y))')/sqrt(((t-mean(t))*(t-mean(t))')*((Y-mean(Y))*(Y-mean(Y))'))
% ����� ����Ͳ� �����

% ����������� ������� ����� y=b1*t+b0
b1=(Y(N2)-Y(1))/(t(N2)-t(1)) 
b0=Y(1)-b1*t(1)
Y1=b0+b1*t; % ��������� ����� �������������
%������� �� ���� ���� ������%
shag_1=Y1(N/2+1)
% ���������� ��������� ������� ��������
e_mkt=Y(N/2+1)-Y1(N/2+1) % ������� ��������
delta_mkt=abs(Y(N/2+1)-Y1(N/2+1)) % ��������� ������� ��������
eps_mkt=abs(Y(N/2+1)-Y1(N/2+1))/Y(N/2+1) % ������� ������� ��������

% ������� ��������� ������� ��������
MAE_mkt=0;
for i=(N/2+1):N
    MAE_mkt=MAE_mkt+abs(Y(i)-Y1(i));
end
MAE_mkt=MAE_mkt/(N/2)

% ������� ��������� ��������� ������� ��������
MAPE_mkt=0;
for i=(N/2+1):N
    MAPE_mkt=MAPE_mkt+abs(Y(i)-Y1(i))/Y(i);
end
MAPE_mkt=100*MAPE_mkt/(N/2)
% ������� ��������� ������� ��������
MPE_mkt=0;
for i=(N/2+1):N
    MPE_mkt=MPE_mkt+(Y(i)-Y1(i))/Y(i);
end
MPE_mkt=100*MPE_mkt/(N/2)

%���������� �����������
R2_mkt=1-(sum((Y-Y1).^2))/(sum((Y-Y_avg).^2))

%------------------------------------------------------------


% ����� �����Ͳ� �����

t1=sum(t(1:N/2))/(N/2);
t2=sum(t((N/2+1):N))/(N/2);

y1=sum(Y(1:N/2))/(N/2);
y2=sum(Y((N/2+1):N))/(N/2);

% ����������� ������� ����� y=a1*t+a0
a1=(y2-y1)/(t2-t1)
a0=y1-a1*t1
Y2=a0+a1*t; % ��������� ����� �������������
%������� �� ���� ���� ������%
shag_1=Y2(N/2+1)
% ���������� ��������� ������� ��������
e_mst=Y(N/2+1)-Y2(N/2+1) % ������� ��������
delta_mst=abs(Y(N/2+1)-Y2(N/2+1)) % ��������� ������� ��������
eps_mst=abs(Y(N/2+1)-Y2(N/2+1))/Y(N/2+1) % ������� ������� ��������

% ������� ��������� ������� ��������
MAE_mst=0;
for i=(N/2+1):N
    MAE_mst=MAE_mst+abs(Y(i)-Y2(i));
end
MAE_mst=MAE_mst/(N/2)

% ������� ��������� ��������� ������� ��������
MAPE_mst=0;
for i=(N/2+1):N
    MAPE_mst=MAPE_mst+abs(Y(i)-Y2(i))/Y(i);
end
MAPE_mst=100*MAPE_mst/(N/2)

% ������� ��������� ������� ��������
MPE_mst=0;
for i=(N/2+1):N
    MPE_mst=MPE_mst+(Y(i)-Y2(i))/Y(i);
end
MPE_mst=100*MPE_mst/(N/2)

%���������� �����������
R2_mst=1-(sum((Y-Y2).^2))/(sum((Y-Y_avg).^2))


figure(2)
plot(t,Y,'-kp',t,Y1,'-.rs',t,Y2,'-b*')
grid on
legend('Y','YmKT','YmST')
xlabel('���');
ylabel('Y');