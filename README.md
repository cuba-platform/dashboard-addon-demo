# Dashboard CUBA Add-on Demo Application

## Online Demo

Please note that this branch (`online-demo`) is used for [online demo](https://demo10.cuba-platform.com/dashboards).

Add custom samples and screens into the `master` branch.

## Abstract

This demo application demonstrates the usage of 
[Dashboards](https://github.com/cuba-platform/dashboard-addon) CUBA Add-on.

![responsive-layout](./img/demo.jpg)

## Responsive layout

This sample uses CSS based responsive layout for dashboard:

![responsive-layout](./img/responsive-layout.gif)

## Usage

Open the project in CUBA Studio and click "Run" button next to "CUBA Application"
run/debug configuration on the main toolbar.
The application will start at [http://localhost:8080/dashboards](http://localhost:8080/dashboards).

Use `demo` as both login and password to access the application.

### Google API Key configuration

The sample uses Google Maps, so to set up Google API key set
the `charts.map.apiKey` application property in the `web-app.properties` file:

```Properties
charts.map.apiKey = <YOUR_KEY_HERE>
```

## Issues

Please use https://www.cuba-platform.com/discuss for discussion, support,
and reporting problems coressponding to this sample.