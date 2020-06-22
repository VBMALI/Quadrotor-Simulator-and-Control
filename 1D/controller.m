function [ u ] = controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
% s: 2x1 vector containing the current state [z; v_z]
% s_des: 2x1 vector containing desired state [z; v_z]

% z_acc = 10;

kp = 100;
kv = 15;

% e = s_des - s;

e = s_des(1) - s(1);
edot = s_des(2) - s(2);

u = params.mass*(kp*e + kv*edot + params.gravity);

end

