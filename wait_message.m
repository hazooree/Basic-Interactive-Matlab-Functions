function wait_message(varargin)
% Usage:
%% wait_message(msg)
% msg: contains text to display as wait_message
%% wait_message(msg, time)
% msg: contains text to display as wait_message
% time: number of seconds to show display message
%% wait_message(msg, time, speed)
% msg: contains text to display as wait_message
% time: number of seconds to show display message
% speed: transition speed of display message
%% Copyright: Hazoor Ahmad
% PhD Electrical Engineering,
% Information Technology University,
% Lahore, Pakistan.
if nargin==0
    msg = 'Nothing to show';
    time = 1;
    speed = 1;
elseif nargin==1
    msg = varargin{1};
    time = 3;
    speed = 1;
elseif nargin==2
    msg = varargin{1};
    time = varargin{2};
    speed = 1;
elseif nargin==3
    msg = varargin{1};
    time = varargin{2};
    speed = varargin{3};
elseif nargin>3
    msg = 'At most 3 inputs needed: [msg, time, speed]';
    time = 1;
    speed = 1;
end
for i = 1:speed*time
    msg1 = msg;
    for j = 1:4
        clc
        disp(msg1)
        msg1 = strcat(msg1,'.');
        pause(1/speed/5)
    end
end