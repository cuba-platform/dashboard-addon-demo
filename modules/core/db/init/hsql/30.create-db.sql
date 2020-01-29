----------------------------------------------------------------------------------------------------
-- Dashboards
----------------------------------------------------------------------------------------------------

insert into DASHBOARD_PERSISTENT_DASHBOARD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DASHBOARD_MODEL, NAME, REFERENCE_NAME, GROUP_ID, IS_AVAILABLE_FOR_ALL_USERS)
values ('1e5ebc83-fca6-5b4c-ffed-bba64c61eb24', 34, '2018-10-29 12:06:15', 'admin', '2018-11-21 17:28:50', 'admin', null, null, '{
  "title": "Taxi dashboard (responsive)",
  "code": "taxi-dashboard",
  "visualModel": {
    "children": [
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.CssLayout",
        "data": {
          "responsive": true,
          "children": [
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.CssLayout",
              "data": {
                "responsive": false,
                "children": [
                  {
                    "className": "com.haulmont.addon.dashboard.model.visualmodel.CssLayout",
                    "data": {
                      "responsive": false,
                      "children": [
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Bookings",
                              "caption": "Bookings",
                              "name": "Bookings",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$Bookings",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "de11f42e-8924-317a-8390-af7f14a979ff",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-top-container panel",
                            "width": 100,
                            "height": 188,
                            "widthUnit": "%",
                            "heightUnit": "px",
                            "id": "987d932e-99c2-2b39-fce8-3e0a388ed333",
                            "_persistence_fetchGroup": null
                          }
                        },
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "In progress",
                              "caption": "In progress",
                              "name": "In progress",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$InProgress",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "36766245-33d7-5e83-c267-4f12b5e1f365",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-top-container panel",
                            "width": 100,
                            "height": 188,
                            "widthUnit": "%",
                            "heightUnit": "px",
                            "id": "96d1d6c9-5153-ebec-c78e-f4c7217c4d76",
                            "_persistence_fetchGroup": null
                          }
                        },
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Average trip time",
                              "caption": "Average trip time",
                              "name": "Average trip time",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$AverageTime",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "ab84b9f5-0b05-a84d-b870-6b7f893adab1",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-top-container panel",
                            "width": 100,
                            "height": 188,
                            "widthUnit": "%",
                            "heightUnit": "px",
                            "id": "c56ad72a-3eab-7dfc-a685-3c2f050b0e90",
                            "_persistence_fetchGroup": null
                          }
                        },
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Online",
                              "caption": "Online",
                              "name": "Online",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$Online",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "156b930f-07e5-69e1-2d77-c79c0e483961",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-top-container panel",
                            "width": 100,
                            "height": 188,
                            "widthUnit": "%",
                            "heightUnit": "px",
                            "id": "e88307a6-4ecd-e370-fdac-8caca05e7e2b",
                            "_persistence_fetchGroup": null
                          }
                        }
                      ],
                      "weight": 1,
                      "expand": null,
                      "styleName": "mainbody",
                      "width": 100,
                      "height": -1,
                      "widthUnit": "%",
                      "heightUnit": "px",
                      "id": "ae45b22b-bfd1-2af3-9bb0-551698eabb05",
                      "_persistence_fetchGroup": null
                    }
                  },
                  {
                    "className": "com.haulmont.addon.dashboard.model.visualmodel.CssLayout",
                    "data": {
                      "responsive": true,
                      "children": [
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Map",
                              "caption": "Map",
                              "name": "Car map",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$CarMap",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "38d6bbdb-0b22-3692-d85f-089f92011425",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-full-container panel",
                            "width": 100,
                            "height": 100,
                            "widthUnit": "%",
                            "heightUnit": "%",
                            "id": "8a4054ad-0944-499d-4941-28e86c31319c",
                            "_persistence_fetchGroup": null
                          }
                        },
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Car delivery",
                              "caption": "Car delivery",
                              "name": "Car delivery",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$CarDelivery",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "3c0178f4-c826-e15c-58a1-e4f382fcc843",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-container panel",
                            "width": 100,
                            "height": 100,
                            "widthUnit": "%",
                            "heightUnit": "%",
                            "id": "76f33019-3f7e-0ba1-218e-2ee9a6f30ca0",
                            "_persistence_fetchGroup": null
                          }
                        },
                        {
                          "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                          "data": {
                            "widget": {
                              "showWidgetCaption": false,
                              "widgetId": "Rides",
                              "caption": "Rides",
                              "name": "Rides",
                              "description": null,
                              "parameters": [],
                              "widgetFields": [],
                              "frameId": "dashboard-demo$Redes",
                              "browseFrameId": null,
                              "createdBy": "admin",
                              "id": "3d897f2e-5a6f-4f36-a4ed-fe048de06497",
                              "_persistence_fetchGroup": null
                            },
                            "children": [],
                            "weight": 1,
                            "expand": null,
                            "styleName": "panel-container panel-table panel",
                            "width": 100,
                            "height": 100,
                            "widthUnit": "%",
                            "heightUnit": "%",
                            "id": "282a0f33-dc1a-37b8-343a-012dd8bb2a3c",
                            "_persistence_fetchGroup": null
                          }
                        }
                      ],
                      "weight": 2,
                      "expand": null,
                      "styleName": "responsive",
                      "width": 100,
                      "height": 73,
                      "widthUnit": "%",
                      "heightUnit": "%",
                      "id": "662031ed-2332-c5c2-ee28-a6efb31befd0",
                      "_persistence_fetchGroup": null
                    }
                  }
                ],
                "weight": 1,
                "expand": null,
                "styleName": "responsive",
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "b8c629f0-c4c3-c496-c1ca-46726c748cf1",
                "_persistence_fetchGroup": null
              }
            }
          ],
          "weight": 1,
          "expand": null,
          "styleName": "responsive-all",
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "8bb1bfcb-b68b-c2c3-fc05-c5f6ca889b77",
          "_persistence_fetchGroup": null
        }
      }
    ],
    "weight": 1,
    "expand": null,
    "styleName": null,
    "width": 100,
    "height": 100,
    "widthUnit": "%",
    "heightUnit": "%",
    "id": "4ef2625c-e958-3295-bc37-015732b2b623",
    "_persistence_fetchGroup": null
  },
  "parameters": [],
  "isAvailableForAllUsers": true,
  "createdBy": "admin",
  "timerDelay": 0,
  "assistantBeanName": null,
  "id": "70c0caaa-9703-87f1-7ec2-e05fd85210d9",
  "_persistence_fetchGroup": null
}', 'Taxi dashboard (responsive css)', 'taxi-dashboard-css', null, true);

insert into DASHBOARD_PERSISTENT_DASHBOARD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DASHBOARD_MODEL, NAME, REFERENCE_NAME, GROUP_ID, IS_AVAILABLE_FOR_ALL_USERS)
values ('5d5604b3-c482-8177-67e5-fa74e570bdc2', 5, '2018-11-07 14:09:50', 'admin', '2018-11-21 17:21:38', 'admin', null, null, '{
  "title": "Demo dashboard",
  "code": "demo-dashboard",
  "visualModel": {
    "children": [
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
        "data": {
          "widget": {
            "showWidgetCaption": true,
            "widgetId": "clock",
            "caption": "Clock",
            "name": "Clock",
            "description": null,
            "parameters": [],
            "widgetFields": [],
            "frameId": "dashboard-demo$ClockWidget",
            "browseFrameId": null,
            "createdBy": "admin",
            "id": "93110274-c0b4-eef7-1e11-7ca36ef597ae",
            "_persistence_fetchGroup": null
          },
          "children": [],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": -1,
          "widthUnit": "%",
          "heightUnit": "px",
          "id": "a0a14db0-6d7b-b106-a061-944c6dfacc82",
          "_persistence_fetchGroup": null
        }
      },
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.HorizontalLayout",
        "data": {
          "children": [
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": true,
                  "widgetId": "Users",
                  "caption": "Users",
                  "name": "Lookup",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [
                    {
                      "name": "lookupWindowId",
                      "alias": "lookupWindowId",
                      "parameterValue": {
                        "className": "com.haulmont.addon.dashboard.model.paramtypes.StringParameterValue",
                        "data": {
                          "value": "sec$User.browse"
                        }
                      },
                      "id": "703b589d-f731-596b-6baa-7dc7f2e01a35",
                      "_persistence_fetchGroup": null
                    }
                  ],
                  "frameId": "dashboard$LookupWidget",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "50c73ae5-7cbc-3c1c-5c72-5cde00e019ec",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "75a68941-8be5-cc15-91c5-af4b6d622d8e",
                "_persistence_fetchGroup": null
              }
            },
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": true,
                  "widgetId": "User Info",
                  "caption": "User Info",
                  "name": "UserInfo",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$UserDisplayWidget",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "aca83398-a08e-67d2-98bc-c34276ae2329",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "9c347d0d-086a-f38b-f2de-44e8ad62829d",
                "_persistence_fetchGroup": null
              }
            }
          ],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "0ccc8cc9-b9f5-397c-605d-506c18cef031",
          "_persistence_fetchGroup": null
        }
      }
    ],
    "weight": 1,
    "expand": "0ccc8cc9-b9f5-397c-605d-506c18cef031",
    "styleName": null,
    "width": 100,
    "height": 100,
    "widthUnit": "%",
    "heightUnit": "%",
    "id": "ec917c3e-deaf-88ec-e9b2-42ac539fd669",
    "_persistence_fetchGroup": null
  },
  "parameters": [],
  "isAvailableForAllUsers": true,
  "createdBy": "admin",
  "timerDelay": 1,
  "assistantBeanName": "clockAssistant",
  "id": "cfc85253-2e3b-5040-fa40-a8778e6223ed",
  "_persistence_fetchGroup": null
}', 'Demo dashboard', 'demo-dashboard', null, true);

insert into DASHBOARD_PERSISTENT_DASHBOARD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DASHBOARD_MODEL, NAME, REFERENCE_NAME, GROUP_ID, IS_AVAILABLE_FOR_ALL_USERS)
values ('87399dae-47d9-1b26-849b-fd80cf0886a0', 6, '2018-11-07 14:50:00', 'admin', '2018-11-21 17:28:58', 'admin', null, null, '{
  "title": "Taxi dashboard (non responsive)",
  "code": "taxi-non-responsive",
  "visualModel": {
    "children": [
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.HorizontalLayout",
        "data": {
          "children": [
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Bookings",
                  "caption": "Bookings",
                  "name": "Bookings",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$Bookings",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "0a27167e-a243-ea19-15ed-be12ba01d441",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "aa9a7936-6f3c-3be8-ab18-0928956f07f8",
                "_persistence_fetchGroup": null
              }
            },
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "In progress",
                  "caption": "In progress",
                  "name": "In progress",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$InProgress",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "12988ad2-613a-6780-bb9b-cb15ca343f85",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "d043475a-68d7-8155-9b6c-621a28837e2e",
                "_persistence_fetchGroup": null
              }
            },
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Average time",
                  "caption": "Average time",
                  "name": "Average trip time",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$AverageTime",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "c64d2a7c-262d-3bf6-c2cc-c6b884ec0f9b",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "0c5fbf3e-a25f-7221-df36-3f86fd12aa88",
                "_persistence_fetchGroup": null
              }
            },
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Online",
                  "caption": "Online",
                  "name": "Online",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$Online",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "48c3e369-f496-4ecc-45c4-61e69b265e0a",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "3dc79d18-4536-811e-f379-431c7bd7bb82",
                "_persistence_fetchGroup": null
              }
            }
          ],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "e4e033dd-1d06-b2f8-98b7-cc18739e2979",
          "_persistence_fetchGroup": null
        }
      },
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.VerticalLayout",
        "data": {
          "children": [
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Map",
                  "caption": "Map",
                  "name": "Car map",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$CarMap",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "0e07296b-9895-cab8-92c6-894314256f38",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "f2aea675-a81a-c300-8ad8-d60bc4d1a51f",
                "_persistence_fetchGroup": null
              }
            }
          ],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "55eb0d48-6b7a-7cb5-0a41-0914fe4979a5",
          "_persistence_fetchGroup": null
        }
      },
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.HorizontalLayout",
        "data": {
          "children": [
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Car delivery",
                  "caption": "Car delivery",
                  "name": "Car delivery",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$CarDelivery",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "edbd0613-54d4-16b7-3235-260a609f2b67",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "38f14265-9d3a-b423-7acd-b0a49c628fba",
                "_persistence_fetchGroup": null
              }
            },
            {
              "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
              "data": {
                "widget": {
                  "showWidgetCaption": false,
                  "widgetId": "Rides",
                  "caption": "Rides",
                  "name": "Rides",
                  "description": null,
                  "parameters": [],
                  "widgetFields": [],
                  "frameId": "dashboard-demo$Redes",
                  "browseFrameId": null,
                  "createdBy": "admin",
                  "id": "156365ee-f2c3-f2b6-96c7-b7778526a10a",
                  "_persistence_fetchGroup": null
                },
                "children": [],
                "weight": 1,
                "expand": null,
                "styleName": null,
                "width": 100,
                "height": 100,
                "widthUnit": "%",
                "heightUnit": "%",
                "id": "0e2003d8-80c4-2569-c8a6-1ca20b51d924",
                "_persistence_fetchGroup": null
              }
            }
          ],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "9e5b8e3f-57c1-cedb-2e91-4063190d708d",
          "_persistence_fetchGroup": null
        }
      }
    ],
    "weight": 1,
    "expand": null,
    "styleName": null,
    "width": 100,
    "height": 100,
    "widthUnit": "%",
    "heightUnit": "%",
    "id": "6225bde2-d3c2-0c57-2b55-355bf94cfcc1",
    "_persistence_fetchGroup": null
  },
  "parameters": [],
  "isAvailableForAllUsers": true,
  "createdBy": "admin",
  "timerDelay": 0,
  "assistantBeanName": null,
  "id": "0eeb2bf9-5a0e-dfe6-79c0-932f3a2fd2db",
  "_persistence_fetchGroup": null
}', 'Taxi dashboard (non responsive)', 'taxi-non-responsive', null, true);

insert into DASHBOARD_PERSISTENT_DASHBOARD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DASHBOARD_MODEL, NAME, REFERENCE_NAME, GROUP_ID, IS_AVAILABLE_FOR_ALL_USERS)
values ('b21867d5-3966-419e-fab4-4296c629c8d8', 59, '2018-10-29 12:06:15', 'admin', '2019-04-01 15:50:23', 'admin', null, null, '{
  "title": "Taxi dashboard (responsive)",
  "code": "taxi-dashboard",
  "visualModel": {
    "children": [
      {
        "className": "com.haulmont.addon.dashboard.model.visualmodel.ResponsiveLayout",
        "data": {
          "xs": 12,
          "sm": 6,
          "md": 6,
          "lg": 3,
          "areas": [
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Map",
                    "caption": "Map",
                    "name": "Car map",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$CarMap",
                    "createdBy": "admin",
                    "id": "38d6bbdb-0b22-3692-d85f-089f92011425",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 300,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "8a4054ad-0944-499d-4941-28e86c31319c",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 5,
              "xs": 12,
              "sm": 12,
              "md": 12,
              "lg": 12,
              "id": "ee2db2b7-4d86-8772-eb5c-d52e696abc66",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "In progress",
                    "caption": "In progress",
                    "name": "In progress",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$InProgress",
                    "createdBy": "admin",
                    "id": "36766245-33d7-5e83-c267-4f12b5e1f365",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 250,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "96d1d6c9-5153-ebec-c78e-f4c7217c4d76",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 3,
              "xs": null,
              "sm": null,
              "md": null,
              "lg": null,
              "id": "52801115-a01e-f138-37ee-c45f70366e15",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Bookings",
                    "caption": "Bookings",
                    "name": "Bookings",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$Bookings",
                    "createdBy": "admin",
                    "id": "de11f42e-8924-317a-8390-af7f14a979ff",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 250,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "987d932e-99c2-2b39-fce8-3e0a388ed333",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 1,
              "xs": null,
              "sm": null,
              "md": null,
              "lg": null,
              "id": "d835a9cd-a5fe-b0aa-24d2-d891fec464b8",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Average trip time",
                    "caption": "Average trip time",
                    "name": "Average trip time",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$AverageTime",
                    "createdBy": "admin",
                    "id": "ab84b9f5-0b05-a84d-b870-6b7f893adab1",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 250,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "c56ad72a-3eab-7dfc-a685-3c2f050b0e90",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 2,
              "xs": null,
              "sm": null,
              "md": null,
              "lg": null,
              "id": "c8a948fd-ab01-6d16-4f5a-400ee63dfb49",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Online",
                    "caption": "Online",
                    "name": "Online",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$Online",
                    "createdBy": "admin",
                    "id": "156b930f-07e5-69e1-2d77-c79c0e483961",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 250,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "e88307a6-4ecd-e370-fdac-8caca05e7e2b",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 4,
              "xs": null,
              "sm": null,
              "md": null,
              "lg": null,
              "id": "66b8dafc-12ac-70aa-bcec-845df63e2b3a",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Car delivery",
                    "caption": "Car delivery",
                    "name": "Car delivery",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$CarDelivery",
                    "createdBy": "admin",
                    "id": "3c0178f4-c826-e15c-58a1-e4f382fcc843",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 320,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "76f33019-3f7e-0ba1-218e-2ee9a6f30ca0",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 6,
              "xs": 12,
              "sm": 12,
              "md": 6,
              "lg": 6,
              "id": "0d3e2506-f070-748b-ad6b-416b8d46e938",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            },
            {
              "component": {
                "className": "com.haulmont.addon.dashboard.model.visualmodel.WidgetLayout",
                "data": {
                  "widget": {
                    "showWidgetCaption": false,
                    "widgetId": "Rides",
                    "caption": "Rides",
                    "name": "Rides",
                    "description": null,
                    "parameters": [],
                    "widgetFields": [],
                    "frameId": "dashboard-demo$Redes",
                    "createdBy": "admin",
                    "id": "3d897f2e-5a6f-4f36-a4ed-fe048de06497",
                    "__state": 1,
                    "__securityState": null,
                    "dynamicAttributes": null,
                    "_persistence_fetchGroup": null
                  },
                  "children": [],
                  "weight": 1,
                  "expand": null,
                  "styleName": null,
                  "width": 100,
                  "height": 320,
                  "widthUnit": "%",
                  "heightUnit": "px",
                  "id": "282a0f33-dc1a-37b8-343a-012dd8bb2a3c",
                  "__state": 1,
                  "__securityState": null,
                  "dynamicAttributes": null,
                  "_persistence_fetchGroup": null
                }
              },
              "order": 8,
              "xs": 12,
              "sm": 12,
              "md": 6,
              "lg": 6,
              "id": "7248e61e-fa21-2f47-926d-d8ba16683dd1",
              "__state": 1,
              "__securityState": null,
              "dynamicAttributes": null,
              "_persistence_fetchGroup": null
            }
          ],
          "children": [],
          "weight": 1,
          "expand": null,
          "styleName": null,
          "width": 100,
          "height": 100,
          "widthUnit": "%",
          "heightUnit": "%",
          "id": "2c028643-4b65-43ba-2e95-dec4cfe37ea6",
          "__state": 1,
          "__securityState": null,
          "dynamicAttributes": null,
          "_persistence_fetchGroup": null
        }
      }
    ],
    "weight": 1,
    "expand": null,
    "styleName": null,
    "width": 100,
    "height": 100,
    "widthUnit": "%",
    "heightUnit": "%",
    "id": "4ef2625c-e958-3295-bc37-015732b2b623",
    "__state": 1,
    "__securityState": null,
    "dynamicAttributes": null,
    "_persistence_fetchGroup": null
  },
  "parameters": [],
  "isAvailableForAllUsers": true,
  "createdBy": "admin",
  "timerDelay": 0,
  "assistantBeanName": null,
  "id": "70c0caaa-9703-87f1-7ec2-e05fd85210d9",
  "__state": 1,
  "__securityState": null,
  "dynamicAttributes": null,
  "_persistence_fetchGroup": null
}', 'Taxi dashboard (responsive)', 'taxi-dashboard', null, true);

