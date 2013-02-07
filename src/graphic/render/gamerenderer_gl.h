/*
 * Copyright (C) 2011-2013 by the Widelands Development Team
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 */

#ifndef WIDELANDS_GAMERENDERER_GL_H
#define WIDELANDS_GAMERENDERER_GL_H

#include "gamerenderer.h"

#include "rect.h"

#include <vector>
#include <boost/scoped_array.hpp>

namespace Widelands {
struct Coords;
struct FCoords;
}

class GLSurface;

/**
 * OpenGL implementation of @ref GameRenderer.
 */
struct GameRendererGL : GameRenderer {
	GameRendererGL();
	virtual ~GameRendererGL();

	void rendermap
		(RenderTarget & dst,
		 Widelands::Editor_Game_Base const &       egbase,
		 Widelands::Player           const &       player,
		 Point                                     viewofs);
	void rendermap
		(RenderTarget & dst,
		 Widelands::Editor_Game_Base const & egbase,
		 Point                               viewofs);

private:
	struct basevertex {
		float x;
		float y;
		float tcx;
		float tcy;
		uint8_t color[4];
		uint32_t pad[3];
	};

	struct dithervertex {
		float x;
		float y;
		float tcx;
		float tcy;
		float edgex;
		float edgey;
		uint8_t color[4];
		uint32_t pad[1];
	};

	void draw();
	void prepare_terrain_base();
	void draw_terrain_base();
	void prepare_terrain_dither();
	void draw_terrain_dither();
	void prepare_roads();
	void draw_roads();
	void draw_objects();

	uint32_t patch_index(int32_t fx, int32_t fy) const;
	uint8_t field_brightness(const Widelands::FCoords & coords) const;
	uint8_t field_roads(const Widelands::FCoords & coords) const;
	template<typename vertex>
	void compute_basevertex(const Widelands::Coords & coords, vertex & vtx) const;

	/**
	 * The following variables are only valid during rendering.
	 */
	/*@{*/
	RenderTarget * m_dst;
	GLSurface * m_surface;
	Widelands::Editor_Game_Base const * m_egbase;
	Widelands::Player const * m_player;

	/// Bounding rectangle inside the destination surface
	Rect m_rect;

	/// Top-left corner of bounding rectangle maps to this pixel coordinate
	/// of the map
	Point m_offset;

	int32_t m_minfx;
	int32_t m_minfy;
	int32_t m_maxfx;
	int32_t m_maxfy;
	Rect m_patch_size;
	boost::scoped_array<basevertex> m_patch_vertices;
	uint32_t m_patch_vertices_size;
	boost::scoped_array<uint16_t> m_patch_indices;
	uint32_t m_patch_indices_size;
	std::vector<uint32_t> m_terrain_freq;
	std::vector<uint32_t> m_terrain_freq_cum;
	boost::scoped_array<dithervertex> m_edge_vertices;
	uint32_t m_edge_vertices_size;
	std::vector<uint32_t> m_terrain_edge_freq;
	std::vector<uint32_t> m_terrain_edge_freq_cum;

	uint32_t m_road_freq[2];
	boost::scoped_array<basevertex> m_road_vertices;
	uint32_t m_road_vertices_size;
	/*@}*/
};

#endif // WIDELANDS_GAMERENDERER_GL_H
