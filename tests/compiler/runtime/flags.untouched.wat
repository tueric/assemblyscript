(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00f\00l\00a\00g\00s\00.\00t\00s\00")
 (data (i32.const 56) "\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 120) "\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $runtime/flags/VALUE_ALIGN_REF i32 (i32.const 32))
 (global $runtime/flags/KEY_ALIGN_REF i32 (i32.const 4096))
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/allocator/tlsf/Root.SL_START i32 (i32.const 4))
 (global $~lib/allocator/tlsf/SL_BITS i32 (i32.const 5))
 (global $~lib/allocator/tlsf/SB_BITS i32 (i32.const 8))
 (global $~lib/allocator/tlsf/FL_BITS i32 (i32.const 22))
 (global $~lib/allocator/tlsf/Root.SL_END i32 (i32.const 92))
 (global $~lib/allocator/tlsf/Root.HL_START i32 (i32.const 96))
 (global $~lib/allocator/tlsf/SL_SIZE i32 (i32.const 32))
 (global $~lib/allocator/tlsf/Root.HL_END i32 (i32.const 2912))
 (global $~lib/allocator/tlsf/Root.SIZE i32 (i32.const 2916))
 (global $~lib/allocator/tlsf/Block.INFO i32 (i32.const 8))
 (global $~lib/allocator/tlsf/Block.MIN_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/FREE i32 (i32.const 1))
 (global $~lib/allocator/tlsf/LEFT_FREE i32 (i32.const 2))
 (global $~lib/allocator/tlsf/TAGS i32 (i32.const 3))
 (global $~lib/allocator/tlsf/Block.MAX_SIZE i32 (i32.const 1073741824))
 (global $~lib/allocator/tlsf/SB_SIZE i32 (i32.const 256))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 176))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.setArgc" (func $~lib/setargc))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray|trampoline))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (export "$.capabilities" (global $~lib/capabilities))
 (start $start)
 (func $runtime/flags/test<~lib/array/Array<i8>> (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i16>> (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 3
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i32>> (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 4
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i64>> (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 5
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<v128>> (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 6
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>> (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 7
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>> (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 8
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i8>> (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 9
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i16>> (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 10
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i32>> (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 11
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i64>> (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 12
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<v128>> (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 13
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>> (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 14
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>> (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 15
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<v128,i8>> (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 16
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i64,i16>> (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 17
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i32,i32>> (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 18
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i16,i64>> (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 19
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,v128>> (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 20
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>> (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 21
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>> (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 22
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>> (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 23
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>> (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 24
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>> (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 25
  call $~lib/runtime/__runtime_flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:runtime/flags (; 25 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 8
  i32.or
  call $runtime/flags/test<~lib/array/Array<i8>>
  i32.const 1
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/array/Array<i16>>
  i32.const 1
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/array/Array<i32>>
  i32.const 1
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/array/Array<i64>>
  i32.const 1
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/array/Array<v128>>
  i32.const 1
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>>
  i32.const 1
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 256
  i32.or
  i32.const 512
  i32.or
  call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>>
  i32.const 2
  i32.const 8
  i32.or
  call $runtime/flags/test<~lib/set/Set<i8>>
  i32.const 2
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/set/Set<i16>>
  i32.const 2
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/set/Set<i32>>
  i32.const 2
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/set/Set<i64>>
  i32.const 2
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/set/Set<v128>>
  i32.const 2
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>>
  i32.const 2
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 256
  i32.or
  i32.const 512
  i32.or
  call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>>
  i32.const 4
  i32.const 16384
  i32.or
  i32.const 8
  i32.or
  call $runtime/flags/test<~lib/map/Map<v128,i8>>
  i32.const 4
  i32.const 8192
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/map/Map<i64,i16>>
  i32.const 4
  i32.const 4096
  i32.or
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/map/Map<i32,i32>>
  i32.const 4
  i32.const 2048
  i32.or
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/map/Map<i16,i64>>
  i32.const 4
  i32.const 1024
  i32.or
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,v128>>
  i32.const 4
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 65536
  i32.or
  i32.const 8
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>>
  i32.const 4
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 32768
  i32.or
  i32.const 65536
  i32.or
  i32.const 8
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>>
  i32.const 4
  i32.const 1024
  i32.or
  i32.const 512
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>>
  i32.const 4
  i32.const 1024
  i32.or
  i32.const 256
  i32.or
  i32.const 512
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>>
  i32.const 4
  i32.const 32768
  i32.or
  i32.const 65536
  i32.or
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 256
  i32.or
  i32.const 512
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>>
 )
 (func $~lib/runtime/runtime.instanceof (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
   i32.load
   local.get $1
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
 )
 (func $~lib/runtime/runtime.flags (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/runtime/__runtime_flags
 )
 (func $~lib/util/runtime/adjust (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 29 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 0
  local.get $1
  i32.store offset=2912
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 159
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 31 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 184
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 185
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Root#get:tailRef (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.load offset=2912
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 104
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 72
   i32.const 105
   i32.const 11
   call $~lib/env/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 447
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 35 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 175
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 176
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 153
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 37 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 277
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 279
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $5
   local.get $3
   i32.const 8
   i32.div_u
   local.set $6
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $5
   local.get $3
   local.get $5
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $6
   local.get $5
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $5
  end
  local.get $1
  i32.load offset=4
  local.set $7
  local.get $1
  i32.load offset=8
  local.set $8
  local.get $7
  if
   local.get $7
   local.get $8
   i32.store offset=8
  end
  local.get $8
  if
   local.get $8
   local.get $7
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $5
  local.get $6
  call $~lib/allocator/tlsf/Root#getHead
  i32.eq
  if
   local.get $0
   local.get $5
   local.get $6
   local.get $8
   call $~lib/allocator/tlsf/Root#setHead
   local.get $8
   i32.eqz
   if
    local.get $0
    local.get $5
    call $~lib/allocator/tlsf/Root#getSLMap
    local.set $4
    local.get $0
    local.get $5
    local.get $4
    i32.const 1
    local.get $6
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $4
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $5
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 96
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 72
   i32.const 97
   i32.const 11
   call $~lib/env/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 39 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 353
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 354
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 355
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 4
  i32.sub
  local.get $1
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 40 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 208
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 210
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 212
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 72
   i32.const 216
   i32.const 23
   call $~lib/env/abort
   unreachable
  else   
   local.get $4
  end
  local.set $5
  local.get $5
  i32.load
  local.set $6
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  if
   local.get $0
   local.get $5
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $2
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $6
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $2
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.set $5
   local.get $5
   i32.load
   local.set $6
  end
  local.get $2
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 72
    i32.const 230
    i32.const 24
    call $~lib/env/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   i32.load
   local.set $7
   local.get $7
   global.get $~lib/allocator/tlsf/FREE
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 232
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#remove
   local.get $4
   local.get $7
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $2
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $7
   i32.store
   local.get $4
   local.set $1
   local.get $7
   local.set $2
  end
  local.get $5
  local.get $6
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $1
  local.get $5
  call $~lib/allocator/tlsf/Root#setJump
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $7
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $7
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 245
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $3
   i32.const 8
   i32.div_u
   local.set $9
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $8
   local.get $3
   local.get $8
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  local.get $0
  local.get $8
  local.get $9
  call $~lib/allocator/tlsf/Root#getHead
  local.set $10
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $10
  i32.store offset=8
  local.get $10
  if
   local.get $10
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $8
  local.get $9
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $8
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 396
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 397
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 398
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Root#get:tailRef
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 403
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $1
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $1
    local.get $3
    i32.load
    local.set $4
   end
  else   
   local.get $1
   local.get $0
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 412
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $5
  i32.const 2
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.mul
  i32.sub
  local.set $6
  local.get $1
  local.set $7
  local.get $7
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.or
  local.get $4
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.or
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $5
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.sub
  local.set $8
  local.get $8
  i32.const 0
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#set:tailRef
  local.get $0
  local.get $7
  call $~lib/allocator/tlsf/Root#insert
  i32.const 1
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 441
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/ffs<u32> (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 441
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $1
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 315
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $3
   local.get $1
   i32.const 8
   i32.div_u
   local.set $4
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.set $3
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $4
   local.get $3
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $3
   local.get $4
   global.get $~lib/allocator/tlsf/SL_SIZE
   i32.const 1
   i32.sub
   i32.lt_u
   if
    local.get $4
    i32.const 1
    i32.add
    local.set $4
   else    
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    i32.const 0
    local.set $4
   end
  end
  local.get $0
  local.get $3
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $4
  i32.shl
  i32.and
  local.set $5
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $3
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $2
   local.get $2
   i32.eqz
   if
    i32.const 0
    local.set $6
   else    
    local.get $2
    call $~lib/allocator/tlsf/ffs<usize>
    local.set $3
    local.get $0
    local.get $3
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $7
    if (result i32)
     local.get $7
    else     
     i32.const 0
     i32.const 72
     i32.const 342
     i32.const 16
     call $~lib/env/abort
     unreachable
    end
    local.set $5
    local.get $0
    local.get $3
    local.get $5
    call $~lib/allocator/tlsf/ffs<u32>
    call $~lib/allocator/tlsf/Root#getHead
    local.set $6
   end
  else   
   local.get $0
   local.get $3
   local.get $5
   call $~lib/allocator/tlsf/ffs<u32>
   call $~lib/allocator/tlsf/Root#getHead
   local.set $6
  end
  local.get $6
 )
 (func $~lib/allocator/tlsf/Root#use (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 367
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $2
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 368
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 369
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#remove
  local.get $3
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.and
   i32.or
   i32.store
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.add
   local.get $2
   i32.add
   local.set $4
   local.get $4
   local.get $5
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   global.get $~lib/allocator/tlsf/FREE
   i32.or
   i32.store
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 72
    i32.const 387
    i32.const 25
    call $~lib/env/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   local.get $4
   i32.load
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
  local.get $1
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
 )
 (func $~lib/allocator/tlsf/__mem_allocate (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/allocator/tlsf/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/HEAP_BASE
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $2
   current_memory
   local.set $3
   local.get $2
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $4
   local.get $4
   local.get $3
   i32.gt_s
   local.tee $5
   if (result i32)
    local.get $4
    local.get $3
    i32.sub
    grow_memory
    i32.const 0
    i32.lt_s
   else    
    local.get $5
   end
   if
    unreachable
   end
   local.get $2
   local.tee $1
   global.set $~lib/allocator/tlsf/ROOT
   local.get $1
   i32.const 0
   call $~lib/allocator/tlsf/Root#set:tailRef
   local.get $1
   i32.const 0
   i32.store
   block $break|0
    i32.const 0
    local.set $5
    loop $repeat|0
     local.get $5
     global.get $~lib/allocator/tlsf/FL_BITS
     i32.lt_u
     i32.eqz
     br_if $break|0
     block
      local.get $1
      local.get $5
      i32.const 0
      call $~lib/allocator/tlsf/Root#setSLMap
      block $break|1
       i32.const 0
       local.set $6
       loop $repeat|1
        local.get $6
        global.get $~lib/allocator/tlsf/SL_SIZE
        i32.lt_u
        i32.eqz
        br_if $break|1
        local.get $1
        local.get $5
        local.get $6
        i32.const 0
        call $~lib/allocator/tlsf/Root#setHead
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $repeat|1
        unreachable
       end
       unreachable
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   local.get $1
   local.get $2
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
  end
  local.get $0
  global.get $~lib/allocator/tlsf/Block.MAX_SIZE
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.tee $4
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  local.tee $3
  local.get $4
  local.get $3
  i32.gt_u
  select
  local.set $0
  local.get $1
  local.get $0
  call $~lib/allocator/tlsf/Root#search
  local.set $7
  local.get $7
  i32.eqz
  if
   current_memory
   local.set $4
   local.get $0
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $4
   local.tee $2
   local.get $3
   local.tee $5
   local.get $2
   local.get $5
   i32.gt_s
   select
   local.set $2
   local.get $2
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   current_memory
   local.set $5
   local.get $1
   local.get $4
   i32.const 16
   i32.shl
   local.get $5
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
   local.get $1
   local.get $0
   call $~lib/allocator/tlsf/Root#search
   local.tee $6
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 72
    i32.const 502
    i32.const 12
    call $~lib/env/abort
    unreachable
   else    
    local.get $6
   end
   local.set $7
  end
  local.get $7
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.get $0
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $7
  local.get $0
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/memory/memory.allocate (; 47 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 49 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.store offset=12
 )
 (func $~lib/collector/itcm/maybeInit (; 50 ;) (type $FUNCSIG$v)
  global.get $~lib/collector/itcm/state
  i32.const 0
  i32.eq
  if
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/fromSpace
   global.get $~lib/collector/itcm/fromSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/fromSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/fromSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/toSpace
   global.get $~lib/collector/itcm/toSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/toSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/toSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 51 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 52 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 53 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $0
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  global.get $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  global.get $~lib/collector/itcm/fromSpace
  local.get $2
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 128
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 130
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/itcm/__ref_register
  local.get $0
 )
 (func $~lib/runtime/runtime.newObject (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 26
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 61 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/collector/itcm/ManagedObject#get:next
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 62 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/collector/itcm/iter
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  call $~lib/collector/itcm/ManagedObject#unlink
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $3
  local.get $3
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eqz
  i32.eq
  local.tee $2
  if (result i32)
   block $~lib/collector/itcm/refToObj|inlined.3 (result i32)
    local.get $0
    local.set $2
    local.get $2
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.sub
   end
   call $~lib/collector/itcm/ManagedObject#get:color
   global.get $~lib/collector/itcm/white
   i32.eq
  else   
   local.get $2
  end
  if
   local.get $3
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/memory/memory.copy (; 64 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $~lib/runtime/runtime.newArray (; 65 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  local.get $2
  call $~lib/util/runtime/register
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  call $~lib/util/runtime/allocate
  i32.const 26
  call $~lib/util/runtime/register
  local.set $6
  local.get $4
  local.tee $7
  local.get $6
  local.tee $8
  local.get $7
  i32.load
  local.tee $9
  i32.ne
  if (result i32)
   nop
   local.get $8
   local.get $7
   call $~lib/collector/itcm/__ref_link
   local.get $8
  else   
   local.get $8
  end
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/runtime/Root#constructor (; 66 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 27
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 67 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 68 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 69 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   global.get $~lib/allocator/tlsf/ROOT
   local.set $1
   local.get $1
   if
    local.get $0
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $2
    local.get $2
    i32.load
    local.set $3
    local.get $3
    global.get $~lib/allocator/tlsf/FREE
    i32.and
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 72
     i32.const 518
     i32.const 6
     call $~lib/env/abort
     unreachable
    end
    local.get $2
    local.get $3
    global.get $~lib/allocator/tlsf/FREE
    i32.or
    i32.store
    local.get $1
    local.get $0
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/memory/memory.free (; 70 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_free
 )
 (func $~lib/collector/itcm/step (; 71 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/collector/itcm/state
       local.set $1
       local.get $1
       i32.const 0
       i32.eq
       br_if $case0|0
       local.get $1
       i32.const 1
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $1
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      unreachable
     end
     block
      call $~lib/runtime/__gc_mark_roots
      i32.const 2
      global.set $~lib/collector/itcm/state
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     global.get $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/collector/itcm/iter
      local.get $0
      global.get $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      local.get $0
      i32.load
      block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
       local.get $0
       local.set $1
       local.get $1
       global.get $~lib/util/runtime/HEADER_SIZE
       i32.add
      end
      call $~lib/runtime/__gc_mark_members
     else      
      call $~lib/runtime/__gc_mark_roots
      global.get $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      local.set $0
      local.get $0
      global.get $~lib/collector/itcm/toSpace
      i32.eq
      if
       global.get $~lib/collector/itcm/fromSpace
       local.set $1
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/fromSpace
       local.get $1
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/white
       i32.eqz
       global.set $~lib/collector/itcm/white
       local.get $1
       call $~lib/collector/itcm/ManagedObject#get:next
       global.set $~lib/collector/itcm/iter
       i32.const 3
       global.set $~lib/collector/itcm/state
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    global.get $~lib/collector/itcm/iter
    local.set $0
    local.get $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     call $~lib/collector/itcm/ManagedObject#get:next
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.ge_u
     if
      local.get $0
      call $~lib/memory/memory.free
     end
    else     
     global.get $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     i32.const 1
     global.set $~lib/collector/itcm/state
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 72 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/maybeInit
  block $break|0
   loop $continue|0
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    call $~lib/collector/itcm/step
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    br_if $continue|1
   end
  end
 )
 (func $~lib/runtime/runtime.collect (; 73 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 74 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 75 ;) (type $FUNCSIG$v)
  call $start:runtime/flags
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 76 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.4 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eq
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 77 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/array/Array<i8>#__traverse (; 78 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i16>#__traverse (; 79 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i32>#__traverse (; 80 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i64>#__traverse (; 81 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<v128>#__traverse (; 82 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<runtime/flags/Ref>#__traverse (; 83 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $3
      call $~lib/runtime/__gc_mark_members
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref | null>#__traverse (; 84 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      if
       local.get $3
       call $~lib/collector/itcm/__ref_mark
       i32.const 28
       local.get $3
       call $~lib/runtime/__gc_mark_members
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/set/Set<i8>#__traverse (; 85 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i16>#__traverse (; 86 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i32>#__traverse (; 87 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i64>#__traverse (; 88 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<v128>#__traverse (; 89 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<runtime/flags/Ref>#__traverse (; 90 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<runtime/flags/Ref>|inlined.0 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 28
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/set/ENTRY_SIZE<runtime/flags/Ref>|inlined.1 (result i32)
       i32.const 8
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref | null>#__traverse (; 91 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 28
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/set/ENTRY_SIZE<runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 8
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<v128,i8>#__traverse (; 92 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i64,i16>#__traverse (; 93 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i32,i32>#__traverse (; 94 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i16,i64>#__traverse (; 95 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i8,v128>#__traverse (; 96 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<runtime/flags/Ref,i8>#__traverse (; 97 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref,i8>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 28
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref,i8>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse (; 98 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,i8>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 28
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,i8>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref>#__traverse (; 99 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 28
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse (; 100 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 28
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse (; 101 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 28
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 28
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 102 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $invalid
   block $runtime/flags/Ref
    block $~lib/runtime/Root
     block $~lib/arraybuffer/ArrayBuffer
      block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
       block $~lib/map/Map<i8,runtime/flags/Ref | null>
        block $~lib/map/Map<i8,runtime/flags/Ref>
         block $~lib/map/Map<runtime/flags/Ref | null,i8>
          block $~lib/map/Map<runtime/flags/Ref,i8>
           block $~lib/map/Map<i8,v128>
            block $~lib/map/Map<i16,i64>
             block $~lib/map/Map<i32,i32>
              block $~lib/map/Map<i64,i16>
               block $~lib/map/Map<v128,i8>
                block $~lib/set/Set<runtime/flags/Ref | null>
                 block $~lib/set/Set<runtime/flags/Ref>
                  block $~lib/set/Set<v128>
                   block $~lib/set/Set<i64>
                    block $~lib/set/Set<i32>
                     block $~lib/set/Set<i16>
                      block $~lib/set/Set<i8>
                       block $~lib/array/Array<runtime/flags/Ref | null>
                        block $~lib/array/Array<runtime/flags/Ref>
                         block $~lib/array/Array<v128>
                          block $~lib/array/Array<i64>
                           block $~lib/array/Array<i32>
                            block $~lib/array/Array<i16>
                             block $~lib/string/String
                              block $~lib/array/Array<i8>
                               local.get $0
                               br_table $invalid $~lib/array/Array<i8> $~lib/string/String $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $invalid
                              end
                              local.get $1
                              call $~lib/array/Array<i8>#__traverse
                              return
                             end
                             return
                            end
                            local.get $1
                            call $~lib/array/Array<i16>#__traverse
                            return
                           end
                           local.get $1
                           call $~lib/array/Array<i32>#__traverse
                           return
                          end
                          local.get $1
                          call $~lib/array/Array<i64>#__traverse
                          return
                         end
                         local.get $1
                         call $~lib/array/Array<v128>#__traverse
                         return
                        end
                        local.get $1
                        call $~lib/array/Array<runtime/flags/Ref>#__traverse
                        return
                       end
                       local.get $1
                       call $~lib/array/Array<runtime/flags/Ref | null>#__traverse
                       return
                      end
                      local.get $1
                      call $~lib/set/Set<i8>#__traverse
                      return
                     end
                     local.get $1
                     call $~lib/set/Set<i16>#__traverse
                     return
                    end
                    local.get $1
                    call $~lib/set/Set<i32>#__traverse
                    return
                   end
                   local.get $1
                   call $~lib/set/Set<i64>#__traverse
                   return
                  end
                  local.get $1
                  call $~lib/set/Set<v128>#__traverse
                  return
                 end
                 local.get $1
                 call $~lib/set/Set<runtime/flags/Ref>#__traverse
                 return
                end
                local.get $1
                call $~lib/set/Set<runtime/flags/Ref | null>#__traverse
                return
               end
               local.get $1
               call $~lib/map/Map<v128,i8>#__traverse
               return
              end
              local.get $1
              call $~lib/map/Map<i64,i16>#__traverse
              return
             end
             local.get $1
             call $~lib/map/Map<i32,i32>#__traverse
             return
            end
            local.get $1
            call $~lib/map/Map<i16,i64>#__traverse
            return
           end
           local.get $1
           call $~lib/map/Map<i8,v128>#__traverse
           return
          end
          local.get $1
          call $~lib/map/Map<runtime/flags/Ref,i8>#__traverse
          return
         end
         local.get $1
         call $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse
         return
        end
        local.get $1
        call $~lib/map/Map<i8,runtime/flags/Ref>#__traverse
        return
       end
       local.get $1
       call $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse
       return
      end
      local.get $1
      call $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse
      return
     end
     return
    end
    return
   end
   return
  end
  unreachable
 )
 (func $~lib/runtime/__runtime_instanceof (; 103 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $nope
   block $~lib/arraybuffer/ArrayBufferView
    block $runtime/flags/Ref
     block $~lib/runtime/Root
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
        block $~lib/map/Map<i8,runtime/flags/Ref | null>
         block $~lib/map/Map<i8,runtime/flags/Ref>
          block $~lib/map/Map<runtime/flags/Ref | null,i8>
           block $~lib/map/Map<runtime/flags/Ref,i8>
            block $~lib/map/Map<i8,v128>
             block $~lib/map/Map<i16,i64>
              block $~lib/map/Map<i32,i32>
               block $~lib/map/Map<i64,i16>
                block $~lib/map/Map<v128,i8>
                 block $~lib/set/Set<runtime/flags/Ref | null>
                  block $~lib/set/Set<runtime/flags/Ref>
                   block $~lib/set/Set<v128>
                    block $~lib/set/Set<i64>
                     block $~lib/set/Set<i32>
                      block $~lib/set/Set<i16>
                       block $~lib/set/Set<i8>
                        block $~lib/array/Array<runtime/flags/Ref | null>
                         block $~lib/array/Array<runtime/flags/Ref>
                          block $~lib/array/Array<v128>
                           block $~lib/array/Array<i64>
                            block $~lib/array/Array<i32>
                             block $~lib/array/Array<i16>
                              block $~lib/string/String
                               block $~lib/array/Array<i8>
                                local.get $0
                                br_table $nope $~lib/array/Array<i8> $~lib/string/String $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $~lib/arraybuffer/ArrayBufferView $nope
                               end
                               local.get $1
                               i32.const 1
                               i32.eq
                               local.get $1
                               i32.const 29
                               i32.eq
                               i32.or
                               return
                              end
                              local.get $1
                              i32.const 2
                              i32.eq
                              return
                             end
                             local.get $1
                             i32.const 3
                             i32.eq
                             local.get $1
                             i32.const 29
                             i32.eq
                             i32.or
                             return
                            end
                            local.get $1
                            i32.const 4
                            i32.eq
                            local.get $1
                            i32.const 29
                            i32.eq
                            i32.or
                            return
                           end
                           local.get $1
                           i32.const 5
                           i32.eq
                           local.get $1
                           i32.const 29
                           i32.eq
                           i32.or
                           return
                          end
                          local.get $1
                          i32.const 6
                          i32.eq
                          local.get $1
                          i32.const 29
                          i32.eq
                          i32.or
                          return
                         end
                         local.get $1
                         i32.const 7
                         i32.eq
                         local.get $1
                         i32.const 29
                         i32.eq
                         i32.or
                         return
                        end
                        local.get $1
                        i32.const 8
                        i32.eq
                        local.get $1
                        i32.const 29
                        i32.eq
                        i32.or
                        return
                       end
                       local.get $1
                       i32.const 9
                       i32.eq
                       return
                      end
                      local.get $1
                      i32.const 10
                      i32.eq
                      return
                     end
                     local.get $1
                     i32.const 11
                     i32.eq
                     return
                    end
                    local.get $1
                    i32.const 12
                    i32.eq
                    return
                   end
                   local.get $1
                   i32.const 13
                   i32.eq
                   return
                  end
                  local.get $1
                  i32.const 14
                  i32.eq
                  return
                 end
                 local.get $1
                 i32.const 15
                 i32.eq
                 return
                end
                local.get $1
                i32.const 16
                i32.eq
                return
               end
               local.get $1
               i32.const 17
               i32.eq
               return
              end
              local.get $1
              i32.const 18
              i32.eq
              return
             end
             local.get $1
             i32.const 19
             i32.eq
             return
            end
            local.get $1
            i32.const 20
            i32.eq
            return
           end
           local.get $1
           i32.const 21
           i32.eq
           return
          end
          local.get $1
          i32.const 22
          i32.eq
          return
         end
         local.get $1
         i32.const 23
         i32.eq
         return
        end
        local.get $1
        i32.const 24
        i32.eq
        return
       end
       local.get $1
       i32.const 25
       i32.eq
       return
      end
      local.get $1
      i32.const 26
      i32.eq
      return
     end
     local.get $1
     i32.const 27
     i32.eq
     return
    end
    local.get $1
    i32.const 28
    i32.eq
    return
   end
   local.get $1
   i32.const 29
   i32.eq
   return
  end
  i32.const 0
  return
 )
 (func $~lib/runtime/__runtime_flags (; 104 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $runtime/flags/Ref
     block $~lib/runtime/Root
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
        block $~lib/map/Map<i8,runtime/flags/Ref | null>
         block $~lib/map/Map<i8,runtime/flags/Ref>
          block $~lib/map/Map<runtime/flags/Ref | null,i8>
           block $~lib/map/Map<runtime/flags/Ref,i8>
            block $~lib/map/Map<i8,v128>
             block $~lib/map/Map<i16,i64>
              block $~lib/map/Map<i32,i32>
               block $~lib/map/Map<i64,i16>
                block $~lib/map/Map<v128,i8>
                 block $~lib/set/Set<runtime/flags/Ref | null>
                  block $~lib/set/Set<runtime/flags/Ref>
                   block $~lib/set/Set<v128>
                    block $~lib/set/Set<i64>
                     block $~lib/set/Set<i32>
                      block $~lib/set/Set<i16>
                       block $~lib/set/Set<i8>
                        block $~lib/array/Array<runtime/flags/Ref | null>
                         block $~lib/array/Array<runtime/flags/Ref>
                          block $~lib/array/Array<v128>
                           block $~lib/array/Array<i64>
                            block $~lib/array/Array<i32>
                             block $~lib/array/Array<i16>
                              block $~lib/string/String
                               block $~lib/array/Array<i8>
                                local.get $0
                                br_table $invalid $~lib/array/Array<i8> $~lib/string/String $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $~lib/arraybuffer/ArrayBufferView $invalid
                               end
                               i32.const 9
                               return
                              end
                              i32.const 0
                              return
                             end
                             i32.const 17
                             return
                            end
                            i32.const 33
                            return
                           end
                           i32.const 65
                           return
                          end
                          i32.const 129
                          return
                         end
                         i32.const 545
                         return
                        end
                        i32.const 801
                        return
                       end
                       i32.const 10
                       return
                      end
                      i32.const 18
                      return
                     end
                     i32.const 34
                     return
                    end
                    i32.const 66
                    return
                   end
                   i32.const 130
                   return
                  end
                  i32.const 546
                  return
                 end
                 i32.const 802
                 return
                end
                i32.const 16396
                return
               end
               i32.const 8212
               return
              end
              i32.const 4132
              return
             end
             i32.const 2116
             return
            end
            i32.const 1156
            return
           end
           i32.const 69644
           return
          end
          i32.const 102412
          return
         end
         i32.const 1572
         return
        end
        i32.const 1828
        return
       end
       i32.const 103204
       return
      end
      i32.const 0
      return
     end
     i32.const 0
     return
    end
    i32.const 0
    return
   end
   i32.const 0
   return
  end
  unreachable
 )
 (func $null (; 105 ;) (type $FUNCSIG$v)
 )
 (func $~lib/runtime/runtime.newArray|trampoline (; 106 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 3
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/runtime/runtime.newArray
 )
 (func $~lib/setargc (; 107 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
)