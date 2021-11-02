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
          
