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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n  var row: integer = 0\n  var column: integer = 0\n  const ROWS: integer = 2\n  const COLUMNS: integer = 16\n\ninterface:\n  in event tick\n  in event EV_DSP_UPDATE\n\noperation displayInit(): void\noperation displayCharPositionWrite(x: integer, y: integer): void\noperation displayDataWrite(data: integer): void\noperation ddramRead(row: integer, column: integer): integer"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 1090,
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
        "id": "151a9794-2e4a-4bec-a1e9-612b219cf19b",
        "z": 12
      },
      {
        "position": {
          "x": 992,
          "y": 141
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "7e8a5ec3-a647-4762-a80f-6e96715f14aa",
        "z": 14,
        "embeds": [
          "e23111f1-d335-4eff-aed1-573a4aff75b4"
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
          "x": 992,
          "y": 156
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "e23111f1-d335-4eff-aed1-573a4aff75b4",
        "z": 15,
        "parent": "7e8a5ec3-a647-4762-a80f-6e96715f14aa"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7e8a5ec3-a647-4762-a80f-6e96715f14aa"
        },
        "target": {
          "id": "151a9794-2e4a-4bec-a1e9-612b219cf19b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.378%",
              "dy": "63.333%",
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
                "text": "/ displayInit()"
              }
            },
            "position": {
              "distance": 0.5903476981919624,
              "offset": 11.876068115234375,
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
        "id": "47a9ff42-732d-429a-85d8-419c39968f5c",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1001,
            "y": 245
          }
        ]
      },
      {
        "position": {
          "x": 1571,
          "y": 221
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
        "id": "34902695-0e7b-4080-9376-05dcfe299be2",
        "z": 22,
        "embeds": [
          "85de78d3-465e-49ab-926f-699d6eb3eaf5",
          "074e4358-a94d-4a38-ad4e-37c92bdf96de"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2"
        },
        "target": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.099%",
              "dy": "95%",
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
                "text": "tick [column < COLUMNS] / displayDataWrite(ddramRead(row, column)); \ncolumn++"
              }
            },
            "position": {
              "distance": 0.7451208967742382,
              "offset": 166.55239514401887,
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
        "id": "074e4358-a94d-4a38-ad4e-37c92bdf96de",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "34902695-0e7b-4080-9376-05dcfe299be2"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "151a9794-2e4a-4bec-a1e9-612b219cf19b"
        },
        "target": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.546%",
              "dy": "20%",
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
            "position": {}
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
        "id": "0df7d211-d066-48ca-b101-7aac2143a74e",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1389,
            "y": 120
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.546%",
              "dy": "76.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "151a9794-2e4a-4bec-a1e9-612b219cf19b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "64.308%",
              "dy": "78.333%",
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
                "text": "tick / displayCharPositionWrite(0, 0); row = 0; column = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "efea223b-3b1f-4488-aeff-f1e4ec6fe13d",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1378,
            "y": 309
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.667%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "34902695-0e7b-4080-9376-05dcfe299be2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "82.511%",
              "dy": "18.333%",
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
                "text": "tick [row < ROWS - 1] / row++; column = 0;\ndisplayCharPositionWrite(0, row)"
              }
            },
            "position": {
              "distance": 0.7136975799729481,
              "offset": -101.33629085013423,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
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
        "id": "85de78d3-465e-49ab-926f-699d6eb3eaf5",
        "z": 27,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "34902695-0e7b-4080-9376-05dcfe299be2"
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
          "moduleName": "TaskDisplay",
          "statemachinePrefix": "taskDisplay",
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