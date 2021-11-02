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
           end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.7137 0.8824 0.8784];
            app.UIFigure.Position = [100 100 697 512];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            xlabel(app.UIAxes, 't')
            ylabel(app.UIAxes, 'X(t)')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.XColor = [0.1686 0.2627 0.3255];
            app.UIAxes.YColor = [0.1686 0.2627 0.3255];
            app.UIAxes.ZColor = [0.1686 0.2627 0.3255];
            app.UIAxes.BoxStyle = 'full';
            app.UIAxes.LineWidth = 1.5;
            app.UIAxes.Color = [0.6118 0.8275 0.8275];
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [231 81 437 323];

            % Create SelectSignalButtonGroup
            app.SelectSignalButtonGroup = uibuttongroup(app.UIFigure);
            app.SelectSignalButtonGroup.ForegroundColor = [0.1686 0.2627 0.3255];
            app.SelectSignalButtonGroup.TitlePosition = 'centertop';
            app.SelectSignalButtonGroup.Title = 'Select Signal';
            app.SelectSignalButtonGroup.BackgroundColor = [0.6118 0.8275 0.8275];
            app.SelectSignalButtonGroup.FontName = 'Palatino';
            app.SelectSignalButtonGroup.FontWeight = 'bold';
            app.SelectSignalButtonGroup.FontSize = 18;
            app.SelectSignalButtonGroup.Position = [35 107 171 258];

            % Create StepSignalButton
            app.StepSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.StepSignalButton.Text = 'Step Signal';
            app.StepSignalButton.FontName = 'DejaVu Sans';
            app.StepSignalButton.FontSize = 15;
            app.StepSignalButton.Position = [11 205 99 22];
            app.StepSignalButton.Value = true;

            % Create RampSignalButton
            app.RampSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.RampSignalButton.Text = 'Ramp Signal';
            app.RampSignalButton.FontName = 'DejaVu Sans';
            app.RampSignalButton.FontSize = 15;
            app.RampSignalButton.Position = [11 183 108 22];

            % Create ParabolicSignalButton
            app.ParabolicSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.ParabolicSignalButton.Text = 'Parabolic Signal';
            app.ParabolicSignalButton.FontName = 'DejaVu Sans';
            app.ParabolicSignalButton.FontSize = 15;
            app.ParabolicSignalButton.Position = [11 161 130 22];

            % Create SincSignalButton
            app.SincSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.SincSignalButton.Text = 'Sinc Signal';
            app.SincSignalButton.FontName = 'DejaVu Sans';
            app.SincSignalButton.FontSize = 15;
            app.SincSignalButton.Position = [11 139 97 22];

            % Create SineSignalButton
            app.SineSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.SineSignalButton.Text = 'Sine Signal';
            app.SineSignalButton.FontName = 'DejaVu Sans';
            app.SineSignalButton.FontSize = 15;
            app.SineSignalButton.Position = [11 117 98 22];

            % Create ImpulseSignalButton
            app.ImpulseSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.ImpulseSignalButton.Text = 'Impulse Signal';
            app.ImpulseSignalButton.FontName = 'DejaVu Sans';
            app.ImpulseSignalButton.FontSize = 15;
            app.ImpulseSignalButton.Position = [11 95 120 22];

            % Create ExponentialSignalButton
            app.ExponentialSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.ExponentialSignalButton.Text = 'Exponential Signal';
            app.ExponentialSignalButton.FontName = 'DejaVu Sans';
            app.ExponentialSignalButton.FontSize = 15;
            app.ExponentialSignalButton.Position = [11 74 146 22];

            % Create RectangularSignalButton
            app.RectangularSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.RectangularSignalButton.Text = 'Rectangular Signal';
            app.RectangularSignalButton.FontName = 'DejaVu Sans';
            app.RectangularSignalButton.FontSize = 15;
            app.RectangularSignalButton.Position = [11 52 149 22];

            % Create TriangularSignalButton
            app.TriangularSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.TriangularSignalButton.Text = 'Triangular Signal';
            app.TriangularSignalButton.FontName = 'DejaVu Sans';
            app.TriangularSignalButton.FontSize = 15;
            app.TriangularSignalButton.Position = [11 30 135 22];

            % Create SignumSignalButton
            app.SignumSignalButton = uiradiobutton(app.SelectSignalButtonGroup);
            app.SignumSignalButton.Text = 'Signum Signal';
            app.SignumSignalButton.FontName = 'DejaVu Sans';
            app.SignumSignalButton.FontSize = 15;
            app.SignumSignalButton.Position = [11 9 119 22];

            % Create SIGNALPLOTLabel
            app.SIGNALPLOTLabel = uilabel(app.UIFigure);
            app.SIGNALPLOTLabel.HorizontalAlignment = 'center';
            app.SIGNALPLOTLabel.FontName = 'DejaVu Sans';
            app.SIGNALPLOTLabel.FontSize = 18;
            app.SIGNALPLOTLabel.FontWeight = 'bold';
            app.SIGNALPLOTLabel.FontColor = [0.1686 0.2627 0.3255];
            app.SIGNALPLOTLabel.Position = [386 420 126 22];
            app.SIGNALPLOTLabel.Text = 'SIGNAL PLOT';

            % Create PlotButton
            app.PlotButton = uibutton(app.UIFigure, 'push');
            app.PlotButton.ButtonPushedFcn = createCallbackFcn(app, @PlotButtonPushed, true);
            app.PlotButton.BackgroundColor = [0.9882 0.549 0.2588];
            app.PlotButton.FontName = 'DejaVu Sans';
            app.PlotButton.FontSize = 18;
            app.PlotButton.FontWeight = 'bold';
            app.PlotButton.FontColor = [0.1686 0.2627 0.3255];
            app.PlotButton.Position = [64 49 96 33];
            app.PlotButton.Text = 'Plot';

            % Create THESIGNALSERALabel
            app.THESIGNALSERALabel = uilabel(app.UIFigure);
            app.THESIGNALSERALabel.HorizontalAlignment = 'center';
            app.THESIGNALSERALabel.FontName = 'Palatino';
            app.THESIGNALSERALabel.FontSize = 25;
            app.THESIGNALSERALabel.FontWeight = 'bold';
            app.THESIGNALSERALabel.FontColor = [0.1686 0.2627 0.3255];
            app.THESIGNALSERALabel.Position = [250 463 241 31];
            app.THESIGNALSERALabel.Text = 'THE SIGNAL''S ERA';

            % Create Switch
            app.Switch = uiswitch(app.UIFigure, 'slider');
            app.Switch.Items = {'CTS', 'DTS'};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @SwitchValueChanged, true);
            app.Switch.FontName = 'DejaVu Sans';
            app.Switch.FontSize = 17;
            app.Switch.FontWeight = 'bold';
            app.Switch.FontColor = [0.1686 0.2627 0.3255];
            app.Switch.Position = [428 30 45 20];
            app.Switch.Value = 'CTS';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = finalapp

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
