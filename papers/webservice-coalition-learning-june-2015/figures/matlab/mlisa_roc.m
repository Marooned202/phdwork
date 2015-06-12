[v,T,vT]=xlsread('roc_all.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|:|--|-.')
%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-.r*|:|--|-.')

i=0:49;
it=v(:,1);iy=v(:,3);iz=v(:,5);itt=v(:,7);iyy=v(:,9);izz=v(:,11);
t=v(:,2);y=v(:,4);z=v(:,6);tt=v(:,8);yy=v(:,10);zz=v(:,12);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

h = plot(it,t,'--go',iy,y,'--ko',iz,z,':bs',itt,tt,'-.r*',iyy,yy,'-.bo',izz,zz,'--ks', 'MarkerSize',3, 'linewidth', 1);
%set(h,'linewidth',2);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
%set(gca,'XTick',1:1:50);
%set(gca,'YTick',7000:1500:18000);
%set(gca,'YTick',0:200:1600);
set(gca,'tickdir','in')
%set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '41';' ';' ';' ';' ';' ';' ';' ';' ';'50';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


%axis([0 50 0 1600]);

% Add legend
hleg1 = legend(strcat('R=0.20, AUC = ',num2str(abs(trapz(it(1:101),t(1:101))))),strcat('R=0.10, AUC = ',num2str(abs(trapz(iy(1:101),y(1:101))))),strcat('R=0.07, AUC = ',num2str(abs(trapz(iz(1:101),z(1:101))))),strcat('R=0.05, AUC = ',num2str(abs(trapz(itt(1:101),tt(1:101))))),strcat('Greedy, AUC = ',num2str(abs(trapz(iyy(1:101),yy(1:101))))),strcat('Rational, AUC = ',num2str(abs(trapz(izz(1:101),zz(1:101))))));
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.66,.235,.1,.2]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'False Positive Rate'}, 'FontSize',14);
ylabel('Correct Decision Rate', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
