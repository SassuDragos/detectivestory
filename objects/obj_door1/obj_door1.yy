{
    "id": "9c0bf1e8-e76f-4dd4-8cff-a68989ee8c75",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_door1",
    "eventList": [
        {
            "id": "4e47aff8-6b51-4ff7-8294-f162811624d2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "9c0bf1e8-e76f-4dd4-8cff-a68989ee8c75"
        },
        {
            "id": "8235c983-bac0-47c5-8086-7d2ab708f3e8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "9c0bf1e8-e76f-4dd4-8cff-a68989ee8c75"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "af722ddd-17d0-4aa8-ad33-d4ce0c4743a5",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "8a0c620c-ba5f-4bb5-8071-f6a362d22693",
            "propertyId": "94d9278b-229d-41af-80cd-805330761e29",
            "value": "Where.OUTSIDE"
        }
    ],
    "parentObjectId": "8a0c620c-ba5f-4bb5-8071-f6a362d22693",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "9ebbfe69-41bd-4ab2-86dc-ffc7c30af216",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "-1",
                "RoomChoices.SAFE_ROOM",
                "RoomChoices.BEDROOM_LUIGI",
                "RoomChoices.BEDROOM_MARIO",
                "RoomChoices.APARTMENTS"
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-1",
            "varName": "one_way",
            "varType": 6
        },
        {
            "id": "940681bd-d877-4121-9c99-f6ac57004ecb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "true",
            "varName": "unlocked",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "1bf9301e-aac9-48f9-85b9-6daee47c2b17",
    "visible": true
}