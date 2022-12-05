arguments:
- --
baseCommand: /app/cwl/bin/run_driptorch_head
class: CommandLineTool
cwlVersion: v1.1
hints:
  DockerRequirement:
    dockerImageId: mintcomponents/run_driptorch:latest
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
  firing_clockwise:
    inputBinding:
      prefix: --firing_clockwise
    type: boolean
  firing_offset:
    inputBinding:
      prefix: --firing_offset
    type: float
  igniter_line_dash_length:
    inputBinding:
      prefix: --igniter_line_dash_length
    type: float
  igniter_line_gap_length:
    inputBinding:
      prefix: --igniter_line_gap_length
    type: float
  igniter_velocity:
    inputBinding:
      prefix: --igniter_velocity
    type: float
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
