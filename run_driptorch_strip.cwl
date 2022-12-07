arguments:
- --
baseCommand: /app/cwl/bin/run_driptorch_strip
class: CommandLineTool
cwlVersion: v1.1
hints:
  DockerRequirement:
    dockerImageId: kcapd/run_driptorch:latest
inputs:
  burn_unit_control_line_buffer:
    inputBinding:
      prefix: --burn_unit_control_line_buffer
    type: float
  burn_unit_downwind_buffer:
    inputBinding:
      prefix: --burn_unit_downwind_buffer
    type: float
  burn_unit_firing_direction:
    inputBinding:
      prefix: --burn_unit_firing_direction
    type: float
  burn_unit_geojson:
    inputBinding:
      prefix: --burn_unit_geojson
    type: string
  firing_depth:
    inputBinding:
      prefix: --firing_depth
    type: float
  firing_heat_delay:
    inputBinding:
      prefix: --firing_heat_delay
    type: float
  firing_heat_depth:
    inputBinding:
      prefix: --firing_heat_depth
    type: float
  firing_side:
    inputBinding:
      prefix: --firing_side
    type: string
  firing_spacing:
    inputBinding:
      prefix: --firing_spacing
    type: float
  igniters_line_dash_length:
    inputBinding:
      prefix: --igniters_line_dash_length
    type: float
  igniters_line_gap_length:
    inputBinding:
      prefix: --igniters_line_gap_length
    type: float
  igniters_velocity:
    inputBinding:
      prefix: --igniters_velocity
    type: float
  number_of_igniters:
    inputBinding:
      prefix: --number_of_igniters
    type: int
  output_epsg:
    inputBinding:
      prefix: --output_epsg
    type: string
  output_resolution:
    inputBinding:
      prefix: --output_resolution
    type: int
  output_time_offset:
    inputBinding:
      prefix: --output_time_offset
    type: int
outputs:
  output_file:
    outputBinding:
      glob: ./qf_ignition.dat
    type: File
requirements:
  NetworkAccess:
    networkAccess: true
