Н+
ЯЄ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.0-49-g85c8b2a817f8љШ)

embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЇС2*'
shared_nameembedding_8/embeddings

*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings* 
_output_shapes
:
ЇС2*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:d*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_13/lstm_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*,
shared_namelstm_13/lstm_cell_23/kernel

/lstm_13/lstm_cell_23/kernel/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_23/kernel*
_output_shapes
:	2*
dtype0
Ї
%lstm_13/lstm_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_13/lstm_cell_23/recurrent_kernel
 
9lstm_13/lstm_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_13/lstm_cell_23/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_13/lstm_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_13/lstm_cell_23/bias

-lstm_13/lstm_cell_23/bias/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_23/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_8/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЇС2*.
shared_nameAdam/embedding_8/embeddings/m

1Adam/embedding_8/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/m* 
_output_shapes
:
ЇС2*
dtype0

Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_19/kernel/m

*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_13/lstm_cell_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*3
shared_name$"Adam/lstm_13/lstm_cell_23/kernel/m

6Adam/lstm_13/lstm_cell_23/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_23/kernel/m*
_output_shapes
:	2*
dtype0
Е
,Adam/lstm_13/lstm_cell_23/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_13/lstm_cell_23/recurrent_kernel/m
Ў
@Adam/lstm_13/lstm_cell_23/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_23/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_13/lstm_cell_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_13/lstm_cell_23/bias/m

4Adam/lstm_13/lstm_cell_23/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_23/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_8/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЇС2*.
shared_nameAdam/embedding_8/embeddings/v

1Adam/embedding_8/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/v* 
_output_shapes
:
ЇС2*
dtype0

Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_19/kernel/v

*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_13/lstm_cell_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*3
shared_name$"Adam/lstm_13/lstm_cell_23/kernel/v

6Adam/lstm_13/lstm_cell_23/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_23/kernel/v*
_output_shapes
:	2*
dtype0
Е
,Adam/lstm_13/lstm_cell_23/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_13/lstm_cell_23/recurrent_kernel/v
Ў
@Adam/lstm_13/lstm_cell_23/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_23/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_13/lstm_cell_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_13/lstm_cell_23/bias/v

4Adam/lstm_13/lstm_cell_23/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_23/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ј*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Г*
valueЉ*BІ* B*
ѓ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Ќ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va
*
0
%1
&2
'3
4
5
 
*
0
%1
&2
'3
4
5
­
(non_trainable_variables
	variables
regularization_losses

)layers
*layer_metrics
trainable_variables
+layer_regularization_losses
,metrics
 
fd
VARIABLE_VALUEembedding_8/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­
-non_trainable_variables
	variables
regularization_losses

.layers
/layer_metrics
trainable_variables
0layer_regularization_losses
1metrics
 
 
 
­
2non_trainable_variables
	variables
regularization_losses

3layers
4layer_metrics
trainable_variables
5layer_regularization_losses
6metrics
~

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
 

%0
&1
'2
 

%0
&1
'2
Й
;non_trainable_variables
	variables
regularization_losses

<layers
=layer_metrics
trainable_variables
>layer_regularization_losses
?metrics

@states
[Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Anon_trainable_variables
	variables
regularization_losses

Blayers
Clayer_metrics
trainable_variables
Dlayer_regularization_losses
Emetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_13/lstm_cell_23/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_13/lstm_cell_23/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_13/lstm_cell_23/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3
 
 

F0
G1
 
 
 
 
 
 
 
 
 
 

%0
&1
'2
 

%0
&1
'2
­
Hnon_trainable_variables
7	variables
8regularization_losses

Ilayers
Jlayer_metrics
9trainable_variables
Klayer_regularization_losses
Lmetrics
 

0
 
 
 
 
 
 
 
 
 
4
	Mtotal
	Ncount
O	variables
P	keras_api
D
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

O	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Q0
R1

T	variables

VARIABLE_VALUEAdam/embedding_8/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_23/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_13/lstm_cell_23/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_23/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_8/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_23/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_13/lstm_cell_23/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_23/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_8_inputPlaceholder*'
_output_shapes
:џџџџџџџџџP*
dtype0*
shape:џџџџџџџџџP
п
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_8_inputembedding_8/embeddingslstm_13/lstm_cell_23/kernellstm_13/lstm_cell_23/bias%lstm_13/lstm_cell_23/recurrent_kerneldense_19/kerneldense_19/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_460874
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
а
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_8/embeddings/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_13/lstm_cell_23/kernel/Read/ReadVariableOp9lstm_13/lstm_cell_23/recurrent_kernel/Read/ReadVariableOp-lstm_13/lstm_cell_23/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_8/embeddings/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_23/kernel/m/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_23/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_23/bias/m/Read/ReadVariableOp1Adam/embedding_8/embeddings/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_23/kernel/v/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_23/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_23/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_463392
Џ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_8/embeddingsdense_19/kerneldense_19/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_13/lstm_cell_23/kernel%lstm_13/lstm_cell_23/recurrent_kernellstm_13/lstm_cell_23/biastotalcounttotal_1count_1Adam/embedding_8/embeddings/mAdam/dense_19/kernel/mAdam/dense_19/bias/m"Adam/lstm_13/lstm_cell_23/kernel/m,Adam/lstm_13/lstm_cell_23/recurrent_kernel/m Adam/lstm_13/lstm_cell_23/bias/mAdam/embedding_8/embeddings/vAdam/dense_19/kernel/vAdam/dense_19/bias/v"Adam/lstm_13/lstm_cell_23/kernel/v,Adam/lstm_13/lstm_cell_23/recurrent_kernel/v Adam/lstm_13/lstm_cell_23/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_463483ѓЭ(


(__inference_lstm_13_layer_call_fn_463002
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4599842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
В
О
C__inference_lstm_13_layer_call_and_return_conditional_losses_462320

inputs.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_462184*
condR
while_cond_462183*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Ћ
У
while_cond_462843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_462843___redundant_placeholder04
0while_while_cond_462843___redundant_placeholder14
0while_while_cond_462843___redundant_placeholder24
0while_while_cond_462843___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
№њ
О
C__inference_lstm_13_layer_call_and_return_conditional_losses_462065

inputs.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like}
lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout/ConstГ
lstm_cell_23/dropout/MulMullstm_cell_23/ones_like:output:0#lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul
lstm_cell_23/dropout/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout/Shapeљ
1lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2 	23
1lstm_cell_23/dropout/random_uniform/RandomUniform
#lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2%
#lstm_cell_23/dropout/GreaterEqual/yђ
!lstm_cell_23/dropout/GreaterEqualGreaterEqual:lstm_cell_23/dropout/random_uniform/RandomUniform:output:0,lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22#
!lstm_cell_23/dropout/GreaterEqualІ
lstm_cell_23/dropout/CastCast%lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/CastЎ
lstm_cell_23/dropout/Mul_1Mullstm_cell_23/dropout/Mul:z:0lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul_1
lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_1/ConstЙ
lstm_cell_23/dropout_1/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul
lstm_cell_23/dropout_1/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_1/Shape
3lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2Ъ25
3lstm_cell_23/dropout_1/random_uniform/RandomUniform
%lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_1/GreaterEqual/yњ
#lstm_cell_23/dropout_1/GreaterEqualGreaterEqual<lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_1/GreaterEqualЌ
lstm_cell_23/dropout_1/CastCast'lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/CastЖ
lstm_cell_23/dropout_1/Mul_1Mullstm_cell_23/dropout_1/Mul:z:0lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul_1
lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_2/ConstЙ
lstm_cell_23/dropout_2/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul
lstm_cell_23/dropout_2/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_2/Shape
3lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2эИ25
3lstm_cell_23/dropout_2/random_uniform/RandomUniform
%lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_2/GreaterEqual/yњ
#lstm_cell_23/dropout_2/GreaterEqualGreaterEqual<lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_2/GreaterEqualЌ
lstm_cell_23/dropout_2/CastCast'lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/CastЖ
lstm_cell_23/dropout_2/Mul_1Mullstm_cell_23/dropout_2/Mul:z:0lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul_1
lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_3/ConstЙ
lstm_cell_23/dropout_3/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul
lstm_cell_23/dropout_3/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_3/Shape
3lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2џЄБ25
3lstm_cell_23/dropout_3/random_uniform/RandomUniform
%lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_3/GreaterEqual/yњ
#lstm_cell_23/dropout_3/GreaterEqualGreaterEqual<lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_3/GreaterEqualЌ
lstm_cell_23/dropout_3/CastCast'lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/CastЖ
lstm_cell_23/dropout_3/Mul_1Mullstm_cell_23/dropout_3/Mul:z:0lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul_1~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_4/ConstЛ
lstm_cell_23/dropout_4/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul
lstm_cell_23/dropout_4/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_4/Shape
3lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2 ћ25
3lstm_cell_23/dropout_4/random_uniform/RandomUniform
%lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_4/GreaterEqual/yњ
#lstm_cell_23/dropout_4/GreaterEqualGreaterEqual<lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_4/GreaterEqualЌ
lstm_cell_23/dropout_4/CastCast'lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/CastЖ
lstm_cell_23/dropout_4/Mul_1Mullstm_cell_23/dropout_4/Mul:z:0lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul_1
lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_5/ConstЛ
lstm_cell_23/dropout_5/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul
lstm_cell_23/dropout_5/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_5/Shape
3lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ќїЇ25
3lstm_cell_23/dropout_5/random_uniform/RandomUniform
%lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_5/GreaterEqual/yњ
#lstm_cell_23/dropout_5/GreaterEqualGreaterEqual<lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_5/GreaterEqualЌ
lstm_cell_23/dropout_5/CastCast'lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/CastЖ
lstm_cell_23/dropout_5/Mul_1Mullstm_cell_23/dropout_5/Mul:z:0lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul_1
lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_6/ConstЛ
lstm_cell_23/dropout_6/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul
lstm_cell_23/dropout_6/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_6/Shape
3lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЌН25
3lstm_cell_23/dropout_6/random_uniform/RandomUniform
%lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_6/GreaterEqual/yњ
#lstm_cell_23/dropout_6/GreaterEqualGreaterEqual<lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_6/GreaterEqualЌ
lstm_cell_23/dropout_6/CastCast'lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/CastЖ
lstm_cell_23/dropout_6/Mul_1Mullstm_cell_23/dropout_6/Mul:z:0lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul_1
lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_7/ConstЛ
lstm_cell_23/dropout_7/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul
lstm_cell_23/dropout_7/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_7/Shape
3lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Шфє25
3lstm_cell_23/dropout_7/random_uniform/RandomUniform
%lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_7/GreaterEqual/yњ
#lstm_cell_23/dropout_7/GreaterEqualGreaterEqual<lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_7/GreaterEqualЌ
lstm_cell_23/dropout_7/CastCast'lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/CastЖ
lstm_cell_23/dropout_7/Mul_1Mullstm_cell_23/dropout_7/Mul:z:0lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0 lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0 lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0 lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0 lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0 lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0 lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0 lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_461865*
condR
while_cond_461864*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
аб
В
&sequential_8_lstm_13_while_body_459008F
Bsequential_8_lstm_13_while_sequential_8_lstm_13_while_loop_counterL
Hsequential_8_lstm_13_while_sequential_8_lstm_13_while_maximum_iterations*
&sequential_8_lstm_13_while_placeholder,
(sequential_8_lstm_13_while_placeholder_1,
(sequential_8_lstm_13_while_placeholder_2,
(sequential_8_lstm_13_while_placeholder_3E
Asequential_8_lstm_13_while_sequential_8_lstm_13_strided_slice_1_0
}sequential_8_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_13_tensorarrayunstack_tensorlistfromtensor_0K
Gsequential_8_lstm_13_while_lstm_cell_23_split_readvariableop_resource_0M
Isequential_8_lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0E
Asequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0'
#sequential_8_lstm_13_while_identity)
%sequential_8_lstm_13_while_identity_1)
%sequential_8_lstm_13_while_identity_2)
%sequential_8_lstm_13_while_identity_3)
%sequential_8_lstm_13_while_identity_4)
%sequential_8_lstm_13_while_identity_5C
?sequential_8_lstm_13_while_sequential_8_lstm_13_strided_slice_1
{sequential_8_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_13_tensorarrayunstack_tensorlistfromtensorI
Esequential_8_lstm_13_while_lstm_cell_23_split_readvariableop_resourceK
Gsequential_8_lstm_13_while_lstm_cell_23_split_1_readvariableop_resourceC
?sequential_8_lstm_13_while_lstm_cell_23_readvariableop_resourceЂ6sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOpЂ8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_1Ђ8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_2Ђ8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3Ђ<sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOpЂ>sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOpэ
Lsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2N
Lsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeб
>sequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_8_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_13_tensorarrayunstack_tensorlistfromtensor_0&sequential_8_lstm_13_while_placeholderUsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02@
>sequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItemч
7sequential_8/lstm_13/while/lstm_cell_23/ones_like/ShapeShapeEsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:29
7sequential_8/lstm_13/while/lstm_cell_23/ones_like/ShapeЗ
7sequential_8/lstm_13/while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_8/lstm_13/while/lstm_cell_23/ones_like/ConstЄ
1sequential_8/lstm_13/while/lstm_cell_23/ones_likeFill@sequential_8/lstm_13/while/lstm_cell_23/ones_like/Shape:output:0@sequential_8/lstm_13/while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ223
1sequential_8/lstm_13/while/lstm_cell_23/ones_likeЮ
9sequential_8/lstm_13/while/lstm_cell_23/ones_like_1/ShapeShape(sequential_8_lstm_13_while_placeholder_2*
T0*
_output_shapes
:2;
9sequential_8/lstm_13/while/lstm_cell_23/ones_like_1/ShapeЛ
9sequential_8/lstm_13/while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_8/lstm_13/while/lstm_cell_23/ones_like_1/ConstЌ
3sequential_8/lstm_13/while/lstm_cell_23/ones_like_1FillBsequential_8/lstm_13/while/lstm_cell_23/ones_like_1/Shape:output:0Bsequential_8/lstm_13/while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd25
3sequential_8/lstm_13/while/lstm_cell_23/ones_like_1
+sequential_8/lstm_13/while/lstm_cell_23/mulMulEsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0:sequential_8/lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+sequential_8/lstm_13/while/lstm_cell_23/mul
-sequential_8/lstm_13/while/lstm_cell_23/mul_1MulEsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0:sequential_8/lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22/
-sequential_8/lstm_13/while/lstm_cell_23/mul_1
-sequential_8/lstm_13/while/lstm_cell_23/mul_2MulEsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0:sequential_8/lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22/
-sequential_8/lstm_13/while/lstm_cell_23/mul_2
-sequential_8/lstm_13/while/lstm_cell_23/mul_3MulEsequential_8/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0:sequential_8/lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22/
-sequential_8/lstm_13/while/lstm_cell_23/mul_3 
-sequential_8/lstm_13/while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_8/lstm_13/while/lstm_cell_23/ConstД
7sequential_8/lstm_13/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_8/lstm_13/while/lstm_cell_23/split/split_dim
<sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOpReadVariableOpGsequential_8_lstm_13_while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02>
<sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOpЧ
-sequential_8/lstm_13/while/lstm_cell_23/splitSplit@sequential_8/lstm_13/while/lstm_cell_23/split/split_dim:output:0Dsequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2/
-sequential_8/lstm_13/while/lstm_cell_23/split
.sequential_8/lstm_13/while/lstm_cell_23/MatMulMatMul/sequential_8/lstm_13/while/lstm_cell_23/mul:z:06sequential_8/lstm_13/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd20
.sequential_8/lstm_13/while/lstm_cell_23/MatMul
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_1MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_1:z:06sequential_8/lstm_13/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_1
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_2MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_2:z:06sequential_8/lstm_13/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_2
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_3MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_3:z:06sequential_8/lstm_13/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_3Є
/sequential_8/lstm_13/while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :21
/sequential_8/lstm_13/while/lstm_cell_23/Const_1И
9sequential_8/lstm_13/while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2;
9sequential_8/lstm_13/while/lstm_cell_23/split_1/split_dim
>sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOpReadVariableOpIsequential_8_lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOpП
/sequential_8/lstm_13/while/lstm_cell_23/split_1SplitBsequential_8/lstm_13/while/lstm_cell_23/split_1/split_dim:output:0Fsequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split21
/sequential_8/lstm_13/while/lstm_cell_23/split_1
/sequential_8/lstm_13/while/lstm_cell_23/BiasAddBiasAdd8sequential_8/lstm_13/while/lstm_cell_23/MatMul:product:08sequential_8/lstm_13/while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_8/lstm_13/while/lstm_cell_23/BiasAdd
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_1BiasAdd:sequential_8/lstm_13/while/lstm_cell_23/MatMul_1:product:08sequential_8/lstm_13/while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd23
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_1
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_2BiasAdd:sequential_8/lstm_13/while/lstm_cell_23/MatMul_2:product:08sequential_8/lstm_13/while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd23
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_2
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_3BiasAdd:sequential_8/lstm_13/while/lstm_cell_23/MatMul_3:product:08sequential_8/lstm_13/while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd23
1sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_3џ
-sequential_8/lstm_13/while/lstm_cell_23/mul_4Mul(sequential_8_lstm_13_while_placeholder_2<sequential_8/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_4џ
-sequential_8/lstm_13/while/lstm_cell_23/mul_5Mul(sequential_8_lstm_13_while_placeholder_2<sequential_8/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_5џ
-sequential_8/lstm_13/while/lstm_cell_23/mul_6Mul(sequential_8_lstm_13_while_placeholder_2<sequential_8/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_6џ
-sequential_8/lstm_13/while/lstm_cell_23/mul_7Mul(sequential_8_lstm_13_while_placeholder_2<sequential_8/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_7ѓ
6sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOpReadVariableOpAsequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype028
6sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOpЫ
;sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stackЯ
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2?
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_1Я
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_2ь
5sequential_8/lstm_13/while/lstm_cell_23/strided_sliceStridedSlice>sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp:value:0Dsequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack:output:0Fsequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_1:output:0Fsequential_8/lstm_13/while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask27
5sequential_8/lstm_13/while/lstm_cell_23/strided_slice
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_4MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_4:z:0>sequential_8/lstm_13/while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_4
+sequential_8/lstm_13/while/lstm_cell_23/addAddV28sequential_8/lstm_13/while/lstm_cell_23/BiasAdd:output:0:sequential_8/lstm_13/while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/while/lstm_cell_23/addа
/sequential_8/lstm_13/while/lstm_cell_23/SigmoidSigmoid/sequential_8/lstm_13/while/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd21
/sequential_8/lstm_13/while/lstm_cell_23/Sigmoidї
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_1ReadVariableOpAsequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02:
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_1Я
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2?
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stackг
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_1г
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_2ј
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1StridedSlice@sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_1:value:0Fsequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_1:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask29
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_5MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_5:z:0@sequential_8/lstm_13/while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_5
-sequential_8/lstm_13/while/lstm_cell_23/add_1AddV2:sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_1:output:0:sequential_8/lstm_13/while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/add_1ж
1sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_1Sigmoid1sequential_8/lstm_13/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_1ј
-sequential_8/lstm_13/while/lstm_cell_23/mul_8Mul5sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_1:y:0(sequential_8_lstm_13_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_8ї
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_2ReadVariableOpAsequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02:
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_2Я
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2?
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stackг
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_1г
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_2ј
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2StridedSlice@sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_2:value:0Fsequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_1:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask29
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_6MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_6:z:0@sequential_8/lstm_13/while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_6
-sequential_8/lstm_13/while/lstm_cell_23/add_2AddV2:sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_2:output:0:sequential_8/lstm_13/while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/add_2Щ
,sequential_8/lstm_13/while/lstm_cell_23/TanhTanh1sequential_8/lstm_13/while/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2.
,sequential_8/lstm_13/while/lstm_cell_23/Tanhў
-sequential_8/lstm_13/while/lstm_cell_23/mul_9Mul3sequential_8/lstm_13/while/lstm_cell_23/Sigmoid:y:00sequential_8/lstm_13/while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/mul_9џ
-sequential_8/lstm_13/while/lstm_cell_23/add_3AddV21sequential_8/lstm_13/while/lstm_cell_23/mul_8:z:01sequential_8/lstm_13/while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/add_3ї
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3ReadVariableOpAsequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02:
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3Я
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2?
=sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stackг
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_1г
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_2ј
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3StridedSlice@sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3:value:0Fsequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_1:output:0Hsequential_8/lstm_13/while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask29
7sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_7MatMul1sequential_8/lstm_13/while/lstm_cell_23/mul_7:z:0@sequential_8/lstm_13/while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd22
0sequential_8/lstm_13/while/lstm_cell_23/MatMul_7
-sequential_8/lstm_13/while/lstm_cell_23/add_4AddV2:sequential_8/lstm_13/while/lstm_cell_23/BiasAdd_3:output:0:sequential_8/lstm_13/while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/while/lstm_cell_23/add_4ж
1sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_2Sigmoid1sequential_8/lstm_13/while/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_2Э
.sequential_8/lstm_13/while/lstm_cell_23/Tanh_1Tanh1sequential_8/lstm_13/while/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd20
.sequential_8/lstm_13/while/lstm_cell_23/Tanh_1
.sequential_8/lstm_13/while/lstm_cell_23/mul_10Mul5sequential_8/lstm_13/while/lstm_cell_23/Sigmoid_2:y:02sequential_8/lstm_13/while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd20
.sequential_8/lstm_13/while/lstm_cell_23/mul_10Ъ
?sequential_8/lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_8_lstm_13_while_placeholder_1&sequential_8_lstm_13_while_placeholder2sequential_8/lstm_13/while/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02A
?sequential_8/lstm_13/while/TensorArrayV2Write/TensorListSetItem
 sequential_8/lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_8/lstm_13/while/add/yН
sequential_8/lstm_13/while/addAddV2&sequential_8_lstm_13_while_placeholder)sequential_8/lstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_8/lstm_13/while/add
"sequential_8/lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_8/lstm_13/while/add_1/yп
 sequential_8/lstm_13/while/add_1AddV2Bsequential_8_lstm_13_while_sequential_8_lstm_13_while_loop_counter+sequential_8/lstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_8/lstm_13/while/add_1
#sequential_8/lstm_13/while/IdentityIdentity$sequential_8/lstm_13/while/add_1:z:07^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_8/lstm_13/while/IdentityЏ
%sequential_8/lstm_13/while/Identity_1IdentityHsequential_8_lstm_13_while_sequential_8_lstm_13_while_maximum_iterations7^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_13/while/Identity_1
%sequential_8/lstm_13/while/Identity_2Identity"sequential_8/lstm_13/while/add:z:07^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_13/while/Identity_2Ж
%sequential_8/lstm_13/while/Identity_3IdentityOsequential_8/lstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:07^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_13/while/Identity_3Њ
%sequential_8/lstm_13/while/Identity_4Identity2sequential_8/lstm_13/while/lstm_cell_23/mul_10:z:07^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_8/lstm_13/while/Identity_4Љ
%sequential_8/lstm_13/while/Identity_5Identity1sequential_8/lstm_13/while/lstm_cell_23/add_3:z:07^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp9^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_19^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_29^sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_3=^sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp?^sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_8/lstm_13/while/Identity_5"S
#sequential_8_lstm_13_while_identity,sequential_8/lstm_13/while/Identity:output:0"W
%sequential_8_lstm_13_while_identity_1.sequential_8/lstm_13/while/Identity_1:output:0"W
%sequential_8_lstm_13_while_identity_2.sequential_8/lstm_13/while/Identity_2:output:0"W
%sequential_8_lstm_13_while_identity_3.sequential_8/lstm_13/while/Identity_3:output:0"W
%sequential_8_lstm_13_while_identity_4.sequential_8/lstm_13/while/Identity_4:output:0"W
%sequential_8_lstm_13_while_identity_5.sequential_8/lstm_13/while/Identity_5:output:0"
?sequential_8_lstm_13_while_lstm_cell_23_readvariableop_resourceAsequential_8_lstm_13_while_lstm_cell_23_readvariableop_resource_0"
Gsequential_8_lstm_13_while_lstm_cell_23_split_1_readvariableop_resourceIsequential_8_lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0"
Esequential_8_lstm_13_while_lstm_cell_23_split_readvariableop_resourceGsequential_8_lstm_13_while_lstm_cell_23_split_readvariableop_resource_0"
?sequential_8_lstm_13_while_sequential_8_lstm_13_strided_slice_1Asequential_8_lstm_13_while_sequential_8_lstm_13_strided_slice_1_0"ќ
{sequential_8_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_13_tensorarrayunstack_tensorlistfromtensor}sequential_8_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2p
6sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp6sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp2t
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_18sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_12t
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_28sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_22t
8sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_38sequential_8/lstm_13/while/lstm_cell_23/ReadVariableOp_32|
<sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp<sequential_8/lstm_13/while/lstm_cell_23/split/ReadVariableOp2
>sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp>sequential_8/lstm_13/while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ћ
У
while_cond_460238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460238___redundant_placeholder04
0while_while_cond_460238___redundant_placeholder14
0while_while_cond_460238___redundant_placeholder24
0while_while_cond_460238___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ТN

H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463254

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_10и
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityм

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1л

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
Ћ
n
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461667

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
P
4__inference_spatial_dropout1d_8_layer_call_fn_461645

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600452
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP2:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Л
Э
-__inference_lstm_cell_23_layer_call_fn_463271

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
т
m
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461635

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџP22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџP2:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Ѓ
ч
&sequential_8_lstm_13_while_cond_459007F
Bsequential_8_lstm_13_while_sequential_8_lstm_13_while_loop_counterL
Hsequential_8_lstm_13_while_sequential_8_lstm_13_while_maximum_iterations*
&sequential_8_lstm_13_while_placeholder,
(sequential_8_lstm_13_while_placeholder_1,
(sequential_8_lstm_13_while_placeholder_2,
(sequential_8_lstm_13_while_placeholder_3H
Dsequential_8_lstm_13_while_less_sequential_8_lstm_13_strided_slice_1^
Zsequential_8_lstm_13_while_sequential_8_lstm_13_while_cond_459007___redundant_placeholder0^
Zsequential_8_lstm_13_while_sequential_8_lstm_13_while_cond_459007___redundant_placeholder1^
Zsequential_8_lstm_13_while_sequential_8_lstm_13_while_cond_459007___redundant_placeholder2^
Zsequential_8_lstm_13_while_sequential_8_lstm_13_while_cond_459007___redundant_placeholder3'
#sequential_8_lstm_13_while_identity
й
sequential_8/lstm_13/while/LessLess&sequential_8_lstm_13_while_placeholderDsequential_8_lstm_13_while_less_sequential_8_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_8/lstm_13/while/Less
#sequential_8/lstm_13/while/IdentityIdentity#sequential_8/lstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_8/lstm_13/while/Identity"S
#sequential_8_lstm_13_while_identity,sequential_8/lstm_13/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:


у
lstm_13_while_cond_461080,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1D
@lstm_13_while_lstm_13_while_cond_461080___redundant_placeholder0D
@lstm_13_while_lstm_13_while_cond_461080___redundant_placeholder1D
@lstm_13_while_lstm_13_while_cond_461080___redundant_placeholder2D
@lstm_13_while_lstm_13_while_cond_461080___redundant_placeholder3
lstm_13_while_identity

lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2
lstm_13/while/Lessu
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_13/while/Identity"9
lstm_13_while_identitylstm_13/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ёј
в
while_body_461865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
 while/lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_23/dropout/ConstЫ
while/lstm_cell_23/dropout/MulMul%while/lstm_cell_23/ones_like:output:0)while/lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
while/lstm_cell_23/dropout/Mul
 while/lstm_cell_23/dropout/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_23/dropout/Shape
7while/lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ђЕg29
7while/lstm_cell_23/dropout/random_uniform/RandomUniform
)while/lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)while/lstm_cell_23/dropout/GreaterEqual/y
'while/lstm_cell_23/dropout/GreaterEqualGreaterEqual@while/lstm_cell_23/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'while/lstm_cell_23/dropout/GreaterEqualИ
while/lstm_cell_23/dropout/CastCast+while/lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22!
while/lstm_cell_23/dropout/CastЦ
 while/lstm_cell_23/dropout/Mul_1Mul"while/lstm_cell_23/dropout/Mul:z:0#while/lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout/Mul_1
"while/lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_1/Constб
 while/lstm_cell_23/dropout_1/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_1/Mul
"while/lstm_cell_23/dropout_1/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_1/Shape
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2вмБ2;
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_1/GreaterEqual/y
)while/lstm_cell_23/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_1/GreaterEqualО
!while/lstm_cell_23/dropout_1/CastCast-while/lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_1/CastЮ
"while/lstm_cell_23/dropout_1/Mul_1Mul$while/lstm_cell_23/dropout_1/Mul:z:0%while/lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_1/Mul_1
"while/lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_2/Constб
 while/lstm_cell_23/dropout_2/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_2/Mul
"while/lstm_cell_23/dropout_2/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_2/Shape
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ШиЦ2;
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_2/GreaterEqual/y
)while/lstm_cell_23/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_2/GreaterEqualО
!while/lstm_cell_23/dropout_2/CastCast-while/lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_2/CastЮ
"while/lstm_cell_23/dropout_2/Mul_1Mul$while/lstm_cell_23/dropout_2/Mul:z:0%while/lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_2/Mul_1
"while/lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_3/Constб
 while/lstm_cell_23/dropout_3/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_3/Mul
"while/lstm_cell_23/dropout_3/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_3/Shape
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2§ѕ2;
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_3/GreaterEqual/y
)while/lstm_cell_23/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_3/GreaterEqualО
!while/lstm_cell_23/dropout_3/CastCast-while/lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_3/CastЮ
"while/lstm_cell_23/dropout_3/Mul_1Mul$while/lstm_cell_23/dropout_3/Mul:z:0%while/lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_3/Mul_1
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1
"while/lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_4/Constг
 while/lstm_cell_23/dropout_4/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_4/Mul
"while/lstm_cell_23/dropout_4/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_4/Shape
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2хл2;
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_4/GreaterEqual/y
)while/lstm_cell_23/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_4/GreaterEqualО
!while/lstm_cell_23/dropout_4/CastCast-while/lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_4/CastЮ
"while/lstm_cell_23/dropout_4/Mul_1Mul$while/lstm_cell_23/dropout_4/Mul:z:0%while/lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_4/Mul_1
"while/lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_5/Constг
 while/lstm_cell_23/dropout_5/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_5/Mul
"while/lstm_cell_23/dropout_5/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_5/Shape
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Л2;
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_5/GreaterEqual/y
)while/lstm_cell_23/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_5/GreaterEqualО
!while/lstm_cell_23/dropout_5/CastCast-while/lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_5/CastЮ
"while/lstm_cell_23/dropout_5/Mul_1Mul$while/lstm_cell_23/dropout_5/Mul:z:0%while/lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_5/Mul_1
"while/lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_6/Constг
 while/lstm_cell_23/dropout_6/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_6/Mul
"while/lstm_cell_23/dropout_6/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_6/Shape
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ќ2;
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_6/GreaterEqual/y
)while/lstm_cell_23/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_6/GreaterEqualО
!while/lstm_cell_23/dropout_6/CastCast-while/lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_6/CastЮ
"while/lstm_cell_23/dropout_6/Mul_1Mul$while/lstm_cell_23/dropout_6/Mul:z:0%while/lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_6/Mul_1
"while/lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_7/Constг
 while/lstm_cell_23/dropout_7/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_7/Mul
"while/lstm_cell_23/dropout_7/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_7/Shape
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ШЦ2;
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_7/GreaterEqual/y
)while/lstm_cell_23/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_7/GreaterEqualО
!while/lstm_cell_23/dropout_7/CastCast-while/lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_7/CastЮ
"while/lstm_cell_23/dropout_7/Mul_1Mul$while/lstm_cell_23/dropout_7/Mul:z:0%while/lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_7/Mul_1С
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЧ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ч
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ч
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Њ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2&while/lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Њ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2&while/lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Њ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2&while/lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Њ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2&while/lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 


(__inference_lstm_13_layer_call_fn_462991
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4598522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
п	

G__inference_embedding_8_layer_call_and_return_conditional_losses_461601

inputs
embedding_lookup_461595
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP2
Cast§
embedding_lookupResourceGatherembedding_lookup_461595Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/461595*+
_output_shapes
:џџџџџџџџџP2*
dtype02
embedding_lookupэ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/461595*+
_output_shapes
:џџџџџџџџџP22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs

m
4__inference_spatial_dropout1d_8_layer_call_fn_461677

inputs
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4592042
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
х
О
-__inference_sequential_8_layer_call_fn_461574

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_4607952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs

ъ

lstm_13_while_body_461081,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0>
:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0@
<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_08
4lstm_13_while_lstm_cell_23_readvariableop_resource_0
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor<
8lstm_13_while_lstm_cell_23_split_readvariableop_resource>
:lstm_13_while_lstm_cell_23_split_1_readvariableop_resource6
2lstm_13_while_lstm_cell_23_readvariableop_resourceЂ)lstm_13/while/lstm_cell_23/ReadVariableOpЂ+lstm_13/while/lstm_cell_23/ReadVariableOp_1Ђ+lstm_13/while/lstm_cell_23/ReadVariableOp_2Ђ+lstm_13/while/lstm_cell_23/ReadVariableOp_3Ђ/lstm_13/while/lstm_cell_23/split/ReadVariableOpЂ1lstm_13/while/lstm_cell_23/split_1/ReadVariableOpг
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2A
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype023
1lstm_13/while/TensorArrayV2Read/TensorListGetItemР
*lstm_13/while/lstm_cell_23/ones_like/ShapeShape8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/ones_like/Shape
*lstm_13/while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_13/while/lstm_cell_23/ones_like/Const№
$lstm_13/while/lstm_cell_23/ones_likeFill3lstm_13/while/lstm_cell_23/ones_like/Shape:output:03lstm_13/while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$lstm_13/while/lstm_cell_23/ones_like
(lstm_13/while/lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_13/while/lstm_cell_23/dropout/Constы
&lstm_13/while/lstm_cell_23/dropout/MulMul-lstm_13/while/lstm_cell_23/ones_like:output:01lstm_13/while/lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22(
&lstm_13/while/lstm_cell_23/dropout/MulБ
(lstm_13/while/lstm_cell_23/dropout/ShapeShape-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_13/while/lstm_cell_23/dropout/ShapeЄ
?lstm_13/while/lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform1lstm_13/while/lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ј2A
?lstm_13/while/lstm_cell_23/dropout/random_uniform/RandomUniformЋ
1lstm_13/while/lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_13/while/lstm_cell_23/dropout/GreaterEqual/yЊ
/lstm_13/while/lstm_cell_23/dropout/GreaterEqualGreaterEqualHlstm_13/while/lstm_cell_23/dropout/random_uniform/RandomUniform:output:0:lstm_13/while/lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ221
/lstm_13/while/lstm_cell_23/dropout/GreaterEqualа
'lstm_13/while/lstm_cell_23/dropout/CastCast3lstm_13/while/lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22)
'lstm_13/while/lstm_cell_23/dropout/Castц
(lstm_13/while/lstm_cell_23/dropout/Mul_1Mul*lstm_13/while/lstm_cell_23/dropout/Mul:z:0+lstm_13/while/lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22*
(lstm_13/while/lstm_cell_23/dropout/Mul_1
*lstm_13/while/lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_1/Constё
(lstm_13/while/lstm_cell_23/dropout_1/MulMul-lstm_13/while/lstm_cell_23/ones_like:output:03lstm_13/while/lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22*
(lstm_13/while/lstm_cell_23/dropout_1/MulЕ
*lstm_13/while/lstm_cell_23/dropout_1/ShapeShape-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_1/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2і2C
Alstm_13/while/lstm_cell_23/dropout_1/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_1/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_1/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ223
1lstm_13/while/lstm_cell_23/dropout_1/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_1/CastCast5lstm_13/while/lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22+
)lstm_13/while/lstm_cell_23/dropout_1/Castю
*lstm_13/while/lstm_cell_23/dropout_1/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_1/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22,
*lstm_13/while/lstm_cell_23/dropout_1/Mul_1
*lstm_13/while/lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_2/Constё
(lstm_13/while/lstm_cell_23/dropout_2/MulMul-lstm_13/while/lstm_cell_23/ones_like:output:03lstm_13/while/lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22*
(lstm_13/while/lstm_cell_23/dropout_2/MulЕ
*lstm_13/while/lstm_cell_23/dropout_2/ShapeShape-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_2/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed22C
Alstm_13/while/lstm_cell_23/dropout_2/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_2/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_2/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ223
1lstm_13/while/lstm_cell_23/dropout_2/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_2/CastCast5lstm_13/while/lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22+
)lstm_13/while/lstm_cell_23/dropout_2/Castю
*lstm_13/while/lstm_cell_23/dropout_2/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_2/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22,
*lstm_13/while/lstm_cell_23/dropout_2/Mul_1
*lstm_13/while/lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_3/Constё
(lstm_13/while/lstm_cell_23/dropout_3/MulMul-lstm_13/while/lstm_cell_23/ones_like:output:03lstm_13/while/lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22*
(lstm_13/while/lstm_cell_23/dropout_3/MulЕ
*lstm_13/while/lstm_cell_23/dropout_3/ShapeShape-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_3/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2у2C
Alstm_13/while/lstm_cell_23/dropout_3/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_3/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_3/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ223
1lstm_13/while/lstm_cell_23/dropout_3/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_3/CastCast5lstm_13/while/lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22+
)lstm_13/while/lstm_cell_23/dropout_3/Castю
*lstm_13/while/lstm_cell_23/dropout_3/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_3/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22,
*lstm_13/while/lstm_cell_23/dropout_3/Mul_1Ї
,lstm_13/while/lstm_cell_23/ones_like_1/ShapeShapelstm_13_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_13/while/lstm_cell_23/ones_like_1/ShapeЁ
,lstm_13/while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_13/while/lstm_cell_23/ones_like_1/Constј
&lstm_13/while/lstm_cell_23/ones_like_1Fill5lstm_13/while/lstm_cell_23/ones_like_1/Shape:output:05lstm_13/while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_13/while/lstm_cell_23/ones_like_1
*lstm_13/while/lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_4/Constѓ
(lstm_13/while/lstm_cell_23/dropout_4/MulMul/lstm_13/while/lstm_cell_23/ones_like_1:output:03lstm_13/while/lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_13/while/lstm_cell_23/dropout_4/MulЗ
*lstm_13/while/lstm_cell_23/dropout_4/ShapeShape/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_4/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2эЦ2C
Alstm_13/while/lstm_cell_23/dropout_4/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_4/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_4/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1lstm_13/while/lstm_cell_23/dropout_4/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_4/CastCast5lstm_13/while/lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2+
)lstm_13/while/lstm_cell_23/dropout_4/Castю
*lstm_13/while/lstm_cell_23/dropout_4/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_4/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*lstm_13/while/lstm_cell_23/dropout_4/Mul_1
*lstm_13/while/lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_5/Constѓ
(lstm_13/while/lstm_cell_23/dropout_5/MulMul/lstm_13/while/lstm_cell_23/ones_like_1:output:03lstm_13/while/lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_13/while/lstm_cell_23/dropout_5/MulЗ
*lstm_13/while/lstm_cell_23/dropout_5/ShapeShape/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_5/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2оѕц2C
Alstm_13/while/lstm_cell_23/dropout_5/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_5/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_5/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1lstm_13/while/lstm_cell_23/dropout_5/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_5/CastCast5lstm_13/while/lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2+
)lstm_13/while/lstm_cell_23/dropout_5/Castю
*lstm_13/while/lstm_cell_23/dropout_5/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_5/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*lstm_13/while/lstm_cell_23/dropout_5/Mul_1
*lstm_13/while/lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_6/Constѓ
(lstm_13/while/lstm_cell_23/dropout_6/MulMul/lstm_13/while/lstm_cell_23/ones_like_1:output:03lstm_13/while/lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_13/while/lstm_cell_23/dropout_6/MulЗ
*lstm_13/while/lstm_cell_23/dropout_6/ShapeShape/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_6/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2вэл2C
Alstm_13/while/lstm_cell_23/dropout_6/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_6/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_6/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1lstm_13/while/lstm_cell_23/dropout_6/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_6/CastCast5lstm_13/while/lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2+
)lstm_13/while/lstm_cell_23/dropout_6/Castю
*lstm_13/while/lstm_cell_23/dropout_6/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_6/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*lstm_13/while/lstm_cell_23/dropout_6/Mul_1
*lstm_13/while/lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*lstm_13/while/lstm_cell_23/dropout_7/Constѓ
(lstm_13/while/lstm_cell_23/dropout_7/MulMul/lstm_13/while/lstm_cell_23/ones_like_1:output:03lstm_13/while/lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(lstm_13/while/lstm_cell_23/dropout_7/MulЗ
*lstm_13/while/lstm_cell_23/dropout_7/ShapeShape/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/dropout_7/ShapeЊ
Alstm_13/while/lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform3lstm_13/while/lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ўфБ2C
Alstm_13/while/lstm_cell_23/dropout_7/random_uniform/RandomUniformЏ
3lstm_13/while/lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>25
3lstm_13/while/lstm_cell_23/dropout_7/GreaterEqual/yВ
1lstm_13/while/lstm_cell_23/dropout_7/GreaterEqualGreaterEqualJlstm_13/while/lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:0<lstm_13/while/lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd23
1lstm_13/while/lstm_cell_23/dropout_7/GreaterEqualж
)lstm_13/while/lstm_cell_23/dropout_7/CastCast5lstm_13/while/lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2+
)lstm_13/while/lstm_cell_23/dropout_7/Castю
*lstm_13/while/lstm_cell_23/dropout_7/Mul_1Mul,lstm_13/while/lstm_cell_23/dropout_7/Mul:z:0-lstm_13/while/lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*lstm_13/while/lstm_cell_23/dropout_7/Mul_1с
lstm_13/while/lstm_cell_23/mulMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_13/while/lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
lstm_13/while/lstm_cell_23/mulч
 lstm_13/while/lstm_cell_23/mul_1Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_13/while/lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_1ч
 lstm_13/while/lstm_cell_23/mul_2Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_13/while/lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_2ч
 lstm_13/while/lstm_cell_23/mul_3Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_13/while/lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_3
 lstm_13/while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_13/while/lstm_cell_23/Const
*lstm_13/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_13/while/lstm_cell_23/split/split_dimо
/lstm_13/while/lstm_cell_23/split/ReadVariableOpReadVariableOp:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype021
/lstm_13/while/lstm_cell_23/split/ReadVariableOp
 lstm_13/while/lstm_cell_23/splitSplit3lstm_13/while/lstm_cell_23/split/split_dim:output:07lstm_13/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2"
 lstm_13/while/lstm_cell_23/splitб
!lstm_13/while/lstm_cell_23/MatMulMatMul"lstm_13/while/lstm_cell_23/mul:z:0)lstm_13/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/MatMulз
#lstm_13/while/lstm_cell_23/MatMul_1MatMul$lstm_13/while/lstm_cell_23/mul_1:z:0)lstm_13/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_1з
#lstm_13/while/lstm_cell_23/MatMul_2MatMul$lstm_13/while/lstm_cell_23/mul_2:z:0)lstm_13/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_2з
#lstm_13/while/lstm_cell_23/MatMul_3MatMul$lstm_13/while/lstm_cell_23/mul_3:z:0)lstm_13/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_3
"lstm_13/while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_13/while/lstm_cell_23/Const_1
,lstm_13/while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_13/while/lstm_cell_23/split_1/split_dimр
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp
"lstm_13/while/lstm_cell_23/split_1Split5lstm_13/while/lstm_cell_23/split_1/split_dim:output:09lstm_13/while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2$
"lstm_13/while/lstm_cell_23/split_1п
"lstm_13/while/lstm_cell_23/BiasAddBiasAdd+lstm_13/while/lstm_cell_23/MatMul:product:0+lstm_13/while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/while/lstm_cell_23/BiasAddх
$lstm_13/while/lstm_cell_23/BiasAdd_1BiasAdd-lstm_13/while/lstm_cell_23/MatMul_1:product:0+lstm_13/while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_1х
$lstm_13/while/lstm_cell_23/BiasAdd_2BiasAdd-lstm_13/while/lstm_cell_23/MatMul_2:product:0+lstm_13/while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_2х
$lstm_13/while/lstm_cell_23/BiasAdd_3BiasAdd-lstm_13/while/lstm_cell_23/MatMul_3:product:0+lstm_13/while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_3Ъ
 lstm_13/while/lstm_cell_23/mul_4Mullstm_13_while_placeholder_2.lstm_13/while/lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_4Ъ
 lstm_13/while/lstm_cell_23/mul_5Mullstm_13_while_placeholder_2.lstm_13/while/lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_5Ъ
 lstm_13/while/lstm_cell_23/mul_6Mullstm_13_while_placeholder_2.lstm_13/while/lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_6Ъ
 lstm_13/while/lstm_cell_23/mul_7Mullstm_13_while_placeholder_2.lstm_13/while/lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_7Ь
)lstm_13/while/lstm_cell_23/ReadVariableOpReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)lstm_13/while/lstm_cell_23/ReadVariableOpБ
.lstm_13/while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_13/while/lstm_cell_23/strided_slice/stackЕ
0lstm_13/while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_13/while/lstm_cell_23/strided_slice/stack_1Е
0lstm_13/while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_13/while/lstm_cell_23/strided_slice/stack_2
(lstm_13/while/lstm_cell_23/strided_sliceStridedSlice1lstm_13/while/lstm_cell_23/ReadVariableOp:value:07lstm_13/while/lstm_cell_23/strided_slice/stack:output:09lstm_13/while/lstm_cell_23/strided_slice/stack_1:output:09lstm_13/while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2*
(lstm_13/while/lstm_cell_23/strided_sliceп
#lstm_13/while/lstm_cell_23/MatMul_4MatMul$lstm_13/while/lstm_cell_23/mul_4:z:01lstm_13/while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_4з
lstm_13/while/lstm_cell_23/addAddV2+lstm_13/while/lstm_cell_23/BiasAdd:output:0-lstm_13/while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/while/lstm_cell_23/addЉ
"lstm_13/while/lstm_cell_23/SigmoidSigmoid"lstm_13/while/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/while/lstm_cell_23/Sigmoidа
+lstm_13/while/lstm_cell_23/ReadVariableOp_1ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_1Е
0lstm_13/while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_13/while/lstm_cell_23/strided_slice_1/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   24
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_1StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_1:value:09lstm_13/while/lstm_cell_23/strided_slice_1/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_1/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_1с
#lstm_13/while/lstm_cell_23/MatMul_5MatMul$lstm_13/while/lstm_cell_23/mul_5:z:03lstm_13/while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_5н
 lstm_13/while/lstm_cell_23/add_1AddV2-lstm_13/while/lstm_cell_23/BiasAdd_1:output:0-lstm_13/while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_1Џ
$lstm_13/while/lstm_cell_23/Sigmoid_1Sigmoid$lstm_13/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/Sigmoid_1Ф
 lstm_13/while/lstm_cell_23/mul_8Mul(lstm_13/while/lstm_cell_23/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_8а
+lstm_13/while/lstm_cell_23/ReadVariableOp_2ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_2Е
0lstm_13/while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   22
0lstm_13/while/lstm_cell_23/strided_slice_2/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  24
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_2StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_2:value:09lstm_13/while/lstm_cell_23/strided_slice_2/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_2/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_2с
#lstm_13/while/lstm_cell_23/MatMul_6MatMul$lstm_13/while/lstm_cell_23/mul_6:z:03lstm_13/while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_6н
 lstm_13/while/lstm_cell_23/add_2AddV2-lstm_13/while/lstm_cell_23/BiasAdd_2:output:0-lstm_13/while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_2Ђ
lstm_13/while/lstm_cell_23/TanhTanh$lstm_13/while/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_13/while/lstm_cell_23/TanhЪ
 lstm_13/while/lstm_cell_23/mul_9Mul&lstm_13/while/lstm_cell_23/Sigmoid:y:0#lstm_13/while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_9Ы
 lstm_13/while/lstm_cell_23/add_3AddV2$lstm_13/while/lstm_cell_23/mul_8:z:0$lstm_13/while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_3а
+lstm_13/while/lstm_cell_23/ReadVariableOp_3ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_3Е
0lstm_13/while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  22
0lstm_13/while/lstm_cell_23/strided_slice_3/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_3StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_3:value:09lstm_13/while/lstm_cell_23/strided_slice_3/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_3/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_3с
#lstm_13/while/lstm_cell_23/MatMul_7MatMul$lstm_13/while/lstm_cell_23/mul_7:z:03lstm_13/while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_7н
 lstm_13/while/lstm_cell_23/add_4AddV2-lstm_13/while/lstm_cell_23/BiasAdd_3:output:0-lstm_13/while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_4Џ
$lstm_13/while/lstm_cell_23/Sigmoid_2Sigmoid$lstm_13/while/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/Sigmoid_2І
!lstm_13/while/lstm_cell_23/Tanh_1Tanh$lstm_13/while/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/Tanh_1а
!lstm_13/while/lstm_cell_23/mul_10Mul(lstm_13/while/lstm_cell_23/Sigmoid_2:y:0%lstm_13/while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/mul_10
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder%lstm_13/while/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype024
2lstm_13/while/TensorArrayV2Write/TensorListSetIteml
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add/y
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/addp
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add_1/y
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/add_1
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity­
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_1
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_2С
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_3Е
lstm_13/while/Identity_4Identity%lstm_13/while/lstm_cell_23/mul_10:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/while/Identity_4Д
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_23/add_3:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/while/Identity_5"9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"j
2lstm_13_while_lstm_cell_23_readvariableop_resource4lstm_13_while_lstm_cell_23_readvariableop_resource_0"z
:lstm_13_while_lstm_cell_23_split_1_readvariableop_resource<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0"v
8lstm_13_while_lstm_cell_23_split_readvariableop_resource:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0"Ш
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2V
)lstm_13/while/lstm_cell_23/ReadVariableOp)lstm_13/while/lstm_cell_23/ReadVariableOp2Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_1+lstm_13/while/lstm_cell_23/ReadVariableOp_12Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_2+lstm_13/while/lstm_cell_23/ReadVariableOp_22Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_3+lstm_13/while/lstm_cell_23/ReadVariableOp_32b
/lstm_13/while/lstm_cell_23/split/ReadVariableOp/lstm_13/while/lstm_cell_23/split/ReadVariableOp2f
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ёј
в
while_body_460239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
 while/lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_23/dropout/ConstЫ
while/lstm_cell_23/dropout/MulMul%while/lstm_cell_23/ones_like:output:0)while/lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
while/lstm_cell_23/dropout/Mul
 while/lstm_cell_23/dropout/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_23/dropout/Shape
7while/lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЄІ29
7while/lstm_cell_23/dropout/random_uniform/RandomUniform
)while/lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)while/lstm_cell_23/dropout/GreaterEqual/y
'while/lstm_cell_23/dropout/GreaterEqualGreaterEqual@while/lstm_cell_23/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'while/lstm_cell_23/dropout/GreaterEqualИ
while/lstm_cell_23/dropout/CastCast+while/lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22!
while/lstm_cell_23/dropout/CastЦ
 while/lstm_cell_23/dropout/Mul_1Mul"while/lstm_cell_23/dropout/Mul:z:0#while/lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout/Mul_1
"while/lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_1/Constб
 while/lstm_cell_23/dropout_1/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_1/Mul
"while/lstm_cell_23/dropout_1/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_1/Shape
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2Р2;
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_1/GreaterEqual/y
)while/lstm_cell_23/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_1/GreaterEqualО
!while/lstm_cell_23/dropout_1/CastCast-while/lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_1/CastЮ
"while/lstm_cell_23/dropout_1/Mul_1Mul$while/lstm_cell_23/dropout_1/Mul:z:0%while/lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_1/Mul_1
"while/lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_2/Constб
 while/lstm_cell_23/dropout_2/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_2/Mul
"while/lstm_cell_23/dropout_2/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_2/Shape
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2щІ2;
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_2/GreaterEqual/y
)while/lstm_cell_23/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_2/GreaterEqualО
!while/lstm_cell_23/dropout_2/CastCast-while/lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_2/CastЮ
"while/lstm_cell_23/dropout_2/Mul_1Mul$while/lstm_cell_23/dropout_2/Mul:z:0%while/lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_2/Mul_1
"while/lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_3/Constб
 while/lstm_cell_23/dropout_3/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_3/Mul
"while/lstm_cell_23/dropout_3/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_3/Shape
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ћТз2;
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_3/GreaterEqual/y
)while/lstm_cell_23/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_3/GreaterEqualО
!while/lstm_cell_23/dropout_3/CastCast-while/lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_3/CastЮ
"while/lstm_cell_23/dropout_3/Mul_1Mul$while/lstm_cell_23/dropout_3/Mul:z:0%while/lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_3/Mul_1
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1
"while/lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_4/Constг
 while/lstm_cell_23/dropout_4/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_4/Mul
"while/lstm_cell_23/dropout_4/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_4/Shape
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ѕ^2;
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_4/GreaterEqual/y
)while/lstm_cell_23/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_4/GreaterEqualО
!while/lstm_cell_23/dropout_4/CastCast-while/lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_4/CastЮ
"while/lstm_cell_23/dropout_4/Mul_1Mul$while/lstm_cell_23/dropout_4/Mul:z:0%while/lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_4/Mul_1
"while/lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_5/Constг
 while/lstm_cell_23/dropout_5/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_5/Mul
"while/lstm_cell_23/dropout_5/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_5/Shape
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ё82;
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_5/GreaterEqual/y
)while/lstm_cell_23/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_5/GreaterEqualО
!while/lstm_cell_23/dropout_5/CastCast-while/lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_5/CastЮ
"while/lstm_cell_23/dropout_5/Mul_1Mul$while/lstm_cell_23/dropout_5/Mul:z:0%while/lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_5/Mul_1
"while/lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_6/Constг
 while/lstm_cell_23/dropout_6/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_6/Mul
"while/lstm_cell_23/dropout_6/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_6/Shape
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Љ 2;
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_6/GreaterEqual/y
)while/lstm_cell_23/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_6/GreaterEqualО
!while/lstm_cell_23/dropout_6/CastCast-while/lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_6/CastЮ
"while/lstm_cell_23/dropout_6/Mul_1Mul$while/lstm_cell_23/dropout_6/Mul:z:0%while/lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_6/Mul_1
"while/lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_7/Constг
 while/lstm_cell_23/dropout_7/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_7/Mul
"while/lstm_cell_23/dropout_7/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_7/Shape
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2­оЋ2;
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_7/GreaterEqual/y
)while/lstm_cell_23/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_7/GreaterEqualО
!while/lstm_cell_23/dropout_7/CastCast-while/lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_7/CastЮ
"while/lstm_cell_23/dropout_7/Mul_1Mul$while/lstm_cell_23/dropout_7/Mul:z:0%while/lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_7/Mul_1С
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЧ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ч
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ч
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Њ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2&while/lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Њ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2&while/lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Њ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2&while/lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Њ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2&while/lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

в
while_body_462844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1Т
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЦ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ц
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ц
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Ћ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Ћ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Ћ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Ћ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 

Щ
-__inference_sequential_8_layer_call_fn_460810
embedding_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_4607952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
ВN

H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_459489

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_10и
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityм

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1л

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates

Щ
-__inference_sequential_8_layer_call_fn_460847
embedding_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_4608322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
В
О
C__inference_lstm_13_layer_call_and_return_conditional_losses_460694

inputs.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460558*
condR
while_cond_460557*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
лD
м
C__inference_lstm_13_layer_call_and_return_conditional_losses_459852

inputs
lstm_cell_23_459770
lstm_cell_23_459772
lstm_cell_23_459774
identityЂ$lstm_cell_23/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_459770lstm_cell_23_459772lstm_cell_23_459774*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594052&
$lstm_cell_23/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЃ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_459770lstm_cell_23_459772lstm_cell_23_459774*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_459783*
condR
while_cond_459782*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_23/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
%

while_body_459915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_23_459939_0
while_lstm_cell_23_459941_0
while_lstm_cell_23_459943_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_23_459939
while_lstm_cell_23_459941
while_lstm_cell_23_459943Ђ*while/lstm_cell_23/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_459939_0while_lstm_cell_23_459941_0while_lstm_cell_23_459943_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594892,
*while/lstm_cell_23/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2К
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ф
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1+^while/lstm_cell_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Ф
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2+^while/lstm_cell_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_459939while_lstm_cell_23_459939_0"8
while_lstm_cell_23_459941while_lstm_cell_23_459941_0"8
while_lstm_cell_23_459943while_lstm_cell_23_459943_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Њ
m
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_459214

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ь
љ
H__inference_sequential_8_layer_call_and_return_conditional_losses_461557

inputs'
#embedding_8_embedding_lookup_4612926
2lstm_13_lstm_cell_23_split_readvariableop_resource8
4lstm_13_lstm_cell_23_split_1_readvariableop_resource0
,lstm_13_lstm_cell_23_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource
identityЂdense_19/BiasAdd/ReadVariableOpЂdense_19/MatMul/ReadVariableOpЂembedding_8/embedding_lookupЂ#lstm_13/lstm_cell_23/ReadVariableOpЂ%lstm_13/lstm_cell_23/ReadVariableOp_1Ђ%lstm_13/lstm_cell_23/ReadVariableOp_2Ђ%lstm_13/lstm_cell_23/ReadVariableOp_3Ђ)lstm_13/lstm_cell_23/split/ReadVariableOpЂ+lstm_13/lstm_cell_23/split_1/ReadVariableOpЂlstm_13/whileu
embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP2
embedding_8/CastЙ
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_461292embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/461292*+
_output_shapes
:џџџџџџџџџP2*
dtype02
embedding_8/embedding_lookup
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/461292*+
_output_shapes
:џџџџџџџџџP22'
%embedding_8/embedding_lookup/IdentityФ
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22)
'embedding_8/embedding_lookup/Identity_1А
spatial_dropout1d_8/IdentityIdentity0embedding_8/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22
spatial_dropout1d_8/Identitys
lstm_13/ShapeShape%spatial_dropout1d_8/Identity:output:0*
T0*
_output_shapes
:2
lstm_13/Shape
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice/stack
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_1
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_2
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slicel
lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros/mul/y
lstm_13/zeros/mulMullstm_13/strided_slice:output:0lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/mulo
lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_13/zeros/Less/y
lstm_13/zeros/LessLesslstm_13/zeros/mul:z:0lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/Lessr
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros/packed/1Ѓ
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros/packedo
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros/Const
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/zerosp
lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros_1/mul/y
lstm_13/zeros_1/mulMullstm_13/strided_slice:output:0lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/muls
lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_13/zeros_1/Less/y
lstm_13/zeros_1/LessLesslstm_13/zeros_1/mul:z:0lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/Lessv
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros_1/packed/1Љ
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros_1/packeds
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros_1/Const
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/zeros_1
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose/permБ
lstm_13/transpose	Transpose%spatial_dropout1d_8/Identity:output:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
lstm_13/transposeg
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:2
lstm_13/Shape_1
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_1/stack
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_1
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_2
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slice_1
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#lstm_13/TensorArrayV2/element_shapeв
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2Я
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2?
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_13/TensorArrayUnstack/TensorListFromTensor
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_2/stack
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_1
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_2Ќ
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
lstm_13/strided_slice_2
$lstm_13/lstm_cell_23/ones_like/ShapeShape lstm_13/strided_slice_2:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/ones_like/Shape
$lstm_13/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_13/lstm_cell_23/ones_like/Constи
lstm_13/lstm_cell_23/ones_likeFill-lstm_13/lstm_cell_23/ones_like/Shape:output:0-lstm_13/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
lstm_13/lstm_cell_23/ones_like
&lstm_13/lstm_cell_23/ones_like_1/ShapeShapelstm_13/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_13/lstm_cell_23/ones_like_1/Shape
&lstm_13/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_13/lstm_cell_23/ones_like_1/Constр
 lstm_13/lstm_cell_23/ones_like_1Fill/lstm_13/lstm_cell_23/ones_like_1/Shape:output:0/lstm_13/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/lstm_cell_23/ones_like_1И
lstm_13/lstm_cell_23/mulMul lstm_13/strided_slice_2:output:0'lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mulМ
lstm_13/lstm_cell_23/mul_1Mul lstm_13/strided_slice_2:output:0'lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_1М
lstm_13/lstm_cell_23/mul_2Mul lstm_13/strided_slice_2:output:0'lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_2М
lstm_13/lstm_cell_23/mul_3Mul lstm_13/strided_slice_2:output:0'lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_3z
lstm_13/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/lstm_cell_23/Const
$lstm_13/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_13/lstm_cell_23/split/split_dimЪ
)lstm_13/lstm_cell_23/split/ReadVariableOpReadVariableOp2lstm_13_lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02+
)lstm_13/lstm_cell_23/split/ReadVariableOpћ
lstm_13/lstm_cell_23/splitSplit-lstm_13/lstm_cell_23/split/split_dim:output:01lstm_13/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_13/lstm_cell_23/splitЙ
lstm_13/lstm_cell_23/MatMulMatMullstm_13/lstm_cell_23/mul:z:0#lstm_13/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMulП
lstm_13/lstm_cell_23/MatMul_1MatMullstm_13/lstm_cell_23/mul_1:z:0#lstm_13/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_1П
lstm_13/lstm_cell_23/MatMul_2MatMullstm_13/lstm_cell_23/mul_2:z:0#lstm_13/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_2П
lstm_13/lstm_cell_23/MatMul_3MatMullstm_13/lstm_cell_23/mul_3:z:0#lstm_13/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_3~
lstm_13/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/lstm_cell_23/Const_1
&lstm_13/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_13/lstm_cell_23/split_1/split_dimЬ
+lstm_13/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_13/lstm_cell_23/split_1/ReadVariableOpѓ
lstm_13/lstm_cell_23/split_1Split/lstm_13/lstm_cell_23/split_1/split_dim:output:03lstm_13/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_13/lstm_cell_23/split_1Ч
lstm_13/lstm_cell_23/BiasAddBiasAdd%lstm_13/lstm_cell_23/MatMul:product:0%lstm_13/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/BiasAddЭ
lstm_13/lstm_cell_23/BiasAdd_1BiasAdd'lstm_13/lstm_cell_23/MatMul_1:product:0%lstm_13/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_1Э
lstm_13/lstm_cell_23/BiasAdd_2BiasAdd'lstm_13/lstm_cell_23/MatMul_2:product:0%lstm_13/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_2Э
lstm_13/lstm_cell_23/BiasAdd_3BiasAdd'lstm_13/lstm_cell_23/MatMul_3:product:0%lstm_13/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_3Д
lstm_13/lstm_cell_23/mul_4Mullstm_13/zeros:output:0)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_4Д
lstm_13/lstm_cell_23/mul_5Mullstm_13/zeros:output:0)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_5Д
lstm_13/lstm_cell_23/mul_6Mullstm_13/zeros:output:0)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_6Д
lstm_13/lstm_cell_23/mul_7Mullstm_13/zeros:output:0)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_7И
#lstm_13/lstm_cell_23/ReadVariableOpReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_13/lstm_cell_23/ReadVariableOpЅ
(lstm_13/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_13/lstm_cell_23/strided_slice/stackЉ
*lstm_13/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_13/lstm_cell_23/strided_slice/stack_1Љ
*lstm_13/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_13/lstm_cell_23/strided_slice/stack_2њ
"lstm_13/lstm_cell_23/strided_sliceStridedSlice+lstm_13/lstm_cell_23/ReadVariableOp:value:01lstm_13/lstm_cell_23/strided_slice/stack:output:03lstm_13/lstm_cell_23/strided_slice/stack_1:output:03lstm_13/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"lstm_13/lstm_cell_23/strided_sliceЧ
lstm_13/lstm_cell_23/MatMul_4MatMullstm_13/lstm_cell_23/mul_4:z:0+lstm_13/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_4П
lstm_13/lstm_cell_23/addAddV2%lstm_13/lstm_cell_23/BiasAdd:output:0'lstm_13/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add
lstm_13/lstm_cell_23/SigmoidSigmoidlstm_13/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/SigmoidМ
%lstm_13/lstm_cell_23/ReadVariableOp_1ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_1Љ
*lstm_13/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_13/lstm_cell_23/strided_slice_1/stack­
,lstm_13/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2.
,lstm_13/lstm_cell_23/strided_slice_1/stack_1­
,lstm_13/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_1/stack_2
$lstm_13/lstm_cell_23/strided_slice_1StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_1:value:03lstm_13/lstm_cell_23/strided_slice_1/stack:output:05lstm_13/lstm_cell_23/strided_slice_1/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_1Щ
lstm_13/lstm_cell_23/MatMul_5MatMullstm_13/lstm_cell_23/mul_5:z:0-lstm_13/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_5Х
lstm_13/lstm_cell_23/add_1AddV2'lstm_13/lstm_cell_23/BiasAdd_1:output:0'lstm_13/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_1
lstm_13/lstm_cell_23/Sigmoid_1Sigmoidlstm_13/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/Sigmoid_1Џ
lstm_13/lstm_cell_23/mul_8Mul"lstm_13/lstm_cell_23/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_8М
%lstm_13/lstm_cell_23/ReadVariableOp_2ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_2Љ
*lstm_13/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*lstm_13/lstm_cell_23/strided_slice_2/stack­
,lstm_13/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2.
,lstm_13/lstm_cell_23/strided_slice_2/stack_1­
,lstm_13/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_2/stack_2
$lstm_13/lstm_cell_23/strided_slice_2StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_2:value:03lstm_13/lstm_cell_23/strided_slice_2/stack:output:05lstm_13/lstm_cell_23/strided_slice_2/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_2Щ
lstm_13/lstm_cell_23/MatMul_6MatMullstm_13/lstm_cell_23/mul_6:z:0-lstm_13/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_6Х
lstm_13/lstm_cell_23/add_2AddV2'lstm_13/lstm_cell_23/BiasAdd_2:output:0'lstm_13/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_2
lstm_13/lstm_cell_23/TanhTanhlstm_13/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/TanhВ
lstm_13/lstm_cell_23/mul_9Mul lstm_13/lstm_cell_23/Sigmoid:y:0lstm_13/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_9Г
lstm_13/lstm_cell_23/add_3AddV2lstm_13/lstm_cell_23/mul_8:z:0lstm_13/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_3М
%lstm_13/lstm_cell_23/ReadVariableOp_3ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_3Љ
*lstm_13/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*lstm_13/lstm_cell_23/strided_slice_3/stack­
,lstm_13/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_13/lstm_cell_23/strided_slice_3/stack_1­
,lstm_13/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_3/stack_2
$lstm_13/lstm_cell_23/strided_slice_3StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_3:value:03lstm_13/lstm_cell_23/strided_slice_3/stack:output:05lstm_13/lstm_cell_23/strided_slice_3/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_3Щ
lstm_13/lstm_cell_23/MatMul_7MatMullstm_13/lstm_cell_23/mul_7:z:0-lstm_13/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_7Х
lstm_13/lstm_cell_23/add_4AddV2'lstm_13/lstm_cell_23/BiasAdd_3:output:0'lstm_13/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_4
lstm_13/lstm_cell_23/Sigmoid_2Sigmoidlstm_13/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/Sigmoid_2
lstm_13/lstm_cell_23/Tanh_1Tanhlstm_13/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/Tanh_1И
lstm_13/lstm_cell_23/mul_10Mul"lstm_13/lstm_cell_23/Sigmoid_2:y:0lstm_13/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_10
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2'
%lstm_13/TensorArrayV2_1/element_shapeи
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2_1^
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/time
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2"
 lstm_13/while/maximum_iterationsz
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/while/loop_counterм
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_13_lstm_cell_23_split_readvariableop_resource4lstm_13_lstm_cell_23_split_1_readvariableop_resource,lstm_13_lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_13_while_body_461414*%
condR
lstm_13_while_cond_461413*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_13/whileХ
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2:
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02,
*lstm_13/TensorArrayV2Stack/TensorListStack
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_13/strided_slice_3/stack
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_13/strided_slice_3/stack_1
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_3/stack_2Ъ
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_13/strided_slice_3
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose_1/permХ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
lstm_13/transpose_1v
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/runtimeЈ
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_19/MatMul/ReadVariableOpЈ
dense_19/MatMulMatMul lstm_13/strided_slice_3:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/MatMulЇ
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOpЅ
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/BiasAdd|
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/Softmaxи
IdentityIdentitydense_19/Softmax:softmax:0 ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp^embedding_8/embedding_lookup$^lstm_13/lstm_cell_23/ReadVariableOp&^lstm_13/lstm_cell_23/ReadVariableOp_1&^lstm_13/lstm_cell_23/ReadVariableOp_2&^lstm_13/lstm_cell_23/ReadVariableOp_3*^lstm_13/lstm_cell_23/split/ReadVariableOp,^lstm_13/lstm_cell_23/split_1/ReadVariableOp^lstm_13/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2J
#lstm_13/lstm_cell_23/ReadVariableOp#lstm_13/lstm_cell_23/ReadVariableOp2N
%lstm_13/lstm_cell_23/ReadVariableOp_1%lstm_13/lstm_cell_23/ReadVariableOp_12N
%lstm_13/lstm_cell_23/ReadVariableOp_2%lstm_13/lstm_cell_23/ReadVariableOp_22N
%lstm_13/lstm_cell_23/ReadVariableOp_3%lstm_13/lstm_cell_23/ReadVariableOp_32V
)lstm_13/lstm_cell_23/split/ReadVariableOp)lstm_13/lstm_cell_23/split/ReadVariableOp2Z
+lstm_13/lstm_cell_23/split_1/ReadVariableOp+lstm_13/lstm_cell_23/split_1/ReadVariableOp2
lstm_13/whilelstm_13/while:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs
Ћ
У
while_cond_459914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_459914___redundant_placeholder04
0while_while_cond_459914___redundant_placeholder14
0while_while_cond_459914___redundant_placeholder24
0while_while_cond_459914___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:


(__inference_lstm_13_layer_call_fn_462342

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4606942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
§
а
H__inference_sequential_8_layer_call_and_return_conditional_losses_460832

inputs
embedding_8_460815
lstm_13_460819
lstm_13_460821
lstm_13_460823
dense_19_460826
dense_19_460828
identityЂ dense_19/StatefulPartitionedCallЂ#embedding_8/StatefulPartitionedCallЂlstm_13/StatefulPartitionedCall
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_460815*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_4600072%
#embedding_8/StatefulPartitionedCall
#spatial_dropout1d_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600452%
#spatial_dropout1d_8/PartitionedCallЧ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_8/PartitionedCall:output:0lstm_13_460819lstm_13_460821lstm_13_460823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4606942!
lstm_13/StatefulPartitionedCallЖ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_19_460826dense_19_460828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4607352"
 dense_19/StatefulPartitionedCallш
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs
Ћ
У
while_cond_462183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_462183___redundant_placeholder04
0while_while_cond_462183___redundant_placeholder14
0while_while_cond_462183___redundant_placeholder24
0while_while_cond_462183___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Њ
m
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461672

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
лD
м
C__inference_lstm_13_layer_call_and_return_conditional_losses_459984

inputs
lstm_cell_23_459902
lstm_cell_23_459904
lstm_cell_23_459906
identityЂ$lstm_cell_23/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_459902lstm_cell_23_459904lstm_cell_23_459906*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594892&
$lstm_cell_23/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЃ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_459902lstm_cell_23_459904lstm_cell_23_459906*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_459915*
condR
while_cond_459914*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_23/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs


(__inference_lstm_13_layer_call_fn_462331

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4604392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
їћ
­
!__inference__wrapped_model_459151
embedding_8_input4
0sequential_8_embedding_8_embedding_lookup_458886C
?sequential_8_lstm_13_lstm_cell_23_split_readvariableop_resourceE
Asequential_8_lstm_13_lstm_cell_23_split_1_readvariableop_resource=
9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource8
4sequential_8_dense_19_matmul_readvariableop_resource9
5sequential_8_dense_19_biasadd_readvariableop_resource
identityЂ,sequential_8/dense_19/BiasAdd/ReadVariableOpЂ+sequential_8/dense_19/MatMul/ReadVariableOpЂ)sequential_8/embedding_8/embedding_lookupЂ0sequential_8/lstm_13/lstm_cell_23/ReadVariableOpЂ2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_1Ђ2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_2Ђ2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_3Ђ6sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOpЂ8sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOpЂsequential_8/lstm_13/while
sequential_8/embedding_8/CastCastembedding_8_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP2
sequential_8/embedding_8/Castњ
)sequential_8/embedding_8/embedding_lookupResourceGather0sequential_8_embedding_8_embedding_lookup_458886!sequential_8/embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@sequential_8/embedding_8/embedding_lookup/458886*+
_output_shapes
:џџџџџџџџџP2*
dtype02+
)sequential_8/embedding_8/embedding_lookupб
2sequential_8/embedding_8/embedding_lookup/IdentityIdentity2sequential_8/embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@sequential_8/embedding_8/embedding_lookup/458886*+
_output_shapes
:џџџџџџџџџP224
2sequential_8/embedding_8/embedding_lookup/Identityы
4sequential_8/embedding_8/embedding_lookup/Identity_1Identity;sequential_8/embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP226
4sequential_8/embedding_8/embedding_lookup/Identity_1з
)sequential_8/spatial_dropout1d_8/IdentityIdentity=sequential_8/embedding_8/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22+
)sequential_8/spatial_dropout1d_8/Identity
sequential_8/lstm_13/ShapeShape2sequential_8/spatial_dropout1d_8/Identity:output:0*
T0*
_output_shapes
:2
sequential_8/lstm_13/Shape
(sequential_8/lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_8/lstm_13/strided_slice/stackЂ
*sequential_8/lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_8/lstm_13/strided_slice/stack_1Ђ
*sequential_8/lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_8/lstm_13/strided_slice/stack_2р
"sequential_8/lstm_13/strided_sliceStridedSlice#sequential_8/lstm_13/Shape:output:01sequential_8/lstm_13/strided_slice/stack:output:03sequential_8/lstm_13/strided_slice/stack_1:output:03sequential_8/lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_8/lstm_13/strided_slice
 sequential_8/lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2"
 sequential_8/lstm_13/zeros/mul/yР
sequential_8/lstm_13/zeros/mulMul+sequential_8/lstm_13/strided_slice:output:0)sequential_8/lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_8/lstm_13/zeros/mul
!sequential_8/lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2#
!sequential_8/lstm_13/zeros/Less/yЛ
sequential_8/lstm_13/zeros/LessLess"sequential_8/lstm_13/zeros/mul:z:0*sequential_8/lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_8/lstm_13/zeros/Less
#sequential_8/lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2%
#sequential_8/lstm_13/zeros/packed/1з
!sequential_8/lstm_13/zeros/packedPack+sequential_8/lstm_13/strided_slice:output:0,sequential_8/lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_8/lstm_13/zeros/packed
 sequential_8/lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_8/lstm_13/zeros/ConstЩ
sequential_8/lstm_13/zerosFill*sequential_8/lstm_13/zeros/packed:output:0)sequential_8/lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_8/lstm_13/zeros
"sequential_8/lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2$
"sequential_8/lstm_13/zeros_1/mul/yЦ
 sequential_8/lstm_13/zeros_1/mulMul+sequential_8/lstm_13/strided_slice:output:0+sequential_8/lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_8/lstm_13/zeros_1/mul
#sequential_8/lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2%
#sequential_8/lstm_13/zeros_1/Less/yУ
!sequential_8/lstm_13/zeros_1/LessLess$sequential_8/lstm_13/zeros_1/mul:z:0,sequential_8/lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_8/lstm_13/zeros_1/Less
%sequential_8/lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2'
%sequential_8/lstm_13/zeros_1/packed/1н
#sequential_8/lstm_13/zeros_1/packedPack+sequential_8/lstm_13/strided_slice:output:0.sequential_8/lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_8/lstm_13/zeros_1/packed
"sequential_8/lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_8/lstm_13/zeros_1/Constб
sequential_8/lstm_13/zeros_1Fill,sequential_8/lstm_13/zeros_1/packed:output:0+sequential_8/lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
sequential_8/lstm_13/zeros_1
#sequential_8/lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_8/lstm_13/transpose/permх
sequential_8/lstm_13/transpose	Transpose2sequential_8/spatial_dropout1d_8/Identity:output:0,sequential_8/lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22 
sequential_8/lstm_13/transpose
sequential_8/lstm_13/Shape_1Shape"sequential_8/lstm_13/transpose:y:0*
T0*
_output_shapes
:2
sequential_8/lstm_13/Shape_1Ђ
*sequential_8/lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_8/lstm_13/strided_slice_1/stackІ
,sequential_8/lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_13/strided_slice_1/stack_1І
,sequential_8/lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_13/strided_slice_1/stack_2ь
$sequential_8/lstm_13/strided_slice_1StridedSlice%sequential_8/lstm_13/Shape_1:output:03sequential_8/lstm_13/strided_slice_1/stack:output:05sequential_8/lstm_13/strided_slice_1/stack_1:output:05sequential_8/lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_8/lstm_13/strided_slice_1Џ
0sequential_8/lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ22
0sequential_8/lstm_13/TensorArrayV2/element_shape
"sequential_8/lstm_13/TensorArrayV2TensorListReserve9sequential_8/lstm_13/TensorArrayV2/element_shape:output:0-sequential_8/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_8/lstm_13/TensorArrayV2щ
Jsequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2L
Jsequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
<sequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_8/lstm_13/transpose:y:0Ssequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensorЂ
*sequential_8/lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_8/lstm_13/strided_slice_2/stackІ
,sequential_8/lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_13/strided_slice_2/stack_1І
,sequential_8/lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_13/strided_slice_2/stack_2њ
$sequential_8/lstm_13/strided_slice_2StridedSlice"sequential_8/lstm_13/transpose:y:03sequential_8/lstm_13/strided_slice_2/stack:output:05sequential_8/lstm_13/strided_slice_2/stack_1:output:05sequential_8/lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2&
$sequential_8/lstm_13/strided_slice_2У
1sequential_8/lstm_13/lstm_cell_23/ones_like/ShapeShape-sequential_8/lstm_13/strided_slice_2:output:0*
T0*
_output_shapes
:23
1sequential_8/lstm_13/lstm_cell_23/ones_like/ShapeЋ
1sequential_8/lstm_13/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_8/lstm_13/lstm_cell_23/ones_like/Const
+sequential_8/lstm_13/lstm_cell_23/ones_likeFill:sequential_8/lstm_13/lstm_cell_23/ones_like/Shape:output:0:sequential_8/lstm_13/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+sequential_8/lstm_13/lstm_cell_23/ones_likeН
3sequential_8/lstm_13/lstm_cell_23/ones_like_1/ShapeShape#sequential_8/lstm_13/zeros:output:0*
T0*
_output_shapes
:25
3sequential_8/lstm_13/lstm_cell_23/ones_like_1/ShapeЏ
3sequential_8/lstm_13/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?25
3sequential_8/lstm_13/lstm_cell_23/ones_like_1/Const
-sequential_8/lstm_13/lstm_cell_23/ones_like_1Fill<sequential_8/lstm_13/lstm_cell_23/ones_like_1/Shape:output:0<sequential_8/lstm_13/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2/
-sequential_8/lstm_13/lstm_cell_23/ones_like_1ь
%sequential_8/lstm_13/lstm_cell_23/mulMul-sequential_8/lstm_13/strided_slice_2:output:04sequential_8/lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%sequential_8/lstm_13/lstm_cell_23/mul№
'sequential_8/lstm_13/lstm_cell_23/mul_1Mul-sequential_8/lstm_13/strided_slice_2:output:04sequential_8/lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'sequential_8/lstm_13/lstm_cell_23/mul_1№
'sequential_8/lstm_13/lstm_cell_23/mul_2Mul-sequential_8/lstm_13/strided_slice_2:output:04sequential_8/lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'sequential_8/lstm_13/lstm_cell_23/mul_2№
'sequential_8/lstm_13/lstm_cell_23/mul_3Mul-sequential_8/lstm_13/strided_slice_2:output:04sequential_8/lstm_13/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'sequential_8/lstm_13/lstm_cell_23/mul_3
'sequential_8/lstm_13/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/lstm_13/lstm_cell_23/ConstЈ
1sequential_8/lstm_13/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_8/lstm_13/lstm_cell_23/split/split_dimё
6sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOpReadVariableOp?sequential_8_lstm_13_lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype028
6sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOpЏ
'sequential_8/lstm_13/lstm_cell_23/splitSplit:sequential_8/lstm_13/lstm_cell_23/split/split_dim:output:0>sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2)
'sequential_8/lstm_13/lstm_cell_23/splitэ
(sequential_8/lstm_13/lstm_cell_23/MatMulMatMul)sequential_8/lstm_13/lstm_cell_23/mul:z:00sequential_8/lstm_13/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(sequential_8/lstm_13/lstm_cell_23/MatMulѓ
*sequential_8/lstm_13/lstm_cell_23/MatMul_1MatMul+sequential_8/lstm_13/lstm_cell_23/mul_1:z:00sequential_8/lstm_13/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_1ѓ
*sequential_8/lstm_13/lstm_cell_23/MatMul_2MatMul+sequential_8/lstm_13/lstm_cell_23/mul_2:z:00sequential_8/lstm_13/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_2ѓ
*sequential_8/lstm_13/lstm_cell_23/MatMul_3MatMul+sequential_8/lstm_13/lstm_cell_23/mul_3:z:00sequential_8/lstm_13/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_3
)sequential_8/lstm_13/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_8/lstm_13/lstm_cell_23/Const_1Ќ
3sequential_8/lstm_13/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3sequential_8/lstm_13/lstm_cell_23/split_1/split_dimѓ
8sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOpReadVariableOpAsequential_8_lstm_13_lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOpЇ
)sequential_8/lstm_13/lstm_cell_23/split_1Split<sequential_8/lstm_13/lstm_cell_23/split_1/split_dim:output:0@sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2+
)sequential_8/lstm_13/lstm_cell_23/split_1ћ
)sequential_8/lstm_13/lstm_cell_23/BiasAddBiasAdd2sequential_8/lstm_13/lstm_cell_23/MatMul:product:02sequential_8/lstm_13/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_8/lstm_13/lstm_cell_23/BiasAdd
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_1BiasAdd4sequential_8/lstm_13/lstm_cell_23/MatMul_1:product:02sequential_8/lstm_13/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_1
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_2BiasAdd4sequential_8/lstm_13/lstm_cell_23/MatMul_2:product:02sequential_8/lstm_13/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_2
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_3BiasAdd4sequential_8/lstm_13/lstm_cell_23/MatMul_3:product:02sequential_8/lstm_13/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/lstm_cell_23/BiasAdd_3ш
'sequential_8/lstm_13/lstm_cell_23/mul_4Mul#sequential_8/lstm_13/zeros:output:06sequential_8/lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_4ш
'sequential_8/lstm_13/lstm_cell_23/mul_5Mul#sequential_8/lstm_13/zeros:output:06sequential_8/lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_5ш
'sequential_8/lstm_13/lstm_cell_23/mul_6Mul#sequential_8/lstm_13/zeros:output:06sequential_8/lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_6ш
'sequential_8/lstm_13/lstm_cell_23/mul_7Mul#sequential_8/lstm_13/zeros:output:06sequential_8/lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_7п
0sequential_8/lstm_13/lstm_cell_23/ReadVariableOpReadVariableOp9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype022
0sequential_8/lstm_13/lstm_cell_23/ReadVariableOpП
5sequential_8/lstm_13/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_8/lstm_13/lstm_cell_23/strided_slice/stackУ
7sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   29
7sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_1У
7sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_2Ш
/sequential_8/lstm_13/lstm_cell_23/strided_sliceStridedSlice8sequential_8/lstm_13/lstm_cell_23/ReadVariableOp:value:0>sequential_8/lstm_13/lstm_cell_23/strided_slice/stack:output:0@sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_1:output:0@sequential_8/lstm_13/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask21
/sequential_8/lstm_13/lstm_cell_23/strided_sliceћ
*sequential_8/lstm_13/lstm_cell_23/MatMul_4MatMul+sequential_8/lstm_13/lstm_cell_23/mul_4:z:08sequential_8/lstm_13/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_4ѓ
%sequential_8/lstm_13/lstm_cell_23/addAddV22sequential_8/lstm_13/lstm_cell_23/BiasAdd:output:04sequential_8/lstm_13/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2'
%sequential_8/lstm_13/lstm_cell_23/addО
)sequential_8/lstm_13/lstm_cell_23/SigmoidSigmoid)sequential_8/lstm_13/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)sequential_8/lstm_13/lstm_cell_23/Sigmoidу
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_1ReadVariableOp9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype024
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_1У
7sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stackЧ
9sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_1Ч
9sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_2д
1sequential_8/lstm_13/lstm_cell_23/strided_slice_1StridedSlice:sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_1:value:0@sequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_1:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask23
1sequential_8/lstm_13/lstm_cell_23/strided_slice_1§
*sequential_8/lstm_13/lstm_cell_23/MatMul_5MatMul+sequential_8/lstm_13/lstm_cell_23/mul_5:z:0:sequential_8/lstm_13/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_5љ
'sequential_8/lstm_13/lstm_cell_23/add_1AddV24sequential_8/lstm_13/lstm_cell_23/BiasAdd_1:output:04sequential_8/lstm_13/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/add_1Ф
+sequential_8/lstm_13/lstm_cell_23/Sigmoid_1Sigmoid+sequential_8/lstm_13/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/lstm_cell_23/Sigmoid_1у
'sequential_8/lstm_13/lstm_cell_23/mul_8Mul/sequential_8/lstm_13/lstm_cell_23/Sigmoid_1:y:0%sequential_8/lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_8у
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_2ReadVariableOp9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype024
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_2У
7sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   29
7sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stackЧ
9sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_1Ч
9sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_2д
1sequential_8/lstm_13/lstm_cell_23/strided_slice_2StridedSlice:sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_2:value:0@sequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_1:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask23
1sequential_8/lstm_13/lstm_cell_23/strided_slice_2§
*sequential_8/lstm_13/lstm_cell_23/MatMul_6MatMul+sequential_8/lstm_13/lstm_cell_23/mul_6:z:0:sequential_8/lstm_13/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_6љ
'sequential_8/lstm_13/lstm_cell_23/add_2AddV24sequential_8/lstm_13/lstm_cell_23/BiasAdd_2:output:04sequential_8/lstm_13/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/add_2З
&sequential_8/lstm_13/lstm_cell_23/TanhTanh+sequential_8/lstm_13/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&sequential_8/lstm_13/lstm_cell_23/Tanhц
'sequential_8/lstm_13/lstm_cell_23/mul_9Mul-sequential_8/lstm_13/lstm_cell_23/Sigmoid:y:0*sequential_8/lstm_13/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/mul_9ч
'sequential_8/lstm_13/lstm_cell_23/add_3AddV2+sequential_8/lstm_13/lstm_cell_23/mul_8:z:0+sequential_8/lstm_13/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/add_3у
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_3ReadVariableOp9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype024
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_3У
7sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  29
7sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stackЧ
9sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_1Ч
9sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_2д
1sequential_8/lstm_13/lstm_cell_23/strided_slice_3StridedSlice:sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_3:value:0@sequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_1:output:0Bsequential_8/lstm_13/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask23
1sequential_8/lstm_13/lstm_cell_23/strided_slice_3§
*sequential_8/lstm_13/lstm_cell_23/MatMul_7MatMul+sequential_8/lstm_13/lstm_cell_23/mul_7:z:0:sequential_8/lstm_13/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2,
*sequential_8/lstm_13/lstm_cell_23/MatMul_7љ
'sequential_8/lstm_13/lstm_cell_23/add_4AddV24sequential_8/lstm_13/lstm_cell_23/BiasAdd_3:output:04sequential_8/lstm_13/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2)
'sequential_8/lstm_13/lstm_cell_23/add_4Ф
+sequential_8/lstm_13/lstm_cell_23/Sigmoid_2Sigmoid+sequential_8/lstm_13/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+sequential_8/lstm_13/lstm_cell_23/Sigmoid_2Л
(sequential_8/lstm_13/lstm_cell_23/Tanh_1Tanh+sequential_8/lstm_13/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(sequential_8/lstm_13/lstm_cell_23/Tanh_1ь
(sequential_8/lstm_13/lstm_cell_23/mul_10Mul/sequential_8/lstm_13/lstm_cell_23/Sigmoid_2:y:0,sequential_8/lstm_13/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2*
(sequential_8/lstm_13/lstm_cell_23/mul_10Й
2sequential_8/lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   24
2sequential_8/lstm_13/TensorArrayV2_1/element_shape
$sequential_8/lstm_13/TensorArrayV2_1TensorListReserve;sequential_8/lstm_13/TensorArrayV2_1/element_shape:output:0-sequential_8/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_8/lstm_13/TensorArrayV2_1x
sequential_8/lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_8/lstm_13/timeЉ
-sequential_8/lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2/
-sequential_8/lstm_13/while/maximum_iterations
'sequential_8/lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_8/lstm_13/while/loop_counter
sequential_8/lstm_13/whileWhile0sequential_8/lstm_13/while/loop_counter:output:06sequential_8/lstm_13/while/maximum_iterations:output:0"sequential_8/lstm_13/time:output:0-sequential_8/lstm_13/TensorArrayV2_1:handle:0#sequential_8/lstm_13/zeros:output:0%sequential_8/lstm_13/zeros_1:output:0-sequential_8/lstm_13/strided_slice_1:output:0Lsequential_8/lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_8_lstm_13_lstm_cell_23_split_readvariableop_resourceAsequential_8_lstm_13_lstm_cell_23_split_1_readvariableop_resource9sequential_8_lstm_13_lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_8_lstm_13_while_body_459008*2
cond*R(
&sequential_8_lstm_13_while_cond_459007*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
sequential_8/lstm_13/whileп
Esequential_8/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2G
Esequential_8/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeМ
7sequential_8/lstm_13/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_8/lstm_13/while:output:3Nsequential_8/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype029
7sequential_8/lstm_13/TensorArrayV2Stack/TensorListStackЋ
*sequential_8/lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2,
*sequential_8/lstm_13/strided_slice_3/stackІ
,sequential_8/lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_8/lstm_13/strided_slice_3/stack_1І
,sequential_8/lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_13/strided_slice_3/stack_2
$sequential_8/lstm_13/strided_slice_3StridedSlice@sequential_8/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/lstm_13/strided_slice_3/stack:output:05sequential_8/lstm_13/strided_slice_3/stack_1:output:05sequential_8/lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2&
$sequential_8/lstm_13/strided_slice_3Ѓ
%sequential_8/lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_8/lstm_13/transpose_1/permљ
 sequential_8/lstm_13/transpose_1	Transpose@sequential_8/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_8/lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2"
 sequential_8/lstm_13/transpose_1
sequential_8/lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_8/lstm_13/runtimeЯ
+sequential_8/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_19_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02-
+sequential_8/dense_19/MatMul/ReadVariableOpм
sequential_8/dense_19/MatMulMatMul-sequential_8/lstm_13/strided_slice_3:output:03sequential_8/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_8/dense_19/MatMulЮ
,sequential_8/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_8/dense_19/BiasAdd/ReadVariableOpй
sequential_8/dense_19/BiasAddBiasAdd&sequential_8/dense_19/MatMul:product:04sequential_8/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_8/dense_19/BiasAddЃ
sequential_8/dense_19/SoftmaxSoftmax&sequential_8/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_8/dense_19/Softmaxч
IdentityIdentity'sequential_8/dense_19/Softmax:softmax:0-^sequential_8/dense_19/BiasAdd/ReadVariableOp,^sequential_8/dense_19/MatMul/ReadVariableOp*^sequential_8/embedding_8/embedding_lookup1^sequential_8/lstm_13/lstm_cell_23/ReadVariableOp3^sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_13^sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_23^sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_37^sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOp9^sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOp^sequential_8/lstm_13/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2\
,sequential_8/dense_19/BiasAdd/ReadVariableOp,sequential_8/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_19/MatMul/ReadVariableOp+sequential_8/dense_19/MatMul/ReadVariableOp2V
)sequential_8/embedding_8/embedding_lookup)sequential_8/embedding_8/embedding_lookup2d
0sequential_8/lstm_13/lstm_cell_23/ReadVariableOp0sequential_8/lstm_13/lstm_cell_23/ReadVariableOp2h
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_12sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_12h
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_22sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_22h
2sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_32sequential_8/lstm_13/lstm_cell_23/ReadVariableOp_32p
6sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOp6sequential_8/lstm_13/lstm_cell_23/split/ReadVariableOp2t
8sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOp8sequential_8/lstm_13/lstm_cell_23/split_1/ReadVariableOp28
sequential_8/lstm_13/whilesequential_8/lstm_13/while:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
ёј
в
while_body_462525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
 while/lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_23/dropout/ConstЫ
while/lstm_cell_23/dropout/MulMul%while/lstm_cell_23/ones_like:output:0)while/lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
while/lstm_cell_23/dropout/Mul
 while/lstm_cell_23/dropout/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_23/dropout/Shape
7while/lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2зу29
7while/lstm_cell_23/dropout/random_uniform/RandomUniform
)while/lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)while/lstm_cell_23/dropout/GreaterEqual/y
'while/lstm_cell_23/dropout/GreaterEqualGreaterEqual@while/lstm_cell_23/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22)
'while/lstm_cell_23/dropout/GreaterEqualИ
while/lstm_cell_23/dropout/CastCast+while/lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22!
while/lstm_cell_23/dropout/CastЦ
 while/lstm_cell_23/dropout/Mul_1Mul"while/lstm_cell_23/dropout/Mul:z:0#while/lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout/Mul_1
"while/lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_1/Constб
 while/lstm_cell_23/dropout_1/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_1/Mul
"while/lstm_cell_23/dropout_1/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_1/Shape
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЕЂЉ2;
9while/lstm_cell_23/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_1/GreaterEqual/y
)while/lstm_cell_23/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_1/GreaterEqualО
!while/lstm_cell_23/dropout_1/CastCast-while/lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_1/CastЮ
"while/lstm_cell_23/dropout_1/Mul_1Mul$while/lstm_cell_23/dropout_1/Mul:z:0%while/lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_1/Mul_1
"while/lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_2/Constб
 while/lstm_cell_23/dropout_2/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_2/Mul
"while/lstm_cell_23/dropout_2/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_2/Shape
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2П2;
9while/lstm_cell_23/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_2/GreaterEqual/y
)while/lstm_cell_23/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_2/GreaterEqualО
!while/lstm_cell_23/dropout_2/CastCast-while/lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_2/CastЮ
"while/lstm_cell_23/dropout_2/Mul_1Mul$while/lstm_cell_23/dropout_2/Mul:z:0%while/lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_2/Mul_1
"while/lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_3/Constб
 while/lstm_cell_23/dropout_3/MulMul%while/lstm_cell_23/ones_like:output:0+while/lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 while/lstm_cell_23/dropout_3/Mul
"while/lstm_cell_23/dropout_3/ShapeShape%while/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_3/Shape
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2Рщ2;
9while/lstm_cell_23/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_3/GreaterEqual/y
)while/lstm_cell_23/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)while/lstm_cell_23/dropout_3/GreaterEqualО
!while/lstm_cell_23/dropout_3/CastCast-while/lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!while/lstm_cell_23/dropout_3/CastЮ
"while/lstm_cell_23/dropout_3/Mul_1Mul$while/lstm_cell_23/dropout_3/Mul:z:0%while/lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"while/lstm_cell_23/dropout_3/Mul_1
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1
"while/lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_4/Constг
 while/lstm_cell_23/dropout_4/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_4/Mul
"while/lstm_cell_23/dropout_4/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_4/Shape
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2г2;
9while/lstm_cell_23/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_4/GreaterEqual/y
)while/lstm_cell_23/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_4/GreaterEqualО
!while/lstm_cell_23/dropout_4/CastCast-while/lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_4/CastЮ
"while/lstm_cell_23/dropout_4/Mul_1Mul$while/lstm_cell_23/dropout_4/Mul:z:0%while/lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_4/Mul_1
"while/lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_5/Constг
 while/lstm_cell_23/dropout_5/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_5/Mul
"while/lstm_cell_23/dropout_5/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_5/Shape
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Нфщ2;
9while/lstm_cell_23/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_5/GreaterEqual/y
)while/lstm_cell_23/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_5/GreaterEqualО
!while/lstm_cell_23/dropout_5/CastCast-while/lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_5/CastЮ
"while/lstm_cell_23/dropout_5/Mul_1Mul$while/lstm_cell_23/dropout_5/Mul:z:0%while/lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_5/Mul_1
"while/lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_6/Constг
 while/lstm_cell_23/dropout_6/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_6/Mul
"while/lstm_cell_23/dropout_6/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_6/Shape
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Пхн2;
9while/lstm_cell_23/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_6/GreaterEqual/y
)while/lstm_cell_23/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_6/GreaterEqualО
!while/lstm_cell_23/dropout_6/CastCast-while/lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_6/CastЮ
"while/lstm_cell_23/dropout_6/Mul_1Mul$while/lstm_cell_23/dropout_6/Mul:z:0%while/lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_6/Mul_1
"while/lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_23/dropout_7/Constг
 while/lstm_cell_23/dropout_7/MulMul'while/lstm_cell_23/ones_like_1:output:0+while/lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 while/lstm_cell_23/dropout_7/Mul
"while/lstm_cell_23/dropout_7/ShapeShape'while/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/dropout_7/Shape
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Т,2;
9while/lstm_cell_23/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+while/lstm_cell_23/dropout_7/GreaterEqual/y
)while/lstm_cell_23/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2+
)while/lstm_cell_23/dropout_7/GreaterEqualО
!while/lstm_cell_23/dropout_7/CastCast-while/lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2#
!while/lstm_cell_23/dropout_7/CastЮ
"while/lstm_cell_23/dropout_7/Mul_1Mul$while/lstm_cell_23/dropout_7/Mul:z:0%while/lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"while/lstm_cell_23/dropout_7/Mul_1С
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЧ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ч
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ч
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Њ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2&while/lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Њ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2&while/lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Њ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2&while/lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Њ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2&while/lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
е
ў
H__inference_sequential_8_layer_call_and_return_conditional_losses_460795

inputs
embedding_8_460778
lstm_13_460782
lstm_13_460784
lstm_13_460786
dense_19_460789
dense_19_460791
identityЂ dense_19/StatefulPartitionedCallЂ#embedding_8/StatefulPartitionedCallЂlstm_13/StatefulPartitionedCallЂ+spatial_dropout1d_8/StatefulPartitionedCall
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_460778*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_4600072%
#embedding_8/StatefulPartitionedCallЗ
+spatial_dropout1d_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600402-
+spatial_dropout1d_8/StatefulPartitionedCallЯ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_8/StatefulPartitionedCall:output:0lstm_13_460782lstm_13_460784lstm_13_460786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4604392!
lstm_13/StatefulPartitionedCallЖ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_19_460789dense_19_460791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4607352"
 dense_19/StatefulPartitionedCall
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall,^spatial_dropout1d_8/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2Z
+spatial_dropout1d_8/StatefulPartitionedCall+spatial_dropout1d_8/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs
м
~
)__inference_dense_19_layer_call_fn_463022

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4607352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ћ
У
while_cond_461864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_461864___redundant_placeholder04
0while_while_cond_461864___redundant_placeholder14
0while_while_cond_461864___redundant_placeholder24
0while_while_cond_461864___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ф
m
4__inference_spatial_dropout1d_8_layer_call_fn_461640

inputs
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Ћ
n
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_459204

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Цt

"__inference__traced_restore_463483
file_prefix+
'assignvariableop_embedding_8_embeddings&
"assignvariableop_1_dense_19_kernel$
 assignvariableop_2_dense_19_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate2
.assignvariableop_8_lstm_13_lstm_cell_23_kernel<
8assignvariableop_9_lstm_13_lstm_cell_23_recurrent_kernel1
-assignvariableop_10_lstm_13_lstm_cell_23_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_8_embeddings_m.
*assignvariableop_16_adam_dense_19_kernel_m,
(assignvariableop_17_adam_dense_19_bias_m:
6assignvariableop_18_adam_lstm_13_lstm_cell_23_kernel_mD
@assignvariableop_19_adam_lstm_13_lstm_cell_23_recurrent_kernel_m8
4assignvariableop_20_adam_lstm_13_lstm_cell_23_bias_m5
1assignvariableop_21_adam_embedding_8_embeddings_v.
*assignvariableop_22_adam_dense_19_kernel_v,
(assignvariableop_23_adam_dense_19_bias_v:
6assignvariableop_24_adam_lstm_13_lstm_cell_23_kernel_vD
@assignvariableop_25_adam_lstm_13_lstm_cell_23_recurrent_kernel_v8
4assignvariableop_26_adam_lstm_13_lstm_cell_23_bias_v
identity_28ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesИ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityІ
AssignVariableOpAssignVariableOp'assignvariableop_embedding_8_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_19_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ѕ
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_19_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3Ё
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѓ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ђ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Њ
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Г
AssignVariableOp_8AssignVariableOp.assignvariableop_8_lstm_13_lstm_cell_23_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Н
AssignVariableOp_9AssignVariableOp8assignvariableop_9_lstm_13_lstm_cell_23_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Е
AssignVariableOp_10AssignVariableOp-assignvariableop_10_lstm_13_lstm_cell_23_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ё
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ё
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѓ
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Й
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_8_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16В
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_19_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17А
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_19_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18О
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_13_lstm_cell_23_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ш
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_13_lstm_cell_23_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20М
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_13_lstm_cell_23_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Й
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_8_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22В
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_19_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_19_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24О
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_13_lstm_cell_23_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ш
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_13_lstm_cell_23_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26М
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_13_lstm_cell_23_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpА
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27Ѓ
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Їћ
Р
C__inference_lstm_13_layer_call_and_return_conditional_losses_462725
inputs_0.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like}
lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout/ConstГ
lstm_cell_23/dropout/MulMullstm_cell_23/ones_like:output:0#lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul
lstm_cell_23/dropout/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout/Shapeњ
1lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2 ЮЂ23
1lstm_cell_23/dropout/random_uniform/RandomUniform
#lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2%
#lstm_cell_23/dropout/GreaterEqual/yђ
!lstm_cell_23/dropout/GreaterEqualGreaterEqual:lstm_cell_23/dropout/random_uniform/RandomUniform:output:0,lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22#
!lstm_cell_23/dropout/GreaterEqualІ
lstm_cell_23/dropout/CastCast%lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/CastЎ
lstm_cell_23/dropout/Mul_1Mullstm_cell_23/dropout/Mul:z:0lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul_1
lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_1/ConstЙ
lstm_cell_23/dropout_1/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul
lstm_cell_23/dropout_1/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_1/Shape
3lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2№25
3lstm_cell_23/dropout_1/random_uniform/RandomUniform
%lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_1/GreaterEqual/yњ
#lstm_cell_23/dropout_1/GreaterEqualGreaterEqual<lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_1/GreaterEqualЌ
lstm_cell_23/dropout_1/CastCast'lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/CastЖ
lstm_cell_23/dropout_1/Mul_1Mullstm_cell_23/dropout_1/Mul:z:0lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul_1
lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_2/ConstЙ
lstm_cell_23/dropout_2/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul
lstm_cell_23/dropout_2/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_2/Shape
3lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2лГЃ25
3lstm_cell_23/dropout_2/random_uniform/RandomUniform
%lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_2/GreaterEqual/yњ
#lstm_cell_23/dropout_2/GreaterEqualGreaterEqual<lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_2/GreaterEqualЌ
lstm_cell_23/dropout_2/CastCast'lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/CastЖ
lstm_cell_23/dropout_2/Mul_1Mullstm_cell_23/dropout_2/Mul:z:0lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul_1
lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_3/ConstЙ
lstm_cell_23/dropout_3/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul
lstm_cell_23/dropout_3/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_3/Shape
3lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2єЦ25
3lstm_cell_23/dropout_3/random_uniform/RandomUniform
%lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_3/GreaterEqual/yњ
#lstm_cell_23/dropout_3/GreaterEqualGreaterEqual<lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_3/GreaterEqualЌ
lstm_cell_23/dropout_3/CastCast'lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/CastЖ
lstm_cell_23/dropout_3/Mul_1Mullstm_cell_23/dropout_3/Mul:z:0lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul_1~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_4/ConstЛ
lstm_cell_23/dropout_4/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul
lstm_cell_23/dropout_4/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_4/Shape
3lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЊеД25
3lstm_cell_23/dropout_4/random_uniform/RandomUniform
%lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_4/GreaterEqual/yњ
#lstm_cell_23/dropout_4/GreaterEqualGreaterEqual<lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_4/GreaterEqualЌ
lstm_cell_23/dropout_4/CastCast'lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/CastЖ
lstm_cell_23/dropout_4/Mul_1Mullstm_cell_23/dropout_4/Mul:z:0lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul_1
lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_5/ConstЛ
lstm_cell_23/dropout_5/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul
lstm_cell_23/dropout_5/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_5/Shape
3lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ФЫ25
3lstm_cell_23/dropout_5/random_uniform/RandomUniform
%lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_5/GreaterEqual/yњ
#lstm_cell_23/dropout_5/GreaterEqualGreaterEqual<lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_5/GreaterEqualЌ
lstm_cell_23/dropout_5/CastCast'lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/CastЖ
lstm_cell_23/dropout_5/Mul_1Mullstm_cell_23/dropout_5/Mul:z:0lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul_1
lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_6/ConstЛ
lstm_cell_23/dropout_6/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul
lstm_cell_23/dropout_6/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_6/Shape
3lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2рЏ25
3lstm_cell_23/dropout_6/random_uniform/RandomUniform
%lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_6/GreaterEqual/yњ
#lstm_cell_23/dropout_6/GreaterEqualGreaterEqual<lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_6/GreaterEqualЌ
lstm_cell_23/dropout_6/CastCast'lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/CastЖ
lstm_cell_23/dropout_6/Mul_1Mullstm_cell_23/dropout_6/Mul:z:0lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul_1
lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_7/ConstЛ
lstm_cell_23/dropout_7/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul
lstm_cell_23/dropout_7/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_7/Shape
3lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЁЇ25
3lstm_cell_23/dropout_7/random_uniform/RandomUniform
%lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_7/GreaterEqual/yњ
#lstm_cell_23/dropout_7/GreaterEqualGreaterEqual<lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_7/GreaterEqualЌ
lstm_cell_23/dropout_7/CastCast'lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/CastЖ
lstm_cell_23/dropout_7/Mul_1Mullstm_cell_23/dropout_7/Mul:z:0lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0 lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0 lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0 lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0 lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0 lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0 lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0 lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_462525*
condR
while_cond_462524*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0

л
H__inference_sequential_8_layer_call_and_return_conditional_losses_460772
embedding_8_input
embedding_8_460755
lstm_13_460759
lstm_13_460761
lstm_13_460763
dense_19_460766
dense_19_460768
identityЂ dense_19/StatefulPartitionedCallЂ#embedding_8/StatefulPartitionedCallЂlstm_13/StatefulPartitionedCall
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputembedding_8_460755*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_4600072%
#embedding_8/StatefulPartitionedCall
#spatial_dropout1d_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600452%
#spatial_dropout1d_8/PartitionedCallЧ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_8/PartitionedCall:output:0lstm_13_460759lstm_13_460761lstm_13_460763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4606942!
lstm_13/StatefulPartitionedCallЖ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_19_460766dense_19_460768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4607352"
 dense_19/StatefulPartitionedCallш
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
%

while_body_459783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_23_459807_0
while_lstm_cell_23_459809_0
while_lstm_cell_23_459811_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_23_459807
while_lstm_cell_23_459809
while_lstm_cell_23_459811Ђ*while/lstm_cell_23/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_459807_0while_lstm_cell_23_459809_0while_lstm_cell_23_459811_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594052,
*while/lstm_cell_23/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2К
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_23/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ф
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1+^while/lstm_cell_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4Ф
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2+^while/lstm_cell_23/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_459807while_lstm_cell_23_459807_0"8
while_lstm_cell_23_459809while_lstm_cell_23_459809_0"8
while_lstm_cell_23_459811while_lstm_cell_23_459811_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
х
О
-__inference_sequential_8_layer_call_fn_461591

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_4608322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs

в
while_body_460558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1Т
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЦ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ц
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ц
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Ћ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Ћ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Ћ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Ћ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
­

H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_459405

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeв
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2І2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeй
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЩЮљ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeй
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2па2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeй
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2јГщ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shapeй
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЬяБ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_4/GreaterEqual/yЦ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeй
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ђ№2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_5/GreaterEqual/yЦ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeй
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2БЛ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_6/GreaterEqual/yЦ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shapeи
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЬзA2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_7/GreaterEqual/yЦ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_10и
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityм

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1л

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
П

H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463170

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeг
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЧћГ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeй
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2СЩ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeй
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЈцІ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeй
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ы щ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shapeй
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ћШ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_4/GreaterEqual/yЦ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeй
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2АюЕ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_5/GreaterEqual/yЦ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeй
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2пј2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_6/GreaterEqual/yЦ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shapeй
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ђєщ2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_7/GreaterEqual/yЦ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	2*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
mul_10и
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityм

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1л

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
п	

G__inference_embedding_8_layer_call_and_return_conditional_losses_460007

inputs
embedding_lookup_460001
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP2
Cast§
embedding_lookupResourceGatherembedding_lookup_460001Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/460001*+
_output_shapes
:џџџџџџџџџP2*
dtype02
embedding_lookupэ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/460001*+
_output_shapes
:џџџџџџџџџP22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs


у
lstm_13_while_cond_461413,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1D
@lstm_13_while_lstm_13_while_cond_461413___redundant_placeholder0D
@lstm_13_while_lstm_13_while_cond_461413___redundant_placeholder1D
@lstm_13_while_lstm_13_while_cond_461413___redundant_placeholder2D
@lstm_13_while_lstm_13_while_cond_461413___redundant_placeholder3
lstm_13_while_identity

lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2
lstm_13/while/Lessu
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_13/while/Identity"9
lstm_13_while_identitylstm_13/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
вб
љ
H__inference_sequential_8_layer_call_and_return_conditional_losses_461288

inputs'
#embedding_8_embedding_lookup_4608786
2lstm_13_lstm_cell_23_split_readvariableop_resource8
4lstm_13_lstm_cell_23_split_1_readvariableop_resource0
,lstm_13_lstm_cell_23_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource
identityЂdense_19/BiasAdd/ReadVariableOpЂdense_19/MatMul/ReadVariableOpЂembedding_8/embedding_lookupЂ#lstm_13/lstm_cell_23/ReadVariableOpЂ%lstm_13/lstm_cell_23/ReadVariableOp_1Ђ%lstm_13/lstm_cell_23/ReadVariableOp_2Ђ%lstm_13/lstm_cell_23/ReadVariableOp_3Ђ)lstm_13/lstm_cell_23/split/ReadVariableOpЂ+lstm_13/lstm_cell_23/split_1/ReadVariableOpЂlstm_13/whileu
embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP2
embedding_8/CastЙ
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_460878embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/460878*+
_output_shapes
:џџџџџџџџџP2*
dtype02
embedding_8/embedding_lookup
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/460878*+
_output_shapes
:џџџџџџџџџP22'
%embedding_8/embedding_lookup/IdentityФ
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22)
'embedding_8/embedding_lookup/Identity_1
spatial_dropout1d_8/ShapeShape0embedding_8/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_8/Shape
'spatial_dropout1d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_8/strided_slice/stack 
)spatial_dropout1d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_8/strided_slice/stack_1 
)spatial_dropout1d_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_8/strided_slice/stack_2к
!spatial_dropout1d_8/strided_sliceStridedSlice"spatial_dropout1d_8/Shape:output:00spatial_dropout1d_8/strided_slice/stack:output:02spatial_dropout1d_8/strided_slice/stack_1:output:02spatial_dropout1d_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_8/strided_slice 
)spatial_dropout1d_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_8/strided_slice_1/stackЄ
+spatial_dropout1d_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_8/strided_slice_1/stack_1Є
+spatial_dropout1d_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_8/strided_slice_1/stack_2ф
#spatial_dropout1d_8/strided_slice_1StridedSlice"spatial_dropout1d_8/Shape:output:02spatial_dropout1d_8/strided_slice_1/stack:output:04spatial_dropout1d_8/strided_slice_1/stack_1:output:04spatial_dropout1d_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_8/strided_slice_1
!spatial_dropout1d_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!spatial_dropout1d_8/dropout/Constн
spatial_dropout1d_8/dropout/MulMul0embedding_8/embedding_lookup/Identity_1:output:0*spatial_dropout1d_8/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22!
spatial_dropout1d_8/dropout/MulЊ
2spatial_dropout1d_8/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_8/dropout/random_uniform/shape/1Б
0spatial_dropout1d_8/dropout/random_uniform/shapePack*spatial_dropout1d_8/strided_slice:output:0;spatial_dropout1d_8/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_8/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_8/dropout/random_uniform/shape
8spatial_dropout1d_8/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_8/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02:
8spatial_dropout1d_8/dropout/random_uniform/RandomUniform
*spatial_dropout1d_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*spatial_dropout1d_8/dropout/GreaterEqual/y
(spatial_dropout1d_8/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_8/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_8/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
(spatial_dropout1d_8/dropout/GreaterEqualШ
 spatial_dropout1d_8/dropout/CastCast,spatial_dropout1d_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2"
 spatial_dropout1d_8/dropout/CastЮ
!spatial_dropout1d_8/dropout/Mul_1Mul#spatial_dropout1d_8/dropout/Mul:z:0$spatial_dropout1d_8/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџP22#
!spatial_dropout1d_8/dropout/Mul_1s
lstm_13/ShapeShape%spatial_dropout1d_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_13/Shape
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice/stack
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_1
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_2
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slicel
lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros/mul/y
lstm_13/zeros/mulMullstm_13/strided_slice:output:0lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/mulo
lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_13/zeros/Less/y
lstm_13/zeros/LessLesslstm_13/zeros/mul:z:0lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/Lessr
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros/packed/1Ѓ
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros/packedo
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros/Const
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/zerosp
lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros_1/mul/y
lstm_13/zeros_1/mulMullstm_13/strided_slice:output:0lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/muls
lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_13/zeros_1/Less/y
lstm_13/zeros_1/LessLesslstm_13/zeros_1/mul:z:0lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/Lessv
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_13/zeros_1/packed/1Љ
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros_1/packeds
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros_1/Const
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/zeros_1
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose/permБ
lstm_13/transpose	Transpose%spatial_dropout1d_8/dropout/Mul_1:z:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
lstm_13/transposeg
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:2
lstm_13/Shape_1
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_1/stack
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_1
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_2
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slice_1
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#lstm_13/TensorArrayV2/element_shapeв
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2Я
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2?
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_13/TensorArrayUnstack/TensorListFromTensor
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_2/stack
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_1
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_2Ќ
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
lstm_13/strided_slice_2
$lstm_13/lstm_cell_23/ones_like/ShapeShape lstm_13/strided_slice_2:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/ones_like/Shape
$lstm_13/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_13/lstm_cell_23/ones_like/Constи
lstm_13/lstm_cell_23/ones_likeFill-lstm_13/lstm_cell_23/ones_like/Shape:output:0-lstm_13/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
lstm_13/lstm_cell_23/ones_like
"lstm_13/lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_13/lstm_cell_23/dropout/Constг
 lstm_13/lstm_cell_23/dropout/MulMul'lstm_13/lstm_cell_23/ones_like:output:0+lstm_13/lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/lstm_cell_23/dropout/Mul
"lstm_13/lstm_cell_23/dropout/ShapeShape'lstm_13/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_13/lstm_cell_23/dropout/Shape
9lstm_13/lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform+lstm_13/lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЩІ2;
9lstm_13/lstm_cell_23/dropout/random_uniform/RandomUniform
+lstm_13/lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_13/lstm_cell_23/dropout/GreaterEqual/y
)lstm_13/lstm_cell_23/dropout/GreaterEqualGreaterEqualBlstm_13/lstm_cell_23/dropout/random_uniform/RandomUniform:output:04lstm_13/lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22+
)lstm_13/lstm_cell_23/dropout/GreaterEqualО
!lstm_13/lstm_cell_23/dropout/CastCast-lstm_13/lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22#
!lstm_13/lstm_cell_23/dropout/CastЮ
"lstm_13/lstm_cell_23/dropout/Mul_1Mul$lstm_13/lstm_cell_23/dropout/Mul:z:0%lstm_13/lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"lstm_13/lstm_cell_23/dropout/Mul_1
$lstm_13/lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_1/Constй
"lstm_13/lstm_cell_23/dropout_1/MulMul'lstm_13/lstm_cell_23/ones_like:output:0-lstm_13/lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"lstm_13/lstm_cell_23/dropout_1/MulЃ
$lstm_13/lstm_cell_23/dropout_1/ShapeShape'lstm_13/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_1/Shape
;lstm_13/lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2О2=
;lstm_13/lstm_cell_23/dropout_1/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_1/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_1/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+lstm_13/lstm_cell_23/dropout_1/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_1/CastCast/lstm_13/lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22%
#lstm_13/lstm_cell_23/dropout_1/Castж
$lstm_13/lstm_cell_23/dropout_1/Mul_1Mul&lstm_13/lstm_cell_23/dropout_1/Mul:z:0'lstm_13/lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$lstm_13/lstm_cell_23/dropout_1/Mul_1
$lstm_13/lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_2/Constй
"lstm_13/lstm_cell_23/dropout_2/MulMul'lstm_13/lstm_cell_23/ones_like:output:0-lstm_13/lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"lstm_13/lstm_cell_23/dropout_2/MulЃ
$lstm_13/lstm_cell_23/dropout_2/ShapeShape'lstm_13/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_2/Shape
;lstm_13/lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЏЉH2=
;lstm_13/lstm_cell_23/dropout_2/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_2/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_2/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+lstm_13/lstm_cell_23/dropout_2/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_2/CastCast/lstm_13/lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22%
#lstm_13/lstm_cell_23/dropout_2/Castж
$lstm_13/lstm_cell_23/dropout_2/Mul_1Mul&lstm_13/lstm_cell_23/dropout_2/Mul:z:0'lstm_13/lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$lstm_13/lstm_cell_23/dropout_2/Mul_1
$lstm_13/lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_3/Constй
"lstm_13/lstm_cell_23/dropout_3/MulMul'lstm_13/lstm_cell_23/ones_like:output:0-lstm_13/lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22$
"lstm_13/lstm_cell_23/dropout_3/MulЃ
$lstm_13/lstm_cell_23/dropout_3/ShapeShape'lstm_13/lstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_3/Shape
;lstm_13/lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2гТМ2=
;lstm_13/lstm_cell_23/dropout_3/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_3/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_3/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+lstm_13/lstm_cell_23/dropout_3/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_3/CastCast/lstm_13/lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22%
#lstm_13/lstm_cell_23/dropout_3/Castж
$lstm_13/lstm_cell_23/dropout_3/Mul_1Mul&lstm_13/lstm_cell_23/dropout_3/Mul:z:0'lstm_13/lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$lstm_13/lstm_cell_23/dropout_3/Mul_1
&lstm_13/lstm_cell_23/ones_like_1/ShapeShapelstm_13/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_13/lstm_cell_23/ones_like_1/Shape
&lstm_13/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_13/lstm_cell_23/ones_like_1/Constр
 lstm_13/lstm_cell_23/ones_like_1Fill/lstm_13/lstm_cell_23/ones_like_1/Shape:output:0/lstm_13/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/lstm_cell_23/ones_like_1
$lstm_13/lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_4/Constл
"lstm_13/lstm_cell_23/dropout_4/MulMul)lstm_13/lstm_cell_23/ones_like_1:output:0-lstm_13/lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/lstm_cell_23/dropout_4/MulЅ
$lstm_13/lstm_cell_23/dropout_4/ShapeShape)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_4/Shape
;lstm_13/lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ыс2=
;lstm_13/lstm_cell_23/dropout_4/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_4/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_4/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+lstm_13/lstm_cell_23/dropout_4/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_4/CastCast/lstm_13/lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/lstm_cell_23/dropout_4/Castж
$lstm_13/lstm_cell_23/dropout_4/Mul_1Mul&lstm_13/lstm_cell_23/dropout_4/Mul:z:0'lstm_13/lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/lstm_cell_23/dropout_4/Mul_1
$lstm_13/lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_5/Constл
"lstm_13/lstm_cell_23/dropout_5/MulMul)lstm_13/lstm_cell_23/ones_like_1:output:0-lstm_13/lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/lstm_cell_23/dropout_5/MulЅ
$lstm_13/lstm_cell_23/dropout_5/ShapeShape)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_5/Shape
;lstm_13/lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЩЂ2=
;lstm_13/lstm_cell_23/dropout_5/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_5/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_5/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+lstm_13/lstm_cell_23/dropout_5/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_5/CastCast/lstm_13/lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/lstm_cell_23/dropout_5/Castж
$lstm_13/lstm_cell_23/dropout_5/Mul_1Mul&lstm_13/lstm_cell_23/dropout_5/Mul:z:0'lstm_13/lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/lstm_cell_23/dropout_5/Mul_1
$lstm_13/lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_6/Constл
"lstm_13/lstm_cell_23/dropout_6/MulMul)lstm_13/lstm_cell_23/ones_like_1:output:0-lstm_13/lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/lstm_cell_23/dropout_6/MulЅ
$lstm_13/lstm_cell_23/dropout_6/ShapeShape)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_6/Shape
;lstm_13/lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2жнЄ2=
;lstm_13/lstm_cell_23/dropout_6/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_6/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_6/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+lstm_13/lstm_cell_23/dropout_6/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_6/CastCast/lstm_13/lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/lstm_cell_23/dropout_6/Castж
$lstm_13/lstm_cell_23/dropout_6/Mul_1Mul&lstm_13/lstm_cell_23/dropout_6/Mul:z:0'lstm_13/lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/lstm_cell_23/dropout_6/Mul_1
$lstm_13/lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_13/lstm_cell_23/dropout_7/Constл
"lstm_13/lstm_cell_23/dropout_7/MulMul)lstm_13/lstm_cell_23/ones_like_1:output:0-lstm_13/lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/lstm_cell_23/dropout_7/MulЅ
$lstm_13/lstm_cell_23/dropout_7/ShapeShape)lstm_13/lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm_13/lstm_cell_23/dropout_7/Shape
;lstm_13/lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform-lstm_13/lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ЖЈ2=
;lstm_13/lstm_cell_23/dropout_7/random_uniform/RandomUniformЃ
-lstm_13/lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-lstm_13/lstm_cell_23/dropout_7/GreaterEqual/y
+lstm_13/lstm_cell_23/dropout_7/GreaterEqualGreaterEqualDlstm_13/lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:06lstm_13/lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2-
+lstm_13/lstm_cell_23/dropout_7/GreaterEqualФ
#lstm_13/lstm_cell_23/dropout_7/CastCast/lstm_13/lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/lstm_cell_23/dropout_7/Castж
$lstm_13/lstm_cell_23/dropout_7/Mul_1Mul&lstm_13/lstm_cell_23/dropout_7/Mul:z:0'lstm_13/lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/lstm_cell_23/dropout_7/Mul_1З
lstm_13/lstm_cell_23/mulMul lstm_13/strided_slice_2:output:0&lstm_13/lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mulН
lstm_13/lstm_cell_23/mul_1Mul lstm_13/strided_slice_2:output:0(lstm_13/lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_1Н
lstm_13/lstm_cell_23/mul_2Mul lstm_13/strided_slice_2:output:0(lstm_13/lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_2Н
lstm_13/lstm_cell_23/mul_3Mul lstm_13/strided_slice_2:output:0(lstm_13/lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_13/lstm_cell_23/mul_3z
lstm_13/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/lstm_cell_23/Const
$lstm_13/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_13/lstm_cell_23/split/split_dimЪ
)lstm_13/lstm_cell_23/split/ReadVariableOpReadVariableOp2lstm_13_lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02+
)lstm_13/lstm_cell_23/split/ReadVariableOpћ
lstm_13/lstm_cell_23/splitSplit-lstm_13/lstm_cell_23/split/split_dim:output:01lstm_13/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_13/lstm_cell_23/splitЙ
lstm_13/lstm_cell_23/MatMulMatMullstm_13/lstm_cell_23/mul:z:0#lstm_13/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMulП
lstm_13/lstm_cell_23/MatMul_1MatMullstm_13/lstm_cell_23/mul_1:z:0#lstm_13/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_1П
lstm_13/lstm_cell_23/MatMul_2MatMullstm_13/lstm_cell_23/mul_2:z:0#lstm_13/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_2П
lstm_13/lstm_cell_23/MatMul_3MatMullstm_13/lstm_cell_23/mul_3:z:0#lstm_13/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_3~
lstm_13/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/lstm_cell_23/Const_1
&lstm_13/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_13/lstm_cell_23/split_1/split_dimЬ
+lstm_13/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_13/lstm_cell_23/split_1/ReadVariableOpѓ
lstm_13/lstm_cell_23/split_1Split/lstm_13/lstm_cell_23/split_1/split_dim:output:03lstm_13/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_13/lstm_cell_23/split_1Ч
lstm_13/lstm_cell_23/BiasAddBiasAdd%lstm_13/lstm_cell_23/MatMul:product:0%lstm_13/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/BiasAddЭ
lstm_13/lstm_cell_23/BiasAdd_1BiasAdd'lstm_13/lstm_cell_23/MatMul_1:product:0%lstm_13/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_1Э
lstm_13/lstm_cell_23/BiasAdd_2BiasAdd'lstm_13/lstm_cell_23/MatMul_2:product:0%lstm_13/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_2Э
lstm_13/lstm_cell_23/BiasAdd_3BiasAdd'lstm_13/lstm_cell_23/MatMul_3:product:0%lstm_13/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/BiasAdd_3Г
lstm_13/lstm_cell_23/mul_4Mullstm_13/zeros:output:0(lstm_13/lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_4Г
lstm_13/lstm_cell_23/mul_5Mullstm_13/zeros:output:0(lstm_13/lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_5Г
lstm_13/lstm_cell_23/mul_6Mullstm_13/zeros:output:0(lstm_13/lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_6Г
lstm_13/lstm_cell_23/mul_7Mullstm_13/zeros:output:0(lstm_13/lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_7И
#lstm_13/lstm_cell_23/ReadVariableOpReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02%
#lstm_13/lstm_cell_23/ReadVariableOpЅ
(lstm_13/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_13/lstm_cell_23/strided_slice/stackЉ
*lstm_13/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_13/lstm_cell_23/strided_slice/stack_1Љ
*lstm_13/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_13/lstm_cell_23/strided_slice/stack_2њ
"lstm_13/lstm_cell_23/strided_sliceStridedSlice+lstm_13/lstm_cell_23/ReadVariableOp:value:01lstm_13/lstm_cell_23/strided_slice/stack:output:03lstm_13/lstm_cell_23/strided_slice/stack_1:output:03lstm_13/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"lstm_13/lstm_cell_23/strided_sliceЧ
lstm_13/lstm_cell_23/MatMul_4MatMullstm_13/lstm_cell_23/mul_4:z:0+lstm_13/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_4П
lstm_13/lstm_cell_23/addAddV2%lstm_13/lstm_cell_23/BiasAdd:output:0'lstm_13/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add
lstm_13/lstm_cell_23/SigmoidSigmoidlstm_13/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/SigmoidМ
%lstm_13/lstm_cell_23/ReadVariableOp_1ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_1Љ
*lstm_13/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_13/lstm_cell_23/strided_slice_1/stack­
,lstm_13/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2.
,lstm_13/lstm_cell_23/strided_slice_1/stack_1­
,lstm_13/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_1/stack_2
$lstm_13/lstm_cell_23/strided_slice_1StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_1:value:03lstm_13/lstm_cell_23/strided_slice_1/stack:output:05lstm_13/lstm_cell_23/strided_slice_1/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_1Щ
lstm_13/lstm_cell_23/MatMul_5MatMullstm_13/lstm_cell_23/mul_5:z:0-lstm_13/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_5Х
lstm_13/lstm_cell_23/add_1AddV2'lstm_13/lstm_cell_23/BiasAdd_1:output:0'lstm_13/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_1
lstm_13/lstm_cell_23/Sigmoid_1Sigmoidlstm_13/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/Sigmoid_1Џ
lstm_13/lstm_cell_23/mul_8Mul"lstm_13/lstm_cell_23/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_8М
%lstm_13/lstm_cell_23/ReadVariableOp_2ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_2Љ
*lstm_13/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*lstm_13/lstm_cell_23/strided_slice_2/stack­
,lstm_13/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2.
,lstm_13/lstm_cell_23/strided_slice_2/stack_1­
,lstm_13/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_2/stack_2
$lstm_13/lstm_cell_23/strided_slice_2StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_2:value:03lstm_13/lstm_cell_23/strided_slice_2/stack:output:05lstm_13/lstm_cell_23/strided_slice_2/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_2Щ
lstm_13/lstm_cell_23/MatMul_6MatMullstm_13/lstm_cell_23/mul_6:z:0-lstm_13/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_6Х
lstm_13/lstm_cell_23/add_2AddV2'lstm_13/lstm_cell_23/BiasAdd_2:output:0'lstm_13/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_2
lstm_13/lstm_cell_23/TanhTanhlstm_13/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/TanhВ
lstm_13/lstm_cell_23/mul_9Mul lstm_13/lstm_cell_23/Sigmoid:y:0lstm_13/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_9Г
lstm_13/lstm_cell_23/add_3AddV2lstm_13/lstm_cell_23/mul_8:z:0lstm_13/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_3М
%lstm_13/lstm_cell_23/ReadVariableOp_3ReadVariableOp,lstm_13_lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02'
%lstm_13/lstm_cell_23/ReadVariableOp_3Љ
*lstm_13/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*lstm_13/lstm_cell_23/strided_slice_3/stack­
,lstm_13/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_13/lstm_cell_23/strided_slice_3/stack_1­
,lstm_13/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_13/lstm_cell_23/strided_slice_3/stack_2
$lstm_13/lstm_cell_23/strided_slice_3StridedSlice-lstm_13/lstm_cell_23/ReadVariableOp_3:value:03lstm_13/lstm_cell_23/strided_slice_3/stack:output:05lstm_13/lstm_cell_23/strided_slice_3/stack_1:output:05lstm_13/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2&
$lstm_13/lstm_cell_23/strided_slice_3Щ
lstm_13/lstm_cell_23/MatMul_7MatMullstm_13/lstm_cell_23/mul_7:z:0-lstm_13/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/MatMul_7Х
lstm_13/lstm_cell_23/add_4AddV2'lstm_13/lstm_cell_23/BiasAdd_3:output:0'lstm_13/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/add_4
lstm_13/lstm_cell_23/Sigmoid_2Sigmoidlstm_13/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/lstm_cell_23/Sigmoid_2
lstm_13/lstm_cell_23/Tanh_1Tanhlstm_13/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/Tanh_1И
lstm_13/lstm_cell_23/mul_10Mul"lstm_13/lstm_cell_23/Sigmoid_2:y:0lstm_13/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/lstm_cell_23/mul_10
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2'
%lstm_13/TensorArrayV2_1/element_shapeи
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2_1^
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/time
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2"
 lstm_13/while/maximum_iterationsz
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/while/loop_counterм
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_13_lstm_cell_23_split_readvariableop_resource4lstm_13_lstm_cell_23_split_1_readvariableop_resource,lstm_13_lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_13_while_body_461081*%
condR
lstm_13_while_cond_461080*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
lstm_13/whileХ
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2:
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02,
*lstm_13/TensorArrayV2Stack/TensorListStack
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_13/strided_slice_3/stack
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_13/strided_slice_3/stack_1
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_3/stack_2Ъ
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
lstm_13/strided_slice_3
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose_1/permХ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
lstm_13/transpose_1v
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/runtimeЈ
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_19/MatMul/ReadVariableOpЈ
dense_19/MatMulMatMul lstm_13/strided_slice_3:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/MatMulЇ
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOpЅ
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/BiasAdd|
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_19/Softmaxи
IdentityIdentitydense_19/Softmax:softmax:0 ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp^embedding_8/embedding_lookup$^lstm_13/lstm_cell_23/ReadVariableOp&^lstm_13/lstm_cell_23/ReadVariableOp_1&^lstm_13/lstm_cell_23/ReadVariableOp_2&^lstm_13/lstm_cell_23/ReadVariableOp_3*^lstm_13/lstm_cell_23/split/ReadVariableOp,^lstm_13/lstm_cell_23/split_1/ReadVariableOp^lstm_13/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2J
#lstm_13/lstm_cell_23/ReadVariableOp#lstm_13/lstm_cell_23/ReadVariableOp2N
%lstm_13/lstm_cell_23/ReadVariableOp_1%lstm_13/lstm_cell_23/ReadVariableOp_12N
%lstm_13/lstm_cell_23/ReadVariableOp_2%lstm_13/lstm_cell_23/ReadVariableOp_22N
%lstm_13/lstm_cell_23/ReadVariableOp_3%lstm_13/lstm_cell_23/ReadVariableOp_32V
)lstm_13/lstm_cell_23/split/ReadVariableOp)lstm_13/lstm_cell_23/split/ReadVariableOp2Z
+lstm_13/lstm_cell_23/split_1/ReadVariableOp+lstm_13/lstm_cell_23/split_1/ReadVariableOp2
lstm_13/whilelstm_13/while:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs
яњ
О
C__inference_lstm_13_layer_call_and_return_conditional_losses_460439

inputs.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:Pџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like}
lstm_cell_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout/ConstГ
lstm_cell_23/dropout/MulMullstm_cell_23/ones_like:output:0#lstm_cell_23/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul
lstm_cell_23/dropout/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout/Shapeњ
1lstm_cell_23/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_23/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ЦМ23
1lstm_cell_23/dropout/random_uniform/RandomUniform
#lstm_cell_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2%
#lstm_cell_23/dropout/GreaterEqual/yђ
!lstm_cell_23/dropout/GreaterEqualGreaterEqual:lstm_cell_23/dropout/random_uniform/RandomUniform:output:0,lstm_cell_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22#
!lstm_cell_23/dropout/GreaterEqualІ
lstm_cell_23/dropout/CastCast%lstm_cell_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/CastЎ
lstm_cell_23/dropout/Mul_1Mullstm_cell_23/dropout/Mul:z:0lstm_cell_23/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout/Mul_1
lstm_cell_23/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_1/ConstЙ
lstm_cell_23/dropout_1/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul
lstm_cell_23/dropout_1/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_1/Shape
3lstm_cell_23/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ДЁЊ25
3lstm_cell_23/dropout_1/random_uniform/RandomUniform
%lstm_cell_23/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_1/GreaterEqual/yњ
#lstm_cell_23/dropout_1/GreaterEqualGreaterEqual<lstm_cell_23/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_1/GreaterEqualЌ
lstm_cell_23/dropout_1/CastCast'lstm_cell_23/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/CastЖ
lstm_cell_23/dropout_1/Mul_1Mullstm_cell_23/dropout_1/Mul:z:0lstm_cell_23/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_1/Mul_1
lstm_cell_23/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_2/ConstЙ
lstm_cell_23/dropout_2/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul
lstm_cell_23/dropout_2/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_2/Shape
3lstm_cell_23/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ьГ25
3lstm_cell_23/dropout_2/random_uniform/RandomUniform
%lstm_cell_23/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_2/GreaterEqual/yњ
#lstm_cell_23/dropout_2/GreaterEqualGreaterEqual<lstm_cell_23/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_2/GreaterEqualЌ
lstm_cell_23/dropout_2/CastCast'lstm_cell_23/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/CastЖ
lstm_cell_23/dropout_2/Mul_1Mullstm_cell_23/dropout_2/Mul:z:0lstm_cell_23/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_2/Mul_1
lstm_cell_23/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_3/ConstЙ
lstm_cell_23/dropout_3/MulMullstm_cell_23/ones_like:output:0%lstm_cell_23/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul
lstm_cell_23/dropout_3/ShapeShapelstm_cell_23/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_3/Shape
3lstm_cell_23/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0*
seedБџх)*
seed2ѓЪ25
3lstm_cell_23/dropout_3/random_uniform/RandomUniform
%lstm_cell_23/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_3/GreaterEqual/yњ
#lstm_cell_23/dropout_3/GreaterEqualGreaterEqual<lstm_cell_23/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22%
#lstm_cell_23/dropout_3/GreaterEqualЌ
lstm_cell_23/dropout_3/CastCast'lstm_cell_23/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/CastЖ
lstm_cell_23/dropout_3/Mul_1Mullstm_cell_23/dropout_3/Mul:z:0lstm_cell_23/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/dropout_3/Mul_1~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_4/ConstЛ
lstm_cell_23/dropout_4/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_4/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul
lstm_cell_23/dropout_4/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_4/Shape
3lstm_cell_23/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_4/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2­25
3lstm_cell_23/dropout_4/random_uniform/RandomUniform
%lstm_cell_23/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_4/GreaterEqual/yњ
#lstm_cell_23/dropout_4/GreaterEqualGreaterEqual<lstm_cell_23/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_4/GreaterEqualЌ
lstm_cell_23/dropout_4/CastCast'lstm_cell_23/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/CastЖ
lstm_cell_23/dropout_4/Mul_1Mullstm_cell_23/dropout_4/Mul:z:0lstm_cell_23/dropout_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_4/Mul_1
lstm_cell_23/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_5/ConstЛ
lstm_cell_23/dropout_5/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_5/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul
lstm_cell_23/dropout_5/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_5/Shape
3lstm_cell_23/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_5/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2Ї25
3lstm_cell_23/dropout_5/random_uniform/RandomUniform
%lstm_cell_23/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_5/GreaterEqual/yњ
#lstm_cell_23/dropout_5/GreaterEqualGreaterEqual<lstm_cell_23/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_5/GreaterEqualЌ
lstm_cell_23/dropout_5/CastCast'lstm_cell_23/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/CastЖ
lstm_cell_23/dropout_5/Mul_1Mullstm_cell_23/dropout_5/Mul:z:0lstm_cell_23/dropout_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_5/Mul_1
lstm_cell_23/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_6/ConstЛ
lstm_cell_23/dropout_6/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul
lstm_cell_23/dropout_6/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_6/Shapeџ
3lstm_cell_23/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_6/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2иФ}25
3lstm_cell_23/dropout_6/random_uniform/RandomUniform
%lstm_cell_23/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_6/GreaterEqual/yњ
#lstm_cell_23/dropout_6/GreaterEqualGreaterEqual<lstm_cell_23/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_6/GreaterEqualЌ
lstm_cell_23/dropout_6/CastCast'lstm_cell_23/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/CastЖ
lstm_cell_23/dropout_6/Mul_1Mullstm_cell_23/dropout_6/Mul:z:0lstm_cell_23/dropout_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_6/Mul_1
lstm_cell_23/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_23/dropout_7/ConstЛ
lstm_cell_23/dropout_7/MulMul!lstm_cell_23/ones_like_1:output:0%lstm_cell_23/dropout_7/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul
lstm_cell_23/dropout_7/ShapeShape!lstm_cell_23/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_23/dropout_7/Shapeџ
3lstm_cell_23/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_23/dropout_7/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype0*
seedБџх)*
seed2ощ=25
3lstm_cell_23/dropout_7/random_uniform/RandomUniform
%lstm_cell_23/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2'
%lstm_cell_23/dropout_7/GreaterEqual/yњ
#lstm_cell_23/dropout_7/GreaterEqualGreaterEqual<lstm_cell_23/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_23/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_cell_23/dropout_7/GreaterEqualЌ
lstm_cell_23/dropout_7/CastCast'lstm_cell_23/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/CastЖ
lstm_cell_23/dropout_7/Mul_1Mullstm_cell_23/dropout_7/Mul:z:0lstm_cell_23/dropout_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/dropout_7/Mul_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0 lstm_cell_23/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0 lstm_cell_23/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0 lstm_cell_23/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0 lstm_cell_23/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0 lstm_cell_23/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0 lstm_cell_23/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0 lstm_cell_23/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460239*
condR
while_cond_460238*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџP2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
ж
Р
$__inference_signature_wrapper_460874
embedding_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_4591512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
Ћ
У
while_cond_459782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_459782___redundant_placeholder04
0while_while_cond_459782___redundant_placeholder14
0while_while_cond_459782___redundant_placeholder24
0while_while_cond_459782___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Я
n
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461630

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџP22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP2:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Ћ
У
while_cond_460557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460557___redundant_placeholder04
0while_while_cond_460557___redundant_placeholder14
0while_while_cond_460557___redundant_placeholder24
0while_while_cond_460557___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
і

H__inference_sequential_8_layer_call_and_return_conditional_losses_460752
embedding_8_input
embedding_8_460016
lstm_13_460717
lstm_13_460719
lstm_13_460721
dense_19_460746
dense_19_460748
identityЂ dense_19/StatefulPartitionedCallЂ#embedding_8/StatefulPartitionedCallЂlstm_13/StatefulPartitionedCallЂ+spatial_dropout1d_8/StatefulPartitionedCall
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputembedding_8_460016*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_4600072%
#embedding_8/StatefulPartitionedCallЗ
+spatial_dropout1d_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4600402-
+spatial_dropout1d_8/StatefulPartitionedCallЯ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_8/StatefulPartitionedCall:output:0lstm_13_460717lstm_13_460719lstm_13_460721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4604392!
lstm_13/StatefulPartitionedCallЖ
 dense_19/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_19_460746dense_19_460748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_4607352"
 dense_19/StatefulPartitionedCall
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0!^dense_19/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall,^spatial_dropout1d_8/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџP::::::2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2Z
+spatial_dropout1d_8/StatefulPartitionedCall+spatial_dropout1d_8/StatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџP
+
_user_specified_nameembedding_8_input
ш
Р
C__inference_lstm_13_layer_call_and_return_conditional_losses_462980
inputs_0.
*lstm_cell_23_split_readvariableop_resource0
,lstm_cell_23_split_1_readvariableop_resource(
$lstm_cell_23_readvariableop_resource
identityЂlstm_cell_23/ReadVariableOpЂlstm_cell_23/ReadVariableOp_1Ђlstm_cell_23/ReadVariableOp_2Ђlstm_cell_23/ReadVariableOp_3Ђ!lstm_cell_23/split/ReadVariableOpЂ#lstm_cell_23/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_23/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_23/ones_like/Shape
lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_23/ones_like/ConstИ
lstm_cell_23/ones_likeFill%lstm_cell_23/ones_like/Shape:output:0%lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/ones_like~
lstm_cell_23/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_23/ones_like_1/Shape
lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_23/ones_like_1/ConstР
lstm_cell_23/ones_like_1Fill'lstm_cell_23/ones_like_1/Shape:output:0'lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/ones_like_1
lstm_cell_23/mulMulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul
lstm_cell_23/mul_1Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_1
lstm_cell_23/mul_2Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_2
lstm_cell_23/mul_3Mulstrided_slice_2:output:0lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
lstm_cell_23/mul_3j
lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const~
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/split/split_dimВ
!lstm_cell_23/split/ReadVariableOpReadVariableOp*lstm_cell_23_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_23/split/ReadVariableOpл
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0)lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_23/split
lstm_cell_23/MatMulMatMullstm_cell_23/mul:z:0lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul
lstm_cell_23/MatMul_1MatMullstm_cell_23/mul_1:z:0lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_1
lstm_cell_23/MatMul_2MatMullstm_cell_23/mul_2:z:0lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_2
lstm_cell_23/MatMul_3MatMullstm_cell_23/mul_3:z:0lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_3n
lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_23/Const_1
lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_23/split_1/split_dimД
#lstm_cell_23/split_1/ReadVariableOpReadVariableOp,lstm_cell_23_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_23/split_1/ReadVariableOpг
lstm_cell_23/split_1Split'lstm_cell_23/split_1/split_dim:output:0+lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_23/split_1Ї
lstm_cell_23/BiasAddBiasAddlstm_cell_23/MatMul:product:0lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd­
lstm_cell_23/BiasAdd_1BiasAddlstm_cell_23/MatMul_1:product:0lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_1­
lstm_cell_23/BiasAdd_2BiasAddlstm_cell_23/MatMul_2:product:0lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_2­
lstm_cell_23/BiasAdd_3BiasAddlstm_cell_23/MatMul_3:product:0lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/BiasAdd_3
lstm_cell_23/mul_4Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_4
lstm_cell_23/mul_5Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_5
lstm_cell_23/mul_6Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_6
lstm_cell_23/mul_7Mulzeros:output:0!lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_7 
lstm_cell_23/ReadVariableOpReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp
 lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_23/strided_slice/stack
"lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice/stack_1
"lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_23/strided_slice/stack_2Ъ
lstm_cell_23/strided_sliceStridedSlice#lstm_cell_23/ReadVariableOp:value:0)lstm_cell_23/strided_slice/stack:output:0+lstm_cell_23/strided_slice/stack_1:output:0+lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_sliceЇ
lstm_cell_23/MatMul_4MatMullstm_cell_23/mul_4:z:0#lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_4
lstm_cell_23/addAddV2lstm_cell_23/BiasAdd:output:0lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add
lstm_cell_23/SigmoidSigmoidlstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/SigmoidЄ
lstm_cell_23/ReadVariableOp_1ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_1
"lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_23/strided_slice_1/stack
$lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2&
$lstm_cell_23/strided_slice_1/stack_1
$lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_1/stack_2ж
lstm_cell_23/strided_slice_1StridedSlice%lstm_cell_23/ReadVariableOp_1:value:0+lstm_cell_23/strided_slice_1/stack:output:0-lstm_cell_23/strided_slice_1/stack_1:output:0-lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_1Љ
lstm_cell_23/MatMul_5MatMullstm_cell_23/mul_5:z:0%lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_5Ѕ
lstm_cell_23/add_1AddV2lstm_cell_23/BiasAdd_1:output:0lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_1
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_1
lstm_cell_23/mul_8Mullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_8Є
lstm_cell_23/ReadVariableOp_2ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_2
"lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2$
"lstm_cell_23/strided_slice_2/stack
$lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_23/strided_slice_2/stack_1
$lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_2/stack_2ж
lstm_cell_23/strided_slice_2StridedSlice%lstm_cell_23/ReadVariableOp_2:value:0+lstm_cell_23/strided_slice_2/stack:output:0-lstm_cell_23/strided_slice_2/stack_1:output:0-lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_2Љ
lstm_cell_23/MatMul_6MatMullstm_cell_23/mul_6:z:0%lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_6Ѕ
lstm_cell_23/add_2AddV2lstm_cell_23/BiasAdd_2:output:0lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_2x
lstm_cell_23/TanhTanhlstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh
lstm_cell_23/mul_9Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_9
lstm_cell_23/add_3AddV2lstm_cell_23/mul_8:z:0lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_3Є
lstm_cell_23/ReadVariableOp_3ReadVariableOp$lstm_cell_23_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_23/ReadVariableOp_3
"lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_23/strided_slice_3/stack
$lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_23/strided_slice_3/stack_1
$lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_23/strided_slice_3/stack_2ж
lstm_cell_23/strided_slice_3StridedSlice%lstm_cell_23/ReadVariableOp_3:value:0+lstm_cell_23/strided_slice_3/stack:output:0-lstm_cell_23/strided_slice_3/stack_1:output:0-lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_23/strided_slice_3Љ
lstm_cell_23/MatMul_7MatMullstm_cell_23/mul_7:z:0%lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/MatMul_7Ѕ
lstm_cell_23/add_4AddV2lstm_cell_23/BiasAdd_3:output:0lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/add_4
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Sigmoid_2|
lstm_cell_23/Tanh_1Tanhlstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/Tanh_1
lstm_cell_23/mul_10Mullstm_cell_23/Sigmoid_2:y:0lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_cell_23/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_23_split_readvariableop_resource,lstm_cell_23_split_1_readvariableop_resource$lstm_cell_23_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_462844*
condR
while_cond_462843*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeМ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_23/ReadVariableOp^lstm_cell_23/ReadVariableOp_1^lstm_cell_23/ReadVariableOp_2^lstm_cell_23/ReadVariableOp_3"^lstm_cell_23/split/ReadVariableOp$^lstm_cell_23/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ2:::2:
lstm_cell_23/ReadVariableOplstm_cell_23/ReadVariableOp2>
lstm_cell_23/ReadVariableOp_1lstm_cell_23/ReadVariableOp_12>
lstm_cell_23/ReadVariableOp_2lstm_cell_23/ReadVariableOp_22>
lstm_cell_23/ReadVariableOp_3lstm_cell_23/ReadVariableOp_32F
!lstm_cell_23/split/ReadVariableOp!lstm_cell_23/split/ReadVariableOp2J
#lstm_cell_23/split_1/ReadVariableOp#lstm_cell_23/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0

P
4__inference_spatial_dropout1d_8_layer_call_fn_461682

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_4592142
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я
n
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_460040

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџP22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP2:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
і	
н
D__inference_dense_19_layer_call_and_return_conditional_losses_460735

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ћ
У
while_cond_462524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_462524___redundant_placeholder04
0while_while_cond_462524___redundant_placeholder14
0while_while_cond_462524___redundant_placeholder24
0while_while_cond_462524___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
т
m
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_460045

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџP22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџP2:S O
+
_output_shapes
:џџџџџџџџџP2
 
_user_specified_nameinputs
Л
Э
-__inference_lstm_cell_23_layer_call_fn_463288

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_4594892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ2:џџџџџџџџџd:џџџџџџџџџd:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
Ј?
Џ
__inference__traced_save_463392
file_prefix5
1savev2_embedding_8_embeddings_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_13_lstm_cell_23_kernel_read_readvariableopD
@savev2_lstm_13_lstm_cell_23_recurrent_kernel_read_readvariableop8
4savev2_lstm_13_lstm_cell_23_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_8_embeddings_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_23_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_23_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_23_bias_m_read_readvariableop<
8savev2_adam_embedding_8_embeddings_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_23_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_23_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_23_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesР
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЌ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_8_embeddings_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_13_lstm_cell_23_kernel_read_readvariableop@savev2_lstm_13_lstm_cell_23_recurrent_kernel_read_readvariableop4savev2_lstm_13_lstm_cell_23_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_8_embeddings_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop=savev2_adam_lstm_13_lstm_cell_23_kernel_m_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_23_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_13_lstm_cell_23_bias_m_read_readvariableop8savev2_adam_embedding_8_embeddings_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableop=savev2_adam_lstm_13_lstm_cell_23_kernel_v_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_23_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_13_lstm_cell_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ж
_input_shapesФ
С: :
ЇС2:d:: : : : : :	2:	d:: : : : :
ЇС2:d::	2:	d::
ЇС2:d::	2:	d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ЇС2:$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	2:%
!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
ЇС2:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	d:!

_output_shapes	
::&"
 
_output_shapes
:
ЇС2:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: 
яЊ
ъ

lstm_13_while_body_461414,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0>
:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0@
<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_08
4lstm_13_while_lstm_cell_23_readvariableop_resource_0
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor<
8lstm_13_while_lstm_cell_23_split_readvariableop_resource>
:lstm_13_while_lstm_cell_23_split_1_readvariableop_resource6
2lstm_13_while_lstm_cell_23_readvariableop_resourceЂ)lstm_13/while/lstm_cell_23/ReadVariableOpЂ+lstm_13/while/lstm_cell_23/ReadVariableOp_1Ђ+lstm_13/while/lstm_cell_23/ReadVariableOp_2Ђ+lstm_13/while/lstm_cell_23/ReadVariableOp_3Ђ/lstm_13/while/lstm_cell_23/split/ReadVariableOpЂ1lstm_13/while/lstm_cell_23/split_1/ReadVariableOpг
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2A
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype023
1lstm_13/while/TensorArrayV2Read/TensorListGetItemР
*lstm_13/while/lstm_cell_23/ones_like/ShapeShape8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2,
*lstm_13/while/lstm_cell_23/ones_like/Shape
*lstm_13/while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_13/while/lstm_cell_23/ones_like/Const№
$lstm_13/while/lstm_cell_23/ones_likeFill3lstm_13/while/lstm_cell_23/ones_like/Shape:output:03lstm_13/while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$lstm_13/while/lstm_cell_23/ones_likeЇ
,lstm_13/while/lstm_cell_23/ones_like_1/ShapeShapelstm_13_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_13/while/lstm_cell_23/ones_like_1/ShapeЁ
,lstm_13/while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_13/while/lstm_cell_23/ones_like_1/Constј
&lstm_13/while/lstm_cell_23/ones_like_1Fill5lstm_13/while/lstm_cell_23/ones_like_1/Shape:output:05lstm_13/while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2(
&lstm_13/while/lstm_cell_23/ones_like_1т
lstm_13/while/lstm_cell_23/mulMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
lstm_13/while/lstm_cell_23/mulц
 lstm_13/while/lstm_cell_23/mul_1Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_1ц
 lstm_13/while/lstm_cell_23/mul_2Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_2ц
 lstm_13/while/lstm_cell_23/mul_3Mul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_13/while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22"
 lstm_13/while/lstm_cell_23/mul_3
 lstm_13/while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_13/while/lstm_cell_23/Const
*lstm_13/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_13/while/lstm_cell_23/split/split_dimо
/lstm_13/while/lstm_cell_23/split/ReadVariableOpReadVariableOp:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype021
/lstm_13/while/lstm_cell_23/split/ReadVariableOp
 lstm_13/while/lstm_cell_23/splitSplit3lstm_13/while/lstm_cell_23/split/split_dim:output:07lstm_13/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2"
 lstm_13/while/lstm_cell_23/splitб
!lstm_13/while/lstm_cell_23/MatMulMatMul"lstm_13/while/lstm_cell_23/mul:z:0)lstm_13/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/MatMulз
#lstm_13/while/lstm_cell_23/MatMul_1MatMul$lstm_13/while/lstm_cell_23/mul_1:z:0)lstm_13/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_1з
#lstm_13/while/lstm_cell_23/MatMul_2MatMul$lstm_13/while/lstm_cell_23/mul_2:z:0)lstm_13/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_2з
#lstm_13/while/lstm_cell_23/MatMul_3MatMul$lstm_13/while/lstm_cell_23/mul_3:z:0)lstm_13/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_3
"lstm_13/while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_13/while/lstm_cell_23/Const_1
,lstm_13/while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_13/while/lstm_cell_23/split_1/split_dimр
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp
"lstm_13/while/lstm_cell_23/split_1Split5lstm_13/while/lstm_cell_23/split_1/split_dim:output:09lstm_13/while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2$
"lstm_13/while/lstm_cell_23/split_1п
"lstm_13/while/lstm_cell_23/BiasAddBiasAdd+lstm_13/while/lstm_cell_23/MatMul:product:0+lstm_13/while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/while/lstm_cell_23/BiasAddх
$lstm_13/while/lstm_cell_23/BiasAdd_1BiasAdd-lstm_13/while/lstm_cell_23/MatMul_1:product:0+lstm_13/while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_1х
$lstm_13/while/lstm_cell_23/BiasAdd_2BiasAdd-lstm_13/while/lstm_cell_23/MatMul_2:product:0+lstm_13/while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_2х
$lstm_13/while/lstm_cell_23/BiasAdd_3BiasAdd-lstm_13/while/lstm_cell_23/MatMul_3:product:0+lstm_13/while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/BiasAdd_3Ы
 lstm_13/while/lstm_cell_23/mul_4Mullstm_13_while_placeholder_2/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_4Ы
 lstm_13/while/lstm_cell_23/mul_5Mullstm_13_while_placeholder_2/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_5Ы
 lstm_13/while/lstm_cell_23/mul_6Mullstm_13_while_placeholder_2/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_6Ы
 lstm_13/while/lstm_cell_23/mul_7Mullstm_13_while_placeholder_2/lstm_13/while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_7Ь
)lstm_13/while/lstm_cell_23/ReadVariableOpReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02+
)lstm_13/while/lstm_cell_23/ReadVariableOpБ
.lstm_13/while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_13/while/lstm_cell_23/strided_slice/stackЕ
0lstm_13/while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_13/while/lstm_cell_23/strided_slice/stack_1Е
0lstm_13/while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_13/while/lstm_cell_23/strided_slice/stack_2
(lstm_13/while/lstm_cell_23/strided_sliceStridedSlice1lstm_13/while/lstm_cell_23/ReadVariableOp:value:07lstm_13/while/lstm_cell_23/strided_slice/stack:output:09lstm_13/while/lstm_cell_23/strided_slice/stack_1:output:09lstm_13/while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2*
(lstm_13/while/lstm_cell_23/strided_sliceп
#lstm_13/while/lstm_cell_23/MatMul_4MatMul$lstm_13/while/lstm_cell_23/mul_4:z:01lstm_13/while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_4з
lstm_13/while/lstm_cell_23/addAddV2+lstm_13/while/lstm_cell_23/BiasAdd:output:0-lstm_13/while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
lstm_13/while/lstm_cell_23/addЉ
"lstm_13/while/lstm_cell_23/SigmoidSigmoid"lstm_13/while/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"lstm_13/while/lstm_cell_23/Sigmoidа
+lstm_13/while/lstm_cell_23/ReadVariableOp_1ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_1Е
0lstm_13/while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_13/while/lstm_cell_23/strided_slice_1/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   24
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_1/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_1StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_1:value:09lstm_13/while/lstm_cell_23/strided_slice_1/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_1/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_1с
#lstm_13/while/lstm_cell_23/MatMul_5MatMul$lstm_13/while/lstm_cell_23/mul_5:z:03lstm_13/while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_5н
 lstm_13/while/lstm_cell_23/add_1AddV2-lstm_13/while/lstm_cell_23/BiasAdd_1:output:0-lstm_13/while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_1Џ
$lstm_13/while/lstm_cell_23/Sigmoid_1Sigmoid$lstm_13/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/Sigmoid_1Ф
 lstm_13/while/lstm_cell_23/mul_8Mul(lstm_13/while/lstm_cell_23/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_8а
+lstm_13/while/lstm_cell_23/ReadVariableOp_2ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_2Е
0lstm_13/while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   22
0lstm_13/while/lstm_cell_23/strided_slice_2/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  24
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_2/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_2StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_2:value:09lstm_13/while/lstm_cell_23/strided_slice_2/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_2/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_2с
#lstm_13/while/lstm_cell_23/MatMul_6MatMul$lstm_13/while/lstm_cell_23/mul_6:z:03lstm_13/while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_6н
 lstm_13/while/lstm_cell_23/add_2AddV2-lstm_13/while/lstm_cell_23/BiasAdd_2:output:0-lstm_13/while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_2Ђ
lstm_13/while/lstm_cell_23/TanhTanh$lstm_13/while/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2!
lstm_13/while/lstm_cell_23/TanhЪ
 lstm_13/while/lstm_cell_23/mul_9Mul&lstm_13/while/lstm_cell_23/Sigmoid:y:0#lstm_13/while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/mul_9Ы
 lstm_13/while/lstm_cell_23/add_3AddV2$lstm_13/while/lstm_cell_23/mul_8:z:0$lstm_13/while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_3а
+lstm_13/while/lstm_cell_23/ReadVariableOp_3ReadVariableOp4lstm_13_while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02-
+lstm_13/while/lstm_cell_23/ReadVariableOp_3Е
0lstm_13/while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  22
0lstm_13/while/lstm_cell_23/strided_slice_3/stackЙ
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_1Й
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_13/while/lstm_cell_23/strided_slice_3/stack_2Њ
*lstm_13/while/lstm_cell_23/strided_slice_3StridedSlice3lstm_13/while/lstm_cell_23/ReadVariableOp_3:value:09lstm_13/while/lstm_cell_23/strided_slice_3/stack:output:0;lstm_13/while/lstm_cell_23/strided_slice_3/stack_1:output:0;lstm_13/while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2,
*lstm_13/while/lstm_cell_23/strided_slice_3с
#lstm_13/while/lstm_cell_23/MatMul_7MatMul$lstm_13/while/lstm_cell_23/mul_7:z:03lstm_13/while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#lstm_13/while/lstm_cell_23/MatMul_7н
 lstm_13/while/lstm_cell_23/add_4AddV2-lstm_13/while/lstm_cell_23/BiasAdd_3:output:0-lstm_13/while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 lstm_13/while/lstm_cell_23/add_4Џ
$lstm_13/while/lstm_cell_23/Sigmoid_2Sigmoid$lstm_13/while/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2&
$lstm_13/while/lstm_cell_23/Sigmoid_2І
!lstm_13/while/lstm_cell_23/Tanh_1Tanh$lstm_13/while/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/Tanh_1а
!lstm_13/while/lstm_cell_23/mul_10Mul(lstm_13/while/lstm_cell_23/Sigmoid_2:y:0%lstm_13/while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2#
!lstm_13/while/lstm_cell_23/mul_10
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder%lstm_13/while/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype024
2lstm_13/while/TensorArrayV2Write/TensorListSetIteml
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add/y
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/addp
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add_1/y
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/add_1
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity­
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_1
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_2С
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_3Е
lstm_13/while/Identity_4Identity%lstm_13/while/lstm_cell_23/mul_10:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/while/Identity_4Д
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_23/add_3:z:0*^lstm_13/while/lstm_cell_23/ReadVariableOp,^lstm_13/while/lstm_cell_23/ReadVariableOp_1,^lstm_13/while/lstm_cell_23/ReadVariableOp_2,^lstm_13/while/lstm_cell_23/ReadVariableOp_30^lstm_13/while/lstm_cell_23/split/ReadVariableOp2^lstm_13/while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
lstm_13/while/Identity_5"9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"j
2lstm_13_while_lstm_cell_23_readvariableop_resource4lstm_13_while_lstm_cell_23_readvariableop_resource_0"z
:lstm_13_while_lstm_cell_23_split_1_readvariableop_resource<lstm_13_while_lstm_cell_23_split_1_readvariableop_resource_0"v
8lstm_13_while_lstm_cell_23_split_readvariableop_resource:lstm_13_while_lstm_cell_23_split_readvariableop_resource_0"Ш
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2V
)lstm_13/while/lstm_cell_23/ReadVariableOp)lstm_13/while/lstm_cell_23/ReadVariableOp2Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_1+lstm_13/while/lstm_cell_23/ReadVariableOp_12Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_2+lstm_13/while/lstm_cell_23/ReadVariableOp_22Z
+lstm_13/while/lstm_cell_23/ReadVariableOp_3+lstm_13/while/lstm_cell_23/ReadVariableOp_32b
/lstm_13/while/lstm_cell_23/split/ReadVariableOp/lstm_13/while/lstm_cell_23/split/ReadVariableOp2f
1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp1lstm_13/while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ъ
r
,__inference_embedding_8_layer_call_fn_461608

inputs
unknown
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_4600072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџP22

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџP:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs
і	
н
D__inference_dense_19_layer_call_and_return_conditional_losses_463013

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

в
while_body_462184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_23_split_readvariableop_resource_08
4while_lstm_cell_23_split_1_readvariableop_resource_00
,while_lstm_cell_23_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_23_split_readvariableop_resource6
2while_lstm_cell_23_split_1_readvariableop_resource.
*while_lstm_cell_23_readvariableop_resourceЂ!while/lstm_cell_23/ReadVariableOpЂ#while/lstm_cell_23/ReadVariableOp_1Ђ#while/lstm_cell_23/ReadVariableOp_2Ђ#while/lstm_cell_23/ReadVariableOp_3Ђ'while/lstm_cell_23/split/ReadVariableOpЂ)while/lstm_cell_23/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЈ
"while/lstm_cell_23/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_23/ones_like/Shape
"while/lstm_cell_23/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_23/ones_like/Constа
while/lstm_cell_23/ones_likeFill+while/lstm_cell_23/ones_like/Shape:output:0+while/lstm_cell_23/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/ones_like
$while/lstm_cell_23/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_23/ones_like_1/Shape
$while/lstm_cell_23/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_23/ones_like_1/Constи
while/lstm_cell_23/ones_like_1Fill-while/lstm_cell_23/ones_like_1/Shape:output:0-while/lstm_cell_23/ones_like_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
while/lstm_cell_23/ones_like_1Т
while/lstm_cell_23/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mulЦ
while/lstm_cell_23/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_1Ц
while/lstm_cell_23/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_2Ц
while/lstm_cell_23/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_23/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/lstm_cell_23/mul_3v
while/lstm_cell_23/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_23/split/split_dimЦ
'while/lstm_cell_23/split/ReadVariableOpReadVariableOp2while_lstm_cell_23_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_23/split/ReadVariableOpѓ
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0/while/lstm_cell_23/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_23/splitБ
while/lstm_cell_23/MatMulMatMulwhile/lstm_cell_23/mul:z:0!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMulЗ
while/lstm_cell_23/MatMul_1MatMulwhile/lstm_cell_23/mul_1:z:0!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_1З
while/lstm_cell_23/MatMul_2MatMulwhile/lstm_cell_23/mul_2:z:0!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_2З
while/lstm_cell_23/MatMul_3MatMulwhile/lstm_cell_23/mul_3:z:0!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_3z
while/lstm_cell_23/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_23/Const_1
$while/lstm_cell_23/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_23/split_1/split_dimШ
)while/lstm_cell_23/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_23_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_23/split_1/ReadVariableOpы
while/lstm_cell_23/split_1Split-while/lstm_cell_23/split_1/split_dim:output:01while/lstm_cell_23/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_23/split_1П
while/lstm_cell_23/BiasAddBiasAdd#while/lstm_cell_23/MatMul:product:0#while/lstm_cell_23/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAddХ
while/lstm_cell_23/BiasAdd_1BiasAdd%while/lstm_cell_23/MatMul_1:product:0#while/lstm_cell_23/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_1Х
while/lstm_cell_23/BiasAdd_2BiasAdd%while/lstm_cell_23/MatMul_2:product:0#while/lstm_cell_23/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_2Х
while/lstm_cell_23/BiasAdd_3BiasAdd%while/lstm_cell_23/MatMul_3:product:0#while/lstm_cell_23/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/BiasAdd_3Ћ
while/lstm_cell_23/mul_4Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_4Ћ
while/lstm_cell_23/mul_5Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_5Ћ
while/lstm_cell_23/mul_6Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_6Ћ
while/lstm_cell_23/mul_7Mulwhile_placeholder_2'while/lstm_cell_23/ones_like_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_7Д
!while/lstm_cell_23/ReadVariableOpReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_23/ReadVariableOpЁ
&while/lstm_cell_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_23/strided_slice/stackЅ
(while/lstm_cell_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice/stack_1Ѕ
(while/lstm_cell_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_23/strided_slice/stack_2ю
 while/lstm_cell_23/strided_sliceStridedSlice)while/lstm_cell_23/ReadVariableOp:value:0/while/lstm_cell_23/strided_slice/stack:output:01while/lstm_cell_23/strided_slice/stack_1:output:01while/lstm_cell_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_23/strided_sliceП
while/lstm_cell_23/MatMul_4MatMulwhile/lstm_cell_23/mul_4:z:0)while/lstm_cell_23/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_4З
while/lstm_cell_23/addAddV2#while/lstm_cell_23/BiasAdd:output:0%while/lstm_cell_23/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add
while/lstm_cell_23/SigmoidSigmoidwhile/lstm_cell_23/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/SigmoidИ
#while/lstm_cell_23/ReadVariableOp_1ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_1Ѕ
(while/lstm_cell_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_23/strided_slice_1/stackЉ
*while/lstm_cell_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   2,
*while/lstm_cell_23/strided_slice_1/stack_1Љ
*while/lstm_cell_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_1/stack_2њ
"while/lstm_cell_23/strided_slice_1StridedSlice+while/lstm_cell_23/ReadVariableOp_1:value:01while/lstm_cell_23/strided_slice_1/stack:output:03while/lstm_cell_23/strided_slice_1/stack_1:output:03while/lstm_cell_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_1С
while/lstm_cell_23/MatMul_5MatMulwhile/lstm_cell_23/mul_5:z:0+while/lstm_cell_23/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_5Н
while/lstm_cell_23/add_1AddV2%while/lstm_cell_23/BiasAdd_1:output:0%while/lstm_cell_23/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_1
while/lstm_cell_23/Sigmoid_1Sigmoidwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_1Є
while/lstm_cell_23/mul_8Mul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_8И
#while/lstm_cell_23/ReadVariableOp_2ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_2Ѕ
(while/lstm_cell_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   2*
(while/lstm_cell_23/strided_slice_2/stackЉ
*while/lstm_cell_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_23/strided_slice_2/stack_1Љ
*while/lstm_cell_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_2/stack_2њ
"while/lstm_cell_23/strided_slice_2StridedSlice+while/lstm_cell_23/ReadVariableOp_2:value:01while/lstm_cell_23/strided_slice_2/stack:output:03while/lstm_cell_23/strided_slice_2/stack_1:output:03while/lstm_cell_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_2С
while/lstm_cell_23/MatMul_6MatMulwhile/lstm_cell_23/mul_6:z:0+while/lstm_cell_23/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_6Н
while/lstm_cell_23/add_2AddV2%while/lstm_cell_23/BiasAdd_2:output:0%while/lstm_cell_23/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_2
while/lstm_cell_23/TanhTanhwhile/lstm_cell_23/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/TanhЊ
while/lstm_cell_23/mul_9Mulwhile/lstm_cell_23/Sigmoid:y:0while/lstm_cell_23/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_9Ћ
while/lstm_cell_23/add_3AddV2while/lstm_cell_23/mul_8:z:0while/lstm_cell_23/mul_9:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_3И
#while/lstm_cell_23/ReadVariableOp_3ReadVariableOp,while_lstm_cell_23_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_23/ReadVariableOp_3Ѕ
(while/lstm_cell_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_23/strided_slice_3/stackЉ
*while/lstm_cell_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_23/strided_slice_3/stack_1Љ
*while/lstm_cell_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_23/strided_slice_3/stack_2њ
"while/lstm_cell_23/strided_slice_3StridedSlice+while/lstm_cell_23/ReadVariableOp_3:value:01while/lstm_cell_23/strided_slice_3/stack:output:03while/lstm_cell_23/strided_slice_3/stack_1:output:03while/lstm_cell_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_23/strided_slice_3С
while/lstm_cell_23/MatMul_7MatMulwhile/lstm_cell_23/mul_7:z:0+while/lstm_cell_23/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/MatMul_7Н
while/lstm_cell_23/add_4AddV2%while/lstm_cell_23/BiasAdd_3:output:0%while/lstm_cell_23/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/add_4
while/lstm_cell_23/Sigmoid_2Sigmoidwhile/lstm_cell_23/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Sigmoid_2
while/lstm_cell_23/Tanh_1Tanhwhile/lstm_cell_23/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/Tanh_1А
while/lstm_cell_23/mul_10Mul while/lstm_cell_23/Sigmoid_2:y:0while/lstm_cell_23/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
while/lstm_cell_23/mul_10с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ъ
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityн
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ь
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2љ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3э
while/Identity_4Identitywhile/lstm_cell_23/mul_10:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_4ь
while/Identity_5Identitywhile/lstm_cell_23/add_3:z:0"^while/lstm_cell_23/ReadVariableOp$^while/lstm_cell_23/ReadVariableOp_1$^while/lstm_cell_23/ReadVariableOp_2$^while/lstm_cell_23/ReadVariableOp_3(^while/lstm_cell_23/split/ReadVariableOp*^while/lstm_cell_23/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_23_readvariableop_resource,while_lstm_cell_23_readvariableop_resource_0"j
2while_lstm_cell_23_split_1_readvariableop_resource4while_lstm_cell_23_split_1_readvariableop_resource_0"f
0while_lstm_cell_23_split_readvariableop_resource2while_lstm_cell_23_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџd:џџџџџџџџџd: : :::2F
!while/lstm_cell_23/ReadVariableOp!while/lstm_cell_23/ReadVariableOp2J
#while/lstm_cell_23/ReadVariableOp_1#while/lstm_cell_23/ReadVariableOp_12J
#while/lstm_cell_23/ReadVariableOp_2#while/lstm_cell_23/ReadVariableOp_22J
#while/lstm_cell_23/ReadVariableOp_3#while/lstm_cell_23/ReadVariableOp_32R
'while/lstm_cell_23/split/ReadVariableOp'while/lstm_cell_23/split/ReadVariableOp2V
)while/lstm_cell_23/split_1/ReadVariableOp)while/lstm_cell_23/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: "БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*П
serving_defaultЋ
O
embedding_8_input:
#serving_default_embedding_8_input:0џџџџџџџџџP<
dense_190
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:иж
р*
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
b__call__
c_default_save_signature
*d&call_and_return_all_conditional_losses"(
_tf_keras_sequentialє'{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_8_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 41127, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_13", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_8_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 41127, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_13", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Љ

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer№{"class_name": "Embedding", "name": "embedding_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 41127, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80]}}

	variables
regularization_losses
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layerщ{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Р
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
i__call__
*j&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerљ	{"class_name": "LSTM", "name": "lstm_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_13", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 50]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 50]}}
ї

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
k__call__
*l&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"class_name": "Dense", "name": "dense_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 12, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
П
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va"
	optimizer
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
Ъ
(non_trainable_variables
	variables
regularization_losses

)layers
*layer_metrics
trainable_variables
+layer_regularization_losses
,metrics
b__call__
c_default_save_signature
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
,
mserving_default"
signature_map
*:(
ЇС22embedding_8/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
-non_trainable_variables
	variables
regularization_losses

.layers
/layer_metrics
trainable_variables
0layer_regularization_losses
1metrics
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2non_trainable_variables
	variables
regularization_losses

3layers
4layer_metrics
trainable_variables
5layer_regularization_losses
6metrics
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
Ћ

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
n__call__
*o&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "LSTMCell", "name": "lstm_cell_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_23", "trainable": true, "dtype": "float32", "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
Й
;non_trainable_variables
	variables
regularization_losses

<layers
=layer_metrics
trainable_variables
>layer_regularization_losses
?metrics

@states
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_19/kernel
:2dense_19/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
Anon_trainable_variables
	variables
regularization_losses

Blayers
Clayer_metrics
trainable_variables
Dlayer_regularization_losses
Emetrics
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	22lstm_13/lstm_cell_23/kernel
8:6	d2%lstm_13/lstm_cell_23/recurrent_kernel
(:&2lstm_13/lstm_cell_23/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
­
Hnon_trainable_variables
7	variables
8regularization_losses

Ilayers
Jlayer_metrics
9trainable_variables
Klayer_regularization_losses
Lmetrics
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Л
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
џ
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
/:-
ЇС22Adam/embedding_8/embeddings/m
&:$d2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
3:1	22"Adam/lstm_13/lstm_cell_23/kernel/m
=:;	d2,Adam/lstm_13/lstm_cell_23/recurrent_kernel/m
-:+2 Adam/lstm_13/lstm_cell_23/bias/m
/:-
ЇС22Adam/embedding_8/embeddings/v
&:$d2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v
3:1	22"Adam/lstm_13/lstm_cell_23/kernel/v
=:;	d2,Adam/lstm_13/lstm_cell_23/recurrent_kernel/v
-:+2 Adam/lstm_13/lstm_cell_23/bias/v
2џ
-__inference_sequential_8_layer_call_fn_460847
-__inference_sequential_8_layer_call_fn_461591
-__inference_sequential_8_layer_call_fn_461574
-__inference_sequential_8_layer_call_fn_460810Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
щ2ц
!__inference__wrapped_model_459151Р
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *0Ђ-
+(
embedding_8_inputџџџџџџџџџP
ю2ы
H__inference_sequential_8_layer_call_and_return_conditional_losses_461288
H__inference_sequential_8_layer_call_and_return_conditional_losses_460752
H__inference_sequential_8_layer_call_and_return_conditional_losses_461557
H__inference_sequential_8_layer_call_and_return_conditional_losses_460772Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
,__inference_embedding_8_layer_call_fn_461608Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_embedding_8_layer_call_and_return_conditional_losses_461601Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
4__inference_spatial_dropout1d_8_layer_call_fn_461640
4__inference_spatial_dropout1d_8_layer_call_fn_461682
4__inference_spatial_dropout1d_8_layer_call_fn_461645
4__inference_spatial_dropout1d_8_layer_call_fn_461677Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ў2ћ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461667
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461635
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461630
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461672Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
(__inference_lstm_13_layer_call_fn_462342
(__inference_lstm_13_layer_call_fn_462991
(__inference_lstm_13_layer_call_fn_463002
(__inference_lstm_13_layer_call_fn_462331е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
я2ь
C__inference_lstm_13_layer_call_and_return_conditional_losses_462320
C__inference_lstm_13_layer_call_and_return_conditional_losses_462980
C__inference_lstm_13_layer_call_and_return_conditional_losses_462065
C__inference_lstm_13_layer_call_and_return_conditional_losses_462725е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_dense_19_layer_call_fn_463022Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_19_layer_call_and_return_conditional_losses_463013Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
еBв
$__inference_signature_wrapper_460874embedding_8_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_23_layer_call_fn_463288
-__inference_lstm_cell_23_layer_call_fn_463271О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463170
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463254О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
!__inference__wrapped_model_459151y%'&:Ђ7
0Ђ-
+(
embedding_8_inputџџџџџџџџџP
Њ "3Њ0
.
dense_19"
dense_19џџџџџџџџџЄ
D__inference_dense_19_layer_call_and_return_conditional_losses_463013\/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_19_layer_call_fn_463022O/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "џџџџџџџџџЊ
G__inference_embedding_8_layer_call_and_return_conditional_losses_461601_/Ђ,
%Ђ"
 
inputsџџџџџџџџџP
Њ ")Ђ&

0џџџџџџџџџP2
 
,__inference_embedding_8_layer_call_fn_461608R/Ђ,
%Ђ"
 
inputsџџџџџџџџџP
Њ "џџџџџџџџџP2Д
C__inference_lstm_13_layer_call_and_return_conditional_losses_462065m%'&?Ђ<
5Ђ2
$!
inputsџџџџџџџџџP2

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 Д
C__inference_lstm_13_layer_call_and_return_conditional_losses_462320m%'&?Ђ<
5Ђ2
$!
inputsџџџџџџџџџP2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 Ф
C__inference_lstm_13_layer_call_and_return_conditional_losses_462725}%'&OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 Ф
C__inference_lstm_13_layer_call_and_return_conditional_losses_462980}%'&OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 
(__inference_lstm_13_layer_call_fn_462331`%'&?Ђ<
5Ђ2
$!
inputsџџџџџџџџџP2

 
p

 
Њ "џџџџџџџџџd
(__inference_lstm_13_layer_call_fn_462342`%'&?Ђ<
5Ђ2
$!
inputsџџџџџџџџџP2

 
p 

 
Њ "џџџџџџџџџd
(__inference_lstm_13_layer_call_fn_462991p%'&OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџd
(__inference_lstm_13_layer_call_fn_463002p%'&OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџdЪ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463170§%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ъ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_463254§%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 
-__inference_lstm_cell_23_layer_call_fn_463271э%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџd
-__inference_lstm_cell_23_layer_call_fn_463288э%'&Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdП
H__inference_sequential_8_layer_call_and_return_conditional_losses_460752s%'&BЂ?
8Ђ5
+(
embedding_8_inputџџџџџџџџџP
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
H__inference_sequential_8_layer_call_and_return_conditional_losses_460772s%'&BЂ?
8Ђ5
+(
embedding_8_inputџџџџџџџџџP
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Д
H__inference_sequential_8_layer_call_and_return_conditional_losses_461288h%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџP
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Д
H__inference_sequential_8_layer_call_and_return_conditional_losses_461557h%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџP
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_sequential_8_layer_call_fn_460810f%'&BЂ?
8Ђ5
+(
embedding_8_inputџџџџџџџџџP
p

 
Њ "џџџџџџџџџ
-__inference_sequential_8_layer_call_fn_460847f%'&BЂ?
8Ђ5
+(
embedding_8_inputџџџџџџџџџP
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_8_layer_call_fn_461574[%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџP
p

 
Њ "џџџџџџџџџ
-__inference_sequential_8_layer_call_fn_461591[%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџP
p 

 
Њ "џџџџџџџџџЗ
$__inference_signature_wrapper_460874%'&OЂL
Ђ 
EЊB
@
embedding_8_input+(
embedding_8_inputџџџџџџџџџP"3Њ0
.
dense_19"
dense_19џџџџџџџџџЗ
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461630d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџP2
p
Њ ")Ђ&

0џџџџџџџџџP2
 З
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461635d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџP2
p 
Њ ")Ђ&

0џџџџџџџџџP2
 м
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461667IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 м
O__inference_spatial_dropout1d_8_layer_call_and_return_conditional_losses_461672IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
4__inference_spatial_dropout1d_8_layer_call_fn_461640W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџP2
p
Њ "џџџџџџџџџP2
4__inference_spatial_dropout1d_8_layer_call_fn_461645W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџP2
p 
Њ "џџџџџџџџџP2Г
4__inference_spatial_dropout1d_8_layer_call_fn_461677{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџГ
4__inference_spatial_dropout1d_8_layer_call_fn_461682{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ