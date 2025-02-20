/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_check_validpath.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: radaoudi <radaoudi@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/06 16:21:52 by radaoudi          #+#    #+#             */
/*   Updated: 2022/09/06 16:35:01 by radaoudi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

t_map	create_new_map(t_map map)
{
	t_map	new_map;
	int		i;

	i = -1;
	new_map.coins = map.coins;
	new_map.columns = map.columns;
	new_map.rows = map.rows;
	new_map.full = malloc((map.rows + 1) * sizeof(char *));
	while (++i < map.rows)
		new_map.full[i] = ft_strdup(map.full[i]);
	return (new_map);
}

void	ft_free_new_map(t_map map)
{
	int	string;

	string = 0;
	while (string < map.rows)
		free(map.full[string++]);
	free(map.full);
}

int	is_safe(int i, int j, t_map map)
{
	if (i >= 1 && i < map.rows && j >= 1 && j < map.columns)
		return (1);
	return (0);
}

int	**create_visited(t_map map)
{
	int	**visited;
	int	i;
	int	j;

	i = 0;
	visited = malloc(map.rows * sizeof(int *));
	if (!visited)
		exit(-1);
	while (i < map.rows)
	{
		j = 0;
		visited[i] = malloc(map.columns * sizeof(int));
		if (!visited[i])
			exit(-1);
		while (j < map.columns)
		{
			visited[i][j] = 0;
			j++;
		}
		i++;
	}
	return (visited);
}

void	free_visited(int **visited, t_map map)
{
	int	i;

	i = 0;
	while (i < map.rows)
		free(visited[i++]);
	free(visited);
}
