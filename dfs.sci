
function dfs(graph, visited, stack, node, N)
    visited(node) = 1;
    for i = 1:N
        if graph(node, i) == 1 & visited(i) == 0 then
            dfs(graph, visited, stack, i, N);
        end
    end
    stack = [node, stack];
endfunction
function topologicalSort(graph, N)
    visited = zeros(1, N);  
    stack = [];  
    for node = 1:N
        if visited(node) == 0 then
            dfs(graph, visited, stack, node, N);
        end
    end
    disp("Topologically sorted order:");
    disp(stack);
endfunction
graph = [
    0, 1, 0, 0, 0;  // Node 1 -> Node 2
    0, 0, 1, 0, 0;  // Node 2 -> Node 3
    0, 0, 0, 1, 0;  // Node 3 -> Node 4
    0, 0, 0, 0, 1;  // Node 4 -> Node 5
    0, 0, 0, 0, 0   // Node 5 (no outgoing edges)
];
topologicalSort(graph, 5);