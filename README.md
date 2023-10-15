API rotas

## Listar todos os zumbis

`GET /zombies`

Resposta (tipos):

```
{
  "id": string,
  "location": {
    "country": string,
    "state": string,
    "city": string
  },
  "age": int,
  "gender": int,
  "weight": double,
  "height": double,
  "blood_type": string,
  "musics": <string>[],
  "games": <string>[],
  "sports": <string>[]
} []
```

Resposta (exemplo):

`200`, body:

```json
[
  {
    "id": "AjGRFsai234u90SADFV435230Msadc3412asdzS",
    "location": {
      "country": "BRA",
      "state": "SP",
      "city": "Marília"
    },
    "age": 20,
    "gender": 1,
    "weight": 60.0,
    "height": 1.8,
    "blood_type": "A+",
    "musics": [],
    "games": [],
    "sports": []
  },

  ...
]
```

## Adicionar um zumbi

`POST /zombies`

Requisição (tipos):

```
{
  "location": {
    "country": string,
    "state": string,
    "city": string
  },
  "age": int,
  "gender": int,
  "weight": double,
  "height": double,
  "blood_type": string,
  "musics": <string>[],
  "games": <string>[],
  "sports": <string>[]
}
```

Requisição (exemplo):

```json
{
  "location": {
    "country": "BRA",
    "state": "SP",
    "city": "Marília"
  },
  "age": 20,
  "gender": 1,
  "weight": 60.0,
  "height": 1.8,
  "blood_type": "A+",
  "musics": [],
  "games": [],
  "sports": []
}
```

Resposta (exemplo):

`200`