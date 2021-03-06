% Create the data to be plotted
TBdata = [1:1:18];

xvalue = (1:1:18);
normal1 = [0,30,4.03749251,12.1432232,28,30,20,38.47193752,14.04091499,0,8,24.88305055,45.37468191,14,6,18,45.16825893,0.048717];
attack1 = [24,6,18,14,2,4,16,18,53.01154208,18.9403051,53.57347789,61.68702521,47.19210552,67.55182234,51.71291161,17.52555902,0,0];

normal2 = [0,30,3.239234825,12.04296696,28,30,20,29.35035582,14.0122745,0,8,20.59505431,38.24552608,14,6,18,33.60740563,    0.0146151];
attack2= [24,6,18,14,2,4,16,16.60469875,46.1877697,9.333735534,34.72218245,51.03347268,38.34038787,42.13420307,27.43894684,0,0,0];

normal3 = [0,30,2.507594309,12.02847254,28,30,20,23.50401441,14.00599075,0,8,16.31851728,32.73618704,14,6,18,28.50416389,0.00752274];
attack3 = [24,6,18,14,2,4,16,16.161253,41.97947459,3.564454826,27.15362841,45.05967114,28.98939777,27.18244652,15.43665554,17.52555902,0,0];

normal4 = [0,30,2.200978868,12.01179626,28,30,20,21.26569384,14.00301951,0,8,14.75902505,30.83083017,14,6,18,25.46815874,0.0040282];
attack4 = [24,6,18,14,2,4,16,16.04031325,40.56574344,1.234786494,24.3739625,42.96055576,25.56965081,21.20939489,10.7047494,11.2392834,0,0];

normal5 = [0,30,2.299385361,12.01324226,28,30,20,21.72293322,14.00452926,0,8,15.03706259,31.07941887,14,6,18,25.77814662,0.004822191];
attack5 = [24,6,18,14,2,4,16,16.04,40.64,1.71,25.13,43.23,25.98,22.49,12.11,41.12,0,0];

normal6 = [0,30,2.299385361,12.01324226,28,30,20,21.72293322,14.00452926,0,8,15.03706259,31.07941887,14,6,18,25.77814662,0.004822191];
attack6 = [24,6,18,14,2,4,16,16.04031325,40.64853404,1.709451177,25.1321778,43.23561023,25.98905302,22.49975936,12.11013421,41.12126821,0,0];

% Create the pie chart in position 1 of a 2x2 grid
hFig = figure(1);
set(hFig, 'Position', [100 100 800 800])
%set(0,'DefaultAxesColorOrder',[1 0 0],'DefaultAxesLineStyleOrder','-|+|--|.|:')
set(0,'DefaultAxesColorOrder',[0 0 0;0.5 0.5 0.5])


% Create the bar chart in position 1 of a 3x2 grid
subplot(3, 2, 1);
plot(xvalue, normal1, 's-', xvalue, attack1, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(a)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 70]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg1 = legend('Normal data', 'Attacks');
set(hleg1, 'Position', [.248,.842,.1,.2]);
set(hleg1,'Interpreter','none');
set(hleg1,'Orientation','horizontal');
set(hleg1,'FontSize',10);
text(19,0,'IR=[0.33,0.26,0.20,0.13,0.06,0.04]', 'Rotation', 90);
grid on

% Create the bar chart in position 2 of a 3x2 grid
subplot(3, 2, 2);
plot(xvalue, normal2, 's-', xvalue, attack2, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(b)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg2 = legend('Normal data', 'Attacks');
set(hleg2, 'Position', [.688,.842,.1,.2]);
set(hleg2,'Interpreter','none');
set(hleg2,'Orientation','horizontal');
set(hleg2,'FontSize',10);
text(19,0,'IR=[0.32,0.26,0.19,0.13,0.06,0.04]', 'Rotation', 90);
grid on

% Create the stem chart in position 3 of a 2x2 grid
subplot(3, 2, 3);
plot(xvalue, normal3, 's-', xvalue, attack3, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(c)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg3 = legend('Normal data', 'Attacks');
set(hleg3, 'Position', [.248,.542,.1,.2]);
set(hleg3,'Interpreter','none');
set(hleg3,'Orientation','horizontal');
set(hleg3,'FontSize',10);
text(19,0,'IR=[0.14,0.18,0.23,0.18,0.14,0.13]', 'Rotation', 90);
grid on


% Create the line plot in position 4 of a 2x2 grid
subplot(3, 2, 4);
plot(xvalue, normal4, 's-', xvalue, attack4, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(d)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg4 = legend('Normal data', 'Attacks');
set(hleg4, 'Position', [.688,.542,.1,.2]);
set(hleg4,'Interpreter','none');
set(hleg4,'Orientation','horizontal');
set(hleg4,'FontSize',10);
text(19,0,'IR=[0.09,0.18,0.37,0.18,0.09,0.09]', 'Rotation', 90);
grid on


% Create the pie chart in position 5 of a 2x2 grid
subplot(3, 2, 5);
plot(xvalue, normal5, 's-', xvalue, attack5, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(e)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg5 = legend('Normal data', 'Attacks');
set(hleg5, 'Position', [.248,.244,.1,.2]);
set(hleg5,'Interpreter','none');
set(hleg5,'Orientation','horizontal');
set(hleg5,'FontSize',10);
text(19,0,'IR=[0.04,0.06,0.13,0.19,0.26,0.32]', 'Rotation', 90);
grid on


% Create the bar chart in position 6 of a 2x2 grid
subplot(3, 2, 6);
plot(xvalue, normal6, 's-', xvalue, attack6, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes(f)');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg6 = legend('Normal data', 'Attacks');
set(hleg6, 'Position', [.688,.244,.1,.2]);
set(hleg6,'Interpreter','none');
set(hleg6,'Orientation','horizontal');
set(hleg6,'FontSize',10);
text(19,0,'IR=[0.01,0.03,0.06,0.12,0.25,0.53]', 'Rotation', 90);
grid on
