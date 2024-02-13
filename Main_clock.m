global cc CloseReq;
global seconds1_plot;
global minutes1_plot;
global hours1_plot;
global seconds2_plot;
global minutes2_plot;
global hours2_plot;
global seconds3_plot;
global minutes3_plot;
global hours3_plot;
global seconds4_plot;
global minutes4_plot;
global hours4_plot;
global seconds5_plot;
global minutes5_plot;
global hours5_plot;
global seconds6_plot;
global minutes6_plot;
global hours6_plot;
CloseReq=false;
figure_setup

seconds1_plot = [];
minutes1_plot = [];
hours1_plot = [];
seconds2_plot = [];
minutes2_plot = [];
hours2_plot = [];
seconds3_plot = [];
minutes3_plot = [];
hours3_plot = [];
seconds4_plot = [];
minutes4_plot = [];
hours4_plot = [];
seconds5_plot = [];
minutes5_plot = [];
hours5_plot = [];
seconds6_plot = [];
minutes6_plot = [];
hours6_plot = [];

while(1)

    subplot(2,3,1);update_time1;
    subplot(2,3,2);update_time2;
    subplot(2,3,3);update_time3;
    subplot(2,3,4);update_time4;
    subplot(2,3,5);update_time5;
    subplot(2,3,6);update_time6;
    
   
    pause(1);

    if CloseReq
        delete(cc);
        clear all
        break
    end
end

function stl_CloseReqFcn(~,~,~)
    global CloseReq;
    CloseReq = true;
end

function figure_setup
global cc;
cc = figure('name', 'MyClock', 'Color', 'w', 'MenuBar', 'none', 'NumberTitle', 'off', ...
    'CloseRequestFcn', @stl_CloseReqFcn);
    subplot(2,3,1); create_clock('Warsaw');
    hold on
    subplot(2,3,2); create_clock('Minsk');
    subplot(2,3,3); create_clock('New York');
    subplot(2,3,4); create_clock('Melbourne');
    subplot(2,3,5); create_clock('London');
    subplot(2,3,6); create_clock('Tokyo');
end

function create_clock(clock_name)
Theta = 0:0.1:360;
x_clock = cosd(Theta);
y_clock = sind(Theta);
plot(x_clock, y_clock, 'r', 'LineWidth', 4);
axis 'off';
hold on
fill(x_clock, y_clock, [0.9 0.9 0.9]);
plot(0,0,".", 'Color', 'k', 'MarkerSize', 10);
plot([-1, 1], [1.5, 1.5], 'Color', 'w');
text(0, 1.4, clock_name, 'FontSize', 15, 'FontWeight','bold', 'HorizontalAlignment','center');
for i = 0:30:360

    for j = 0:6:30
        plot([0.9 0.95]*cosd(90 - i - j), [0.9 0.95]*sind(90 - i - j), 'k', 'LineWidth', 1.5);
    end

    plot([0.8 0.95]*cosd(90 - i), [0.8 0.95]*sind(90 - i), 'k', 'LineWidth', 3);

    if (i~=0)
        text(0.7*cosd(90 - i), 0.7*sind(90-i), num2str(i/30), "FontSize", 11);
    end
end
end

function update_time1
    global seconds1_plot;
    global minutes1_plot;
    global hours1_plot;
    Time = datetime('now','TimeZone','Europe/Warsaw');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds1_plot),
    seconds1_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes1_plot),
    minutes1_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours1_plot),
    hours1_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end

function update_time2
    global seconds2_plot;
    global minutes2_plot;
    global hours2_plot;
    Time = datetime('now','TimeZone','Europe/Minsk');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds2_plot),
    seconds2_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes2_plot),
    minutes2_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours2_plot),
    hours2_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end
function update_time3
    global seconds3_plot;
    global minutes3_plot;
    global hours3_plot;
    Time = datetime('now','TimeZone','America/New_York');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds3_plot),
    seconds3_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes3_plot),
    minutes3_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours3_plot),
    hours3_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end
function update_time4
    global seconds4_plot;
    global minutes4_plot;
    global hours4_plot;
    Time = datetime('now','TimeZone','Australia/Melbourne');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds4_plot),
    seconds4_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes4_plot),
    minutes4_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours4_plot),
    hours4_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end
function update_time5
    global seconds5_plot;
    global minutes5_plot;
    global hours5_plot;
    Time = datetime('now','TimeZone','Europe/London');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds5_plot),
    seconds5_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes5_plot),
    minutes5_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours5_plot),
    hours5_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end
function update_time6
    global seconds6_plot;
    global minutes6_plot;
    global hours6_plot;
    Time = datetime('now','TimeZone','Asia/Tokyo');
    hours = Time.Hour + Time.Minute/60;
    minutes = Time.Minute + Time.Second/60;
    seconds = fix(Time.Second);
    delete(seconds6_plot),
    seconds6_plot = plot([0 0.7]*cosd(90 - 6*seconds), [0 0.7]*sind(90 - 6*Time.Second), 'LineWidth', 1, 'Color', 'r');
    delete(minutes6_plot),
    minutes6_plot = plot([0 0.5]*cosd(90 - 6*minutes), [0 0.5]*sind(90 - 6*Time.Minute), 'LineWidth', 2, 'Color', 'r');
    delete(hours6_plot),
    hours6_plot = plot([0 0.4]*cosd(90 - 30*hours), [0 0.4]*sind(90 - 30*Time.Hour), 'LineWidth', 3, 'Color', 'r');
end