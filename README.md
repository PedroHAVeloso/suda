# SUDA - Sistema Universal de Defesa Apocalíptico.

<!-- Descrição -->
Para vencer o fim do mundo — o apocalipse zumbi — apresentamos o SUDA, sigla para Sistema Universal de Defesa Apocalíptico. 

Uma rede com informações e dados, além de funções, para o auxílio na luta contra os infectados.

# 📜 Resumo.

O SUDA foi dividido em três principais frentes (projetos), cada um com seu objetivo. São elas:

- `SUDA - API`
  - Protocolo de Perigo
  - Dados Populacionais
- `SUDA - Website`
  - Consultas Universais
- `SUDA - Embarcado`
  - Defesa Patonal

Abaixo, um diagrama explicando  melhor cada componente do SUDA:
![Diagrama](./suda_diagram.png)

# 🗒️ Sumário.



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

`200`, corpo:

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

Requisição, corpo (tipos):

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

Requisição, corpo (exemplo):

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