model Project
  parameter  Real a(start=0.12);
  parameter  Real b(start=0.54);
  parameter  Real c(start=0.4);
  parameter  Real h(start=0.27); 
  Real y1(start=32500);
  Real y2(start=13800);
  
  equation
    der(y1)= -a*y1-b*y2 + abs(sin(time+1));
    der(y2)= -c*y1-h*y2 + abs(cos(time+2));

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;


model Project
  parameter  Real a(start=0.26);
  parameter  Real b(start=0.8);
  parameter  Real c(start=0.62);
  parameter  Real h(start=0.13); 
  Real y1(start=32500);
  Real y2(start=13800);
  
  equation
    der(y1)= -a*y1-b*y2 + abs(sin(2*time));
    der(y2)= -c*y1*y2-h*y2 + abs(cos(time));

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;