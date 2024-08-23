function [best_path, val] = tsp(N)
% Given a list of Cities and the time to get from one to another.
% What is the shortest trajectory that covers all cities?
w = magic(N);
G = digraph(w);
[best_path,val] = mytsp(G);
h = plot(G, EdgeLabel=G.Edges.Weight);
highlight(h,best_path,'NodeColor','g','EdgeColor','r','LineWidth',2)
end
