(Some) workflows for determing shallow ridges from GPlates models. To accompany the publication "Solid Earth forcing of oceanic anoxic events" by Thomas Gernon et al. (accepted at Nature Geoscience).

Given a full-plate model and some bounding polygons (defined in GPlates), extract plate boundaries between certain times that fall within these polygons. It essentially captures plate boundary data within a pre-defined polygon to isolate regions for analysis using pyGMT (select).

Notebooks:

1-convert_masking_polygons_to_gmt.ipynb, convert gplates bounding polygons to GMT polygons
2-Extract_ridges.ipynb, use bounding polygons to extract mid-ocean ridges within their spatio-temporal bounds
3-plot_figures.ipynb, plot results figure for manuscript

