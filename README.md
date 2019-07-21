# MasivianTest
Ejercicio desarrollado en Ruby on Rails 5.2.3.
Pruebas realizadas con MiniTest de Ruby.

Se exponen dos servicios:
  - GET: crea un arbol binario balanceado a partir de un arreglo, recibe el valor de 2 nodos y busca el ancestro mas cercano.

  Enpoint: http://localhost:3000/api/v1/trees/lowerCommonAncestor
  
  HTTP Method: GET
  
  Body Request: Recibe un arreglo de enteros desde donde se representará el arbol y el valor de los 2 nodos a los que se les buscará el ancestro.
  
  {  
  
      "tree": [ 
          8,
          5,          
          3,
          2,
          1,
          4,
          19,
          21,
          26,
          20
      ],
      "node1": 20,
      "node2": 26
  }
  
  Response: Responde un status 200 junto con el nodo raiz que contiene la estructura del arbol creado

  - POST: crea un arbol binario balanceado

  Enpoint: http://localhost:3000/api/v1/trees
  
  HTTP Method: POST
  
  Body: Recibe un arreglo de enteros desde donde se representará el arbol, junto con 2 valores de nodos a los que se les buscará el ancestro.
  
  {
  
      "tree": [
          8,
          5,
          3,
          2,
          1,
          4,
          19,
          21,
          26,
          20
      ],
      "node1": 20,
      "node2": 26
  }
  
  Response: Este servicio responde un status code 200 y el nodo ancestro común mas cercano
