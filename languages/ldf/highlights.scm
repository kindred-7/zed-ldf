; LDF 高亮角色分配（层级同 DBC：结构名 > 信号 > 节点 > 数值 > 标点）

(comment) @comment
(free_text) @comment

(string) @string

(integer) @number
(float) @number

[
  "LIN_description_file"
  "LIN_protocol_version"
  "LIN_language_version"
  "Channel_name"
  "LIN_speed"
  "Nodes"
  "Master"
  "Slaves"
  "Signals"
  "Diagnostic_signals"
  "Frames"
  "Diagnostic_frames"
  "Signal_groups"
  "Sporadic_frames"
  "Event_triggered_frames"
  "Node_attributes"
  "Schedule_tables"
  "Signal_encoding_types"
  "Signal_representation"
  "Status_management"
  "General_description"
  "LIN_protocol"
  "configured_NAD"
  "initial_NAD"
  "product_id"
  "P2_min"
  "ST_min"
  "N_As_timeout"
  "N_Cr_timeout"
  "response_error"
  "fault_state_signals"
  "configurable_frames"
  "logical_value"
  "physical_value"
  "bcd_value"
  "ascii_value"
  "kbps"
  "delay"
  "ms"
  "AssignNAD"
  "AssignFrameId"
  "AssignFrameIdRange"
  "ConditionalChangeNAD"
  "DataDump"
  "SaveConfiguration"
  "FreeFormat"
] @keyword

; 结构名：帧 / 表 / 节点（骨架）
(frame_definition name: (identifier) @type)
(diagnostic_frame name: (identifier) @type)
(signal_group name: (identifier) @type)
(schedule_table name: (identifier) @type)
(schedule_slot name: (identifier) @type)
(node_attribute name: (identifier) @type)
(master_definition name: (identifier) @type)
(sporadic_frame name: (identifier) @type)
(event_triggered_frame name: (identifier) @type)
(configurable_frames_attribute frame: (identifier) @type)
(encoding_type name: (identifier) @type)
(signal_representation encoding: (identifier) @type)

; 信号名（内容主体）
(signal_definition name: (identifier) @property)
(diagnostic_signal_definition name: (identifier) @property)
(signal_assignment signal: (identifier) @property)
(response_error_attribute signal: (identifier) @property)
(fault_state_signals_attribute signal: (identifier) @property)
(signal_representation signal: (identifier) @property)

; 节点名（收发方）
(signal_definition publisher: (identifier) @constant)
(signal_definition receiver: (identifier) @constant)
(slaves_definition node: (identifier) @constant)
(frame_definition transmitter: (identifier) @constant)
(schedule_slot frame: (identifier) @constant)
(sporadic_frame frame: (identifier) @constant)
(event_triggered_frame frame: (identifier) @constant)
(event_triggered_frame collision_table: (identifier) @constant)
(schedule_command (identifier) @constant)
(nad_attribute value: (integer) @number)
