{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "task_display Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n  var row: integer = 0\n  var column: integer = 0\n\ninterface:\n  in event tick\n  in event EV_DSP_UPDATE\n\noperation displayInit(): void\noperation displayCharPositionWrite(x: integer, y: integer): void\noperation displayRowWrite(row: integer): void"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 216,
          "y": 207
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_IDLE",
            "fontSize": 11
          }
        },
        "id": "8454d3ed-0e4a-4d3b-863f-9da486ed21ca",
        "z": 4
      },
      {
        "position": {
          "x": 544,
          "y": 207
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_UPDATE",
            "fontSize": 11
          }
        },
        "id": "f9d694cd-8154-4366-92c9-6c619053a74d",
        "z": 5
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8454d3ed-0e4a-4d3b-863f-9da486ed21ca"
        },
        "target": {
          "id": "f9d694cd-8154-4366-92c9-6c619053a74d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "31.667%",
              "dy": "48.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_DSP_UPDATE"
              }
            },
            "position": {
              "distance": 0.5095525113378343,
              "offset": -12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c8443b6e-61fe-461e-8d62-b6a258104797",
        "z": 7,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 429,
            "y": 153
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "f9d694cd-8154-4366-92c9-6c619053a74d"
        },
        "target": {
          "id": "8454d3ed-0e4a-4d3b-863f-9da486ed21ca",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.667%",
              "dy": "73.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick / row = 0; column = 0; displayCharPositionWrite(0, 0); \ndisplayRowWrite(row); row = 1; displayCharPositionWrite(0, 1);\ndisplayRowWrite(row)"
              }
            },
            "position": {
              "distance": 0.4789159080288681,
              "offset": -37,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b0805f29-e349-4733-96fa-3981de02191c",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 437,
            "y": 323
          }
        ]
      },
      {
        "position": {
          "x": 92,
          "y": 189
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "c0afab0b-adfe-4bbc-926e-1fb70a3c3591",
        "z": 9,
        "embeds": [
          "f909be8d-f33c-4f39-80be-9bca5b177180"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 92,
          "y": 204
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f909be8d-f33c-4f39-80be-9bca5b177180",
        "z": 10,
        "parent": "c0afab0b-adfe-4bbc-926e-1fb70a3c3591"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c0afab0b-adfe-4bbc-926e-1fb70a3c3591"
        },
        "target": {
          "id": "8454d3ed-0e4a-4d3b-863f-9da486ed21ca",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.333%",
              "dy": "43.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/ displayInit(); displayCharPositionWrite(0, 0); row = 0; \ndisplayRowWrite(row); displayCharPositionWrite(0, 1);\nrow = 1; displayRowWrite(row)"
              }
            },
            "position": {
              "distance": 0.1660051034871664,
              "offset": 74.27237166372606,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "33ed8401-f330-488d-bd7e-a89d7da9960e",
        "z": 11,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "MyFirstStatechart",
          "statemachinePrefix": "myFirstStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}