// JavaScript реализация алгоритма Флойда–Уоршелла

var INF = 99999;
class AllPairShortestPath {
		constructor() {
		this.V = 4;
		}

		floydWarshall(graph) {
		var dist = Array.from(Array(this.V), () => new Array(this.V).fill(0));
		var i, j, k;
// инициализация

		for (i = 0; i < this.V; i++) {
			for (j = 0; j < this.V; j++) {
			dist[i][j] = graph[i][j];
			}
		}

		//Добавляем все вершины

		for (k = 0; k < this.V; k++) {
			// Перебираем все вершины от одного к другому
			for (i = 0; i < this.V; i++) {
			// Перебираем все вершины назначения для выбранных ресурсов
			for (j = 0; j < this.V; j++) {
				// если вершина k короче
				// части от i до j, тогда обновляем значение dist[i][j]
				if (dist[i][k] + dist[k][j] < dist[i][j]) {
				dist[i][j] = dist[i][k] + dist[k][j];
				}
			}
			}
		}

		// выводим матрицу кратчайших растояний
		this.printSolution(dist);
		}

		printSolution(dist) {
		document.write(
			"Следующая матрица показывает кратчайшие " +
			" расстояния между каждой парой вершин <br>"
		);
		for (var i = 0; i < this.V; ++i) {
			for (var j = 0; j < this.V; ++j) {
			if (dist[i][j] == INF) {
				document.write(" INF ");
			} else {
				document.write("  " + dist[i][j] + " ");
			}
			}

			document.write("<br>");
		}
		}
	}
	// Driver Code
	/* Let us create the following
		weighted graph
		     10
		(0)------->(3)
		|		   /|\
		5 |		    |
		|		  | 1
		\|/		    |
		(1)------->(2)
		      3		   */
	var graph = [
		[0, 5, INF, 10],
		[INF, 0, 3, INF],
		[INF, INF, 0, 1],
		[INF, INF, INF, 0],
	];

	var a = new AllPairShortestPath();

	// вывод результата
	a.floydWarshall(graph);

