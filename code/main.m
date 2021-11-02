classdef finalapp < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                 matlab.ui.Figure
        Switch                   matlab.ui.control.Switch
        THESIGNALSERALabel       matlab.ui.control.Label
        PlotButton               matlab.ui.control.Button
        SIGNALPLOTLabel          matlab.ui.control.Label
        SelectSignalButtonGroup  matlab.ui.container.ButtonGroup
        SignumSignalButton       matlab.ui.control.RadioButton
        TriangularSignalButton   matlab.ui.control.RadioButton
        RectangularSignalButton  matlab.ui.control.RadioButton
        ExponentialSignalButton  matlab.ui.control.RadioButton
        ImpulseSignalButton      matlab.ui.control.RadioButton
        SineSignalButton         matlab.ui.control.RadioButton
        SincSignalButton         matlab.ui.control.RadioButton
        ParabolicSignalButton    matlab.ui.control.RadioButton
        RampSignalButton         matlab.ui.control.RadioButton
        StepSignalButton         matlab.ui.control.RadioButton
        UIAxes                   matlab.ui.control.UIAxes
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: PlotButton
        function PlotButtonPushed(app, event)
        
         if(app.SincSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sinc(x);
                plot(app.UIAxes,y);               
               
            end
            if(app.SineSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sin(x);
                plot(app.UIAxes,y);
                
            end
            if(app.ExponentialSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = exp (x);
                plot(app.UIAxes,y);
            end
            if(app.SignumSignalButton.Value)
                x=[-5 -eps(2*pi) 0 eps(2*pi) 5];
                y=sign(x);
                plot(app.UIAxes,y);
            end
            if(app.StepSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = heaviside(x-5);
                plot(app.UIAxes,y);
            end
            if(app.ParabolicSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sqrt(x);
                plot(app.UIAxes,y);
            end
            if(app.TriangularSignalButton.Value)
                x=linspace(-1,1,50)';
                y=triangularPulse(x);
                plot(app.UIAxes,y);
            end
            if(app.RectangularSignalButton.Value)
               x=-1:0.01:2*pi;
               y=rectangularPulse(x);
               plot(app.UIAxes,y);
            end
            if(app.ImpulseSignalButton.Value)
                t = (-1:0.10:1)';
                impulse = t==0;
                plot(app.UIAxes,t,impulse)
            end
            if(app.RampSignalButton.Value)
                t = (-1:0.10:1)';
                unitstep = t>=0;
                ramp = t.*unitstep;
                plot(app.UIAxes,t,ramp)
            end
            
               end

        % Value changed function: Switch
        function SwitchValueChanged(app, event)
        
         value = app.Switch.Value;
            if strcmp(value,'CTS')
            if(app.SincSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sinc(x);
                plot(app.UIAxes,y);             
            end
            
            if(app.SineSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sin(x);
                plot(app.UIAxes,y);             
            end
            
            if(app.ExponentialSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = exp (x);
                plot(app.UIAxes,y);
            end
            
            if(app.SignumSignalButton.Value)
                x=[-5 -eps(2*pi) 0 eps(2*pi) 5];
                y=sign(x);
                plot(app.UIAxes,x,y);
           
            end
            if(app.StepSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = heaviside(x-5);
                plot(app.UIAxes,y);
            end
            if(app.ParabolicSignalButton.Value)
                x = 0:0.01: (360/180)*pi;
                y = sqrt(x);
                plot(app.UIAxes,y);
            end
            if(app.TriangularSignalButton.Value)
                x=linspace(-1,1,50)';
                y=triangularPulse(x);
                plot(app.UIAxes,y);
            end
            if(app.RectangularSignalButton.Value)
               x=-1:0.01:2*pi;
               y=rectangularPulse(x);
               plot(app.UIAxes,y);
            end
            if(app.ImpulseSignalButton.Value)
                t = (-1:0.10:1)';
                impulse = t==0;
                plot(app.UIAxes,t,impulse)
            end
            if(app.RampSignalButton.Value)
                t = (-1:0.10:1)';
                unitstep = t>=0;
                ramp = t.*unitstep;
                plot(app.UIAxes,t,ramp)
            end
            
            else
                if(app.SincSignalButton.Value)
                a = linspace(0,2*pi,50);
                y = sinc(a);
                stem(app.UIAxes,y);               
                end
                
                if(app.SineSignalButton.Value)
                a = linspace(0,2*pi,50);
                b = sin(a);
                stem(app.UIAxes,b)
                end
                
                if(app.ExponentialSignalButton.Value)
                a = linspace(0,2*pi,50);
                b = exp(a);
                stem(app.UIAxes,b)
                end
                
            if(app.SignumSignalButton.Value)
                x=linspace(-2*pi,2*pi,50)';
                y=sign(x);
                stem(app.UIAxes,y);
            end
            
            if(app.StepSignalButton.Value)
               x = 0:0.2: (360/180)*pi;
               y = heaviside(x-5);
               stem(app.UIAxes,y);
            end
            
            if(app.ParabolicSignalButton.Value)
                   x=linspace(0,2*pi,50)';
                   y=sqrt(x);
                   stem(app.UIAxes,y);
            end
            
            if(app.TriangularSignalButton.Value)
             x=linspace(-1,1,50)';
             y=triangularPulse(x);
             stem(app.UIAxes,y);
            end
            
            if(app.RectangularSignalButton.Value)
             x=linspace(-1,1,50)';
            y=rectangularPulse(x);
            stem(app.UIAxes,y);
            end
            
            if(app.ImpulseSignalButton.Value)
                t = (-1:0.10:1)';
                impulse = t==0;
                stem(app.UIAxes,t,impulse)
            end
            if(app.RampSignalButton.Value)
                t = (-1:0.10:1)';
                unitstep = t>=0;
                ramp = t.*unitstep;
                stem(app.UIAxes,t,ramp)
            end
                
            end
          
