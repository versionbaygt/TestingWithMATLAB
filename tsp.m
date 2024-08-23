% Given a list of Cities and the time to get from one to another.
% What is the shortest trajectory that covers all cities?
N = 4;
w = magic(N);
G = digraph(w);
[best_path,val] = mytsp(G);
h = plot(G, EdgeLabel=G.Edges.Weight);
highlight(h,best_path,'NodeColor','g','EdgeColor','r','LineWidth',2)


function [best_path, val] = mytsp(G)
    n = size(G.Nodes,1);
    all_combinations = perms(1:n);
    [N,M] = size(all_combinations);
    
    % round trip
    all_combinations(:,n+1) = all_combinations(:,1);

    % Calculate Best Path
    best = zeros(N,1);
    for i = 1:N
        % Calculate Effort path
        act_path = all_combinations(i,:);
        for k = 1:M
            effort = G.Edges.Weight(G.Edges.EndNodes(:,1)==act_path(k) & G.Edges.EndNodes(:,2)==act_path(k+1));
            best(i) = best(i) + effort;
        end
        fprintf("Effort of %d is: %f\n",i, best(i))
    end

    % find best path:
    [val,idx] = min(best);
    best_path = all_combinations(idx(1),:);
    disp(best_path)
    disp(val)
    disp(idx)
end