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
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "System_setup_menu Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\nin event ent\nin event next\nin event escape\n\ninternal:\nvar motor: integer = 1\nvar param: integer = 1\nvar valor: integer = 0\nvar tope: integer = 1\n\nvar power1: integer = 0\nvar speed1: integer = 0\nvar spin1: integer = 0\nvar power2: integer = 0\nvar speed2: integer = 0\nvar spin2: integer = 0"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -55,
          "y": -129
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Main",
            "fontSize": 11
          }
        },
        "id": "6d355625-c440-4b6d-9a7f-f84fa6a5be3f",
        "z": 2
      },
      {
        "position": {
          "x": -55,
          "y": 39
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_1",
            "fontSize": 11
          }
        },
        "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
        "z": 3
      },
      {
        "position": {
          "x": -34,
          "y": -225
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "6515e985-bb52-44ba-abae-10c5dae55788",
        "z": 4,
        "embeds": [
          "46e404c4-4596-4568-8875-8e1cac6f29cd"
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
          "x": -34,
          "y": -210
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "46e404c4-4596-4568-8875-8e1cac6f29cd",
        "z": 5,
        "parent": "6515e985-bb52-44ba-abae-10c5dae55788"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6515e985-bb52-44ba-abae-10c5dae55788"
        },
        "target": {
          "id": "6d355625-c440-4b6d-9a7f-f84fa6a5be3f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "31.667%",
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
            "attrs": {},
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
        "id": "0d7c6521-94f2-473e-b2f7-cf7af4836799",
        "z": 6,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6d355625-c440-4b6d-9a7f-f84fa6a5be3f"
        },
        "target": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80%",
              "dy": "28.333%",
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
                "text": "ent"
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
        "id": "c88848d7-769c-4990-ba93-6769e23c5512",
        "z": 7,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8"
        },
        "target": {
          "id": "6d355625-c440-4b6d-9a7f-f84fa6a5be3f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25%",
              "dy": "83.333%",
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
                "text": "escape"
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
        "id": "6c245106-4aa7-430a-9371-2e101f57157f",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -32.5,
          "y": 165
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "0fd147a9-3c74-4e4e-b6aa-df0cbef6b5fd",
        "z": 9
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8"
        },
        "target": {
          "id": "0fd147a9-3c74-4e4e-b6aa-df0cbef6b5fd"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "next"
              }
            },
            "position": {}
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
        "id": "095806f2-5aa5-4849-b982-3f1b2cef0731",
        "z": 10,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fd147a9-3c74-4e4e-b6aa-df0cbef6b5fd"
        },
        "target": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "58.333%",
              "dy": "86.667%",
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
                "text": "else / motor = 1"
              }
            },
            "position": {
              "distance": 0.2751581234643669,
              "offset": 9.889643058031279,
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
        "id": "8b63aebc-7a80-4001-bab9-4c3c612a7d4f",
        "z": 12,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 49,
            "y": 149
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fd147a9-3c74-4e4e-b6aa-df0cbef6b5fd"
        },
        "target": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "30%",
              "dy": "91.667%",
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
                "text": "[motor == 1] / motor = 2"
              }
            },
            "position": {
              "distance": 0.3412212294357129,
              "offset": -13.405532830078721,
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
        "id": "fa387b4a-f33b-4b1c-afc8-7dba6efa1b50",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -113,
            "y": 150
          }
        ]
      },
      {
        "position": {
          "x": 292,
          "y": 39
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Menu_2",
            "fontSize": 11
          }
        },
        "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
        "z": 14
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "21.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.333%",
              "dy": "21.667%",
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
                "text": "ent"
              }
            },
            "position": {
              "distance": 0.5383275261324042,
              "offset": -10,
              "angle": 0
            }
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
        "id": "1e09cb11-af4b-409e-8332-ed5b9975ed48",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56"
        },
        "target": {
          "id": "d81d399b-2754-4a20-af28-f97bf7e9f8b8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "66.667%",
              "dy": "50%",
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
                "text": "escape"
              }
            },
            "position": {
              "distance": 0.4721254355400697,
              "offset": -8,
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
        "id": "858967a1-37b7-41de-ba20-9c0e1d7bbb79",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 314.5,
          "y": 165
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "387d2f99-fe47-45e0-8eaa-a135f6491ccc",
        "z": 17
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56"
        },
        "target": {
          "id": "387d2f99-fe47-45e0-8eaa-a135f6491ccc"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "next"
              }
            },
            "position": {}
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
        "id": "88f5f1c0-cbfa-4d4b-b1b1-efdba7edfe02",
        "z": 18,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "387d2f99-fe47-45e0-8eaa-a135f6491ccc"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "6.667%",
              "dy": "81.667%",
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
                "text": "[param == 1] / param = 2"
              }
            },
            "position": {
              "distance": 0.32182021117011134,
              "offset": -39.013340971471614,
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
        "id": "5b9d899a-41a8-4b13-aa11-e2d8265fdb9b",
        "z": 19,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 270,
            "y": 146
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "387d2f99-fe47-45e0-8eaa-a135f6491ccc"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.667%",
              "dy": "56.667%",
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
                "text": "[param == 2] / param = 3"
              }
            },
            "position": {
              "distance": 0.30656085978054803,
              "offset": 17.982996386464777,
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
        "id": "0759e5a7-d8f2-4ef7-a718-a351b8a4f637",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 385,
            "y": 172.53
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "387d2f99-fe47-45e0-8eaa-a135f6491ccc"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "83.333%",
              "dy": "50%",
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
                "text": "else / param = 1"
              }
            },
            "position": {
              "distance": 0.2680245229899508,
              "offset": 9.585311889648438,
              "angle": 0
            }
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
        "id": "6a4b81cc-f1ea-4149-809e-83f89def49ab",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 507,
            "y": 231
          },
          {
            "x": 507,
            "y": 108
          }
        ]
      },
      {
        "position": {
          "x": 625,
          "y": 49
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "d19c9ce8-0ed7-4fd1-828a-a94eb6ce3dbd",
        "z": 25
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56"
        },
        "target": {
          "id": "d19c9ce8-0ed7-4fd1-828a-a94eb6ce3dbd"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ent"
              }
            },
            "position": {
              "distance": 0.5219803837475272,
              "offset": -7.000001220703126,
              "angle": 0
            }
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
        "id": "88ac14d6-cb47-4cf7-b4b1-5cd7bdaef238",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 938,
          "y": 26
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "menu_3",
            "fontSize": 11
          }
        },
        "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
        "z": 33
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d19c9ce8-0ed7-4fd1-828a-a94eb6ce3dbd"
        },
        "target": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "16.667%",
              "dy": "76.667%",
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
                "text": "else / valor = 0; tope = 1"
              }
            },
            "position": {
              "distance": 0.5467377773207686,
              "offset": -9,
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
        "id": "47945d58-4382-438d-9cf6-7ed15d3edcaf",
        "z": 34,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 764,
            "y": 110
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d19c9ce8-0ed7-4fd1-828a-a94eb6ce3dbd"
        },
        "target": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "10%",
              "dy": "51.667%",
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
                "text": "[param == 2] / valor = 0; tope = 9"
              }
            },
            "position": {
              "distance": 0.500000145437227,
              "offset": -10,
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
        "id": "ff94c1ea-a006-4199-a2ca-04c0c5b75cea",
        "z": 34,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1143,
          "y": 49
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "1a4e887c-19a2-43b1-b131-7f9a3b2dd0e0",
        "z": 36
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0"
        },
        "target": {
          "id": "1a4e887c-19a2-43b1-b131-7f9a3b2dd0e0"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "next"
              }
            },
            "position": {
              "distance": 0.5965716034459714,
              "offset": 4.999998779296874,
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
        "id": "20daa802-5e25-4938-be6a-1562580860d4",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1a4e887c-19a2-43b1-b131-7f9a3b2dd0e0"
        },
        "target": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "81.667%",
              "dy": "91.667%",
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
                "text": "[valor < tope] / valor = valor + 1"
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
        "id": "8625c4d8-dc35-4623-8a85-330535eb3297",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1087,
            "y": 109
          },
          {
            "x": 1067,
            "y": 109
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d19c9ce8-0ed7-4fd1-828a-a94eb6ce3dbd"
        },
        "target": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "8.333%",
              "dy": "83.333%",
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
                "text": "[param == 1] / valor = 0; tope = 1"
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
        "id": "b3285dba-54fe-482e-bfc5-e4b598e02088",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 758,
            "y": 5
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "28.333%",
              "dy": "41.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "63.333%",
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
                "text": "escape"
              }
            },
            "position": {
              "distance": 0.49234167611322754,
              "offset": 7,
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
        "id": "e6b392ba-065f-42b0-8e4f-f1c9cbe847eb",
        "z": 40,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 619,
            "y": -44
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1a4e887c-19a2-43b1-b131-7f9a3b2dd0e0"
        },
        "target": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "85%",
              "dy": "30%",
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
                "text": "else / valor = 0"
              }
            },
            "position": {
              "distance": 0.48135312125861995,
              "offset": 11,
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
        "id": "1e678351-529e-4a8a-9466-d8dab9a30f6d",
        "z": 41,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1023,
            "y": 10
          }
        ]
      },
      {
        "type": "Note",
        "attrs": {
          "root": {
            "display": ""
          },
          "body": {
            "filter": {
              "args": {}
            }
          },
          "label": {
            "text": "siginificado de param:\n1 : power (0,1)\n2 : speed (0,9)\n3 : spin (0,1)"
          }
        },
        "position": {
          "x": -305,
          "y": 241
        },
        "size": {
          "width": 155.1484375,
          "height": 120
        },
        "angle": 0,
        "linkable": false,
        "id": "c3bc5f5b-7735-4061-969b-a032c57ae5fb",
        "z": 44
      },
      {
        "position": {
          "x": 962,
          "y": -154
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f",
        "z": 45
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "83570c56-330d-48f0-a7a3-98a76036c4f0"
        },
        "target": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ent"
              }
            },
            "position": {
              "distance": 0.5123099686733031,
              "offset": 7,
              "angle": 0
            }
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
        "id": "e8bb4e81-af0c-4478-ac9f-ed6628ad5000",
        "z": 46,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "35%",
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
                "text": "[motor == 1 && param == 1] / power1 = valor"
              }
            },
            "position": {
              "distance": 0.37474611376350137,
              "offset": -9.076958558136623,
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
        "id": "ee959fae-c2e1-4719-8a9c-8dedf4e51a9a",
        "z": 47,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "25%",
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
                "text": "[motor == 1 && param == 2] / speed1 = valor"
              }
            },
            "position": {
              "distance": 0.3886845555913928,
              "offset": -10,
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
        "id": "066f3009-0e50-4868-8618-85ee02279e7d",
        "z": 48,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 564,
            "y": -180
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "21.667%",
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
                "text": "[motor == 1 && param == 3] / spin1 = valor"
              }
            },
            "position": {
              "distance": 0.3958062235399034,
              "offset": -9,
              "angle": 0
            }
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
        "id": "eb142bba-c173-4670-8cf4-57c9fb7341bf",
        "z": 49,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 521,
            "y": -210
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
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
                "text": "[motor == 2 && param == 1] / power2 = valor"
              }
            },
            "position": {
              "distance": 0.4044534100363209,
              "offset": -8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
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
        "id": "869e39da-73fa-4bf8-bb16-d0bc9ff6f3f5",
        "z": 50,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 504,
            "y": -238
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "11.667%",
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
                "text": "[motor == 2 && param == 2] / speed2 = valor"
              }
            },
            "position": {
              "distance": 0.4144713466142216,
              "offset": -10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "5"
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
        "id": "e6d531b2-2df2-499a-ae6c-f698a1dd3b19",
        "z": 51,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 495,
            "y": -267
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cc1e6415-c341-42f0-ae06-c710d2ca682f"
        },
        "target": {
          "id": "616a4f7d-e983-457f-b8ac-7807864fca56",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.667%",
              "dy": "21.667%",
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
                "text": "else / spin2 = valor"
              }
            },
            "position": {
              "distance": 0.42480527258130607,
              "offset": -11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "6"
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
        "id": "d78f00cf-27a1-417c-a1bb-d1422c72d286",
        "z": 52,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 520,
            "y": -116
          }
        ]
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
          "moduleName": "SystemSetupMenu",
          "statemachinePrefix": "systemSetupMenu",
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