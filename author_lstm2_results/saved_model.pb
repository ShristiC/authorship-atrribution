¤+
Ï¤
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
¥
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
¾
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
ö
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
num_elementsintÿÿÿÿÿÿÿÿÿ
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
"serve*2.4.12v2.4.0-49-g85c8b2a817f8°)

embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÿí2*'
shared_nameembedding_4/embeddings

*embedding_4/embeddings/Read/ReadVariableOpReadVariableOpembedding_4/embeddings* 
_output_shapes
:
ÿí2*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:d*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
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

lstm_9/lstm_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*+
shared_namelstm_9/lstm_cell_15/kernel

.lstm_9/lstm_cell_15/kernel/Read/ReadVariableOpReadVariableOplstm_9/lstm_cell_15/kernel*
_output_shapes
:	2*
dtype0
¥
$lstm_9/lstm_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*5
shared_name&$lstm_9/lstm_cell_15/recurrent_kernel

8lstm_9/lstm_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_9/lstm_cell_15/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_9/lstm_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelstm_9/lstm_cell_15/bias

,lstm_9/lstm_cell_15/bias/Read/ReadVariableOpReadVariableOplstm_9/lstm_cell_15/bias*
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
Adam/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÿí2*.
shared_nameAdam/embedding_4/embeddings/m

1Adam/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/m* 
_output_shapes
:
ÿí2*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:*
dtype0

!Adam/lstm_9/lstm_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*2
shared_name#!Adam/lstm_9/lstm_cell_15/kernel/m

5Adam/lstm_9/lstm_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_9/lstm_cell_15/kernel/m*
_output_shapes
:	2*
dtype0
³
+Adam/lstm_9/lstm_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*<
shared_name-+Adam/lstm_9/lstm_cell_15/recurrent_kernel/m
¬
?Adam/lstm_9/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_9/lstm_cell_15/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

Adam/lstm_9/lstm_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_9/lstm_cell_15/bias/m

3Adam/lstm_9/lstm_cell_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_9/lstm_cell_15/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÿí2*.
shared_nameAdam/embedding_4/embeddings/v

1Adam/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/v* 
_output_shapes
:
ÿí2*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:*
dtype0

!Adam/lstm_9/lstm_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*2
shared_name#!Adam/lstm_9/lstm_cell_15/kernel/v

5Adam/lstm_9/lstm_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_9/lstm_cell_15/kernel/v*
_output_shapes
:	2*
dtype0
³
+Adam/lstm_9/lstm_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*<
shared_name-+Adam/lstm_9/lstm_cell_15/recurrent_kernel/v
¬
?Adam/lstm_9/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_9/lstm_cell_15/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

Adam/lstm_9/lstm_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_9/lstm_cell_15/bias/v

3Adam/lstm_9/lstm_cell_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_9/lstm_cell_15/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ï*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ª*
value *B* B*
ó
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
¬
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
VARIABLE_VALUEembedding_4/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
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
¹
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
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VT
VARIABLE_VALUElstm_9/lstm_cell_15/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE$lstm_9/lstm_cell_15/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUElstm_9/lstm_cell_15/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/embedding_4/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/lstm_9/lstm_cell_15/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_9/lstm_cell_15/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/lstm_9/lstm_cell_15/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_4/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/lstm_9/lstm_cell_15/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_9/lstm_cell_15/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/lstm_9/lstm_cell_15/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_4_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿP
Ü
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_4_inputembedding_4/embeddingslstm_9/lstm_cell_15/kernellstm_9/lstm_cell_15/bias$lstm_9/lstm_cell_15/recurrent_kerneldense_12/kerneldense_12/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_100625
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ç
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_4/embeddings/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp.lstm_9/lstm_cell_15/kernel/Read/ReadVariableOp8lstm_9/lstm_cell_15/recurrent_kernel/Read/ReadVariableOp,lstm_9/lstm_cell_15/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_4/embeddings/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp5Adam/lstm_9/lstm_cell_15/kernel/m/Read/ReadVariableOp?Adam/lstm_9/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_9/lstm_cell_15/bias/m/Read/ReadVariableOp1Adam/embedding_4/embeddings/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp5Adam/lstm_9/lstm_cell_15/kernel/v/Read/ReadVariableOp?Adam/lstm_9/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_9/lstm_cell_15/bias/v/Read/ReadVariableOpConst*(
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
__inference__traced_save_103143
¦
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_4/embeddingsdense_12/kerneldense_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_9/lstm_cell_15/kernel$lstm_9/lstm_cell_15/recurrent_kernellstm_9/lstm_cell_15/biastotalcounttotal_1count_1Adam/embedding_4/embeddings/mAdam/dense_12/kernel/mAdam/dense_12/bias/m!Adam/lstm_9/lstm_cell_15/kernel/m+Adam/lstm_9/lstm_cell_15/recurrent_kernel/mAdam/lstm_9/lstm_cell_15/bias/mAdam/embedding_4/embeddings/vAdam/dense_12/kernel/vAdam/dense_12/bias/v!Adam/lstm_9/lstm_cell_15/kernel/v+Adam/lstm_9/lstm_cell_15/recurrent_kernel/vAdam/lstm_9/lstm_cell_15/bias/v*'
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
"__inference__traced_restore_103234¼µ(
«
Ã
while_cond_100308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_100308___redundant_placeholder04
0while_while_cond_100308___redundant_placeholder14
0while_while_cond_100308___redundant_placeholder24
0while_while_cond_100308___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ª
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_98955

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
strided_slice/stack_2â
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
strided_slice_1/stack_2ì
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
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	

F__inference_embedding_4_layer_call_and_return_conditional_losses_99758

inputs
embedding_lookup_99752
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
Castû
embedding_lookupResourceGatherembedding_lookup_99752Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/99752*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/99752*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
ö	
Ý
D__inference_dense_12_layer_call_and_return_conditional_losses_102764

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


'__inference_lstm_9_layer_call_fn_102082
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_9_layer_call_and_return_conditional_losses_996032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0

Î
$sequential_4_lstm_9_while_cond_98758D
@sequential_4_lstm_9_while_sequential_4_lstm_9_while_loop_counterJ
Fsequential_4_lstm_9_while_sequential_4_lstm_9_while_maximum_iterations)
%sequential_4_lstm_9_while_placeholder+
'sequential_4_lstm_9_while_placeholder_1+
'sequential_4_lstm_9_while_placeholder_2+
'sequential_4_lstm_9_while_placeholder_3F
Bsequential_4_lstm_9_while_less_sequential_4_lstm_9_strided_slice_1[
Wsequential_4_lstm_9_while_sequential_4_lstm_9_while_cond_98758___redundant_placeholder0[
Wsequential_4_lstm_9_while_sequential_4_lstm_9_while_cond_98758___redundant_placeholder1[
Wsequential_4_lstm_9_while_sequential_4_lstm_9_while_cond_98758___redundant_placeholder2[
Wsequential_4_lstm_9_while_sequential_4_lstm_9_while_cond_98758___redundant_placeholder3&
"sequential_4_lstm_9_while_identity
Ô
sequential_4/lstm_9/while/LessLess%sequential_4_lstm_9_while_placeholderBsequential_4_lstm_9_while_less_sequential_4_lstm_9_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_4/lstm_9/while/Less
"sequential_4/lstm_9/while/IdentityIdentity"sequential_4/lstm_9/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_4/lstm_9/while/Identity"Q
"sequential_4_lstm_9_while_identity+sequential_4/lstm_9/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ç
¿
B__inference_lstm_9_layer_call_and_return_conditional_losses_102071
inputs_0.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_101935*
condR
while_cond_101934*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Î
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_99791

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
strided_slice/stack_2â
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
strided_slice_1/stack_2ì
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
:ÿÿÿÿÿÿÿÿÿP22
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
Ü
~
)__inference_dense_12_layer_call_fn_102773

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1004862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ÍD
×
A__inference_lstm_9_layer_call_and_return_conditional_losses_99735

inputs
lstm_cell_15_99653
lstm_cell_15_99655
lstm_cell_15_99657
identity¢$lstm_cell_15/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_99653lstm_cell_15_99655lstm_cell_15_99657*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_992402&
$lstm_cell_15/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_99653lstm_cell_15_99655lstm_cell_15_99657*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_99666*
condR
while_cond_99665*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_15/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
å
¾
-__inference_sequential_4_layer_call_fn_101342

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1005832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
±
½
B__inference_lstm_9_layer_call_and_return_conditional_losses_102731

inputs.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
:Pÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_102595*
condR
while_cond_102594*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
ÐÎ

$sequential_4_lstm_9_while_body_98759D
@sequential_4_lstm_9_while_sequential_4_lstm_9_while_loop_counterJ
Fsequential_4_lstm_9_while_sequential_4_lstm_9_while_maximum_iterations)
%sequential_4_lstm_9_while_placeholder+
'sequential_4_lstm_9_while_placeholder_1+
'sequential_4_lstm_9_while_placeholder_2+
'sequential_4_lstm_9_while_placeholder_3C
?sequential_4_lstm_9_while_sequential_4_lstm_9_strided_slice_1_0
{sequential_4_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_9_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_4_lstm_9_while_lstm_cell_15_split_readvariableop_resource_0L
Hsequential_4_lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0D
@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0&
"sequential_4_lstm_9_while_identity(
$sequential_4_lstm_9_while_identity_1(
$sequential_4_lstm_9_while_identity_2(
$sequential_4_lstm_9_while_identity_3(
$sequential_4_lstm_9_while_identity_4(
$sequential_4_lstm_9_while_identity_5A
=sequential_4_lstm_9_while_sequential_4_lstm_9_strided_slice_1}
ysequential_4_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_9_tensorarrayunstack_tensorlistfromtensorH
Dsequential_4_lstm_9_while_lstm_cell_15_split_readvariableop_resourceJ
Fsequential_4_lstm_9_while_lstm_cell_15_split_1_readvariableop_resourceB
>sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource¢5sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp¢7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_1¢7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_2¢7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3¢;sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp¢=sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOpë
Ksequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2M
Ksequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeË
=sequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_9_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_9_while_placeholderTsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02?
=sequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItemä
6sequential_4/lstm_9/while/lstm_cell_15/ones_like/ShapeShapeDsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:28
6sequential_4/lstm_9/while/lstm_cell_15/ones_like/Shapeµ
6sequential_4/lstm_9/while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/lstm_9/while/lstm_cell_15/ones_like/Const 
0sequential_4/lstm_9/while/lstm_cell_15/ones_likeFill?sequential_4/lstm_9/while/lstm_cell_15/ones_like/Shape:output:0?sequential_4/lstm_9/while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
0sequential_4/lstm_9/while/lstm_cell_15/ones_likeË
8sequential_4/lstm_9/while/lstm_cell_15/ones_like_1/ShapeShape'sequential_4_lstm_9_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_4/lstm_9/while/lstm_cell_15/ones_like_1/Shape¹
8sequential_4/lstm_9/while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_4/lstm_9/while/lstm_cell_15/ones_like_1/Const¨
2sequential_4/lstm_9/while/lstm_cell_15/ones_like_1FillAsequential_4/lstm_9/while/lstm_cell_15/ones_like_1/Shape:output:0Asequential_4/lstm_9/while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd24
2sequential_4/lstm_9/while/lstm_cell_15/ones_like_1
*sequential_4/lstm_9/while/lstm_cell_15/mulMulDsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_4/lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*sequential_4/lstm_9/while/lstm_cell_15/mul
,sequential_4/lstm_9/while/lstm_cell_15/mul_1MulDsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_4/lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_4/lstm_9/while/lstm_cell_15/mul_1
,sequential_4/lstm_9/while/lstm_cell_15/mul_2MulDsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_4/lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_4/lstm_9/while/lstm_cell_15/mul_2
,sequential_4/lstm_9/while/lstm_cell_15/mul_3MulDsequential_4/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_4/lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_4/lstm_9/while/lstm_cell_15/mul_3
,sequential_4/lstm_9/while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_4/lstm_9/while/lstm_cell_15/Const²
6sequential_4/lstm_9/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_4/lstm_9/while/lstm_cell_15/split/split_dim
;sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOpReadVariableOpFsequential_4_lstm_9_while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02=
;sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOpÃ
,sequential_4/lstm_9/while/lstm_cell_15/splitSplit?sequential_4/lstm_9/while/lstm_cell_15/split/split_dim:output:0Csequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2.
,sequential_4/lstm_9/while/lstm_cell_15/split
-sequential_4/lstm_9/while/lstm_cell_15/MatMulMatMul.sequential_4/lstm_9/while/lstm_cell_15/mul:z:05sequential_4/lstm_9/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2/
-sequential_4/lstm_9/while/lstm_cell_15/MatMul
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_1MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_1:z:05sequential_4/lstm_9/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_1
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_2MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_2:z:05sequential_4/lstm_9/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_2
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_3MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_3:z:05sequential_4/lstm_9/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_3¢
.sequential_4/lstm_9/while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :20
.sequential_4/lstm_9/while/lstm_cell_15/Const_1¶
8sequential_4/lstm_9/while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8sequential_4/lstm_9/while/lstm_cell_15/split_1/split_dim
=sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOpReadVariableOpHsequential_4_lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp»
.sequential_4/lstm_9/while/lstm_cell_15/split_1SplitAsequential_4/lstm_9/while/lstm_cell_15/split_1/split_dim:output:0Esequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split20
.sequential_4/lstm_9/while/lstm_cell_15/split_1
.sequential_4/lstm_9/while/lstm_cell_15/BiasAddBiasAdd7sequential_4/lstm_9/while/lstm_cell_15/MatMul:product:07sequential_4/lstm_9/while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd20
.sequential_4/lstm_9/while/lstm_cell_15/BiasAdd
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_1BiasAdd9sequential_4/lstm_9/while/lstm_cell_15/MatMul_1:product:07sequential_4/lstm_9/while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_1
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_2BiasAdd9sequential_4/lstm_9/while/lstm_cell_15/MatMul_2:product:07sequential_4/lstm_9/while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_2
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_3BiasAdd9sequential_4/lstm_9/while/lstm_cell_15/MatMul_3:product:07sequential_4/lstm_9/while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_3û
,sequential_4/lstm_9/while/lstm_cell_15/mul_4Mul'sequential_4_lstm_9_while_placeholder_2;sequential_4/lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_4û
,sequential_4/lstm_9/while/lstm_cell_15/mul_5Mul'sequential_4_lstm_9_while_placeholder_2;sequential_4/lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_5û
,sequential_4/lstm_9/while/lstm_cell_15/mul_6Mul'sequential_4_lstm_9_while_placeholder_2;sequential_4/lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_6û
,sequential_4/lstm_9/while/lstm_cell_15/mul_7Mul'sequential_4_lstm_9_while_placeholder_2;sequential_4/lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_7ð
5sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOpReadVariableOp@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype027
5sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOpÉ
:sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stackÍ
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2>
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_1Í
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_2æ
4sequential_4/lstm_9/while/lstm_cell_15/strided_sliceStridedSlice=sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp:value:0Csequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack:output:0Esequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_1:output:0Esequential_4/lstm_9/while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask26
4sequential_4/lstm_9/while/lstm_cell_15/strided_slice
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_4MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_4:z:0=sequential_4/lstm_9/while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_4
*sequential_4/lstm_9/while/lstm_cell_15/addAddV27sequential_4/lstm_9/while/lstm_cell_15/BiasAdd:output:09sequential_4/lstm_9/while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/while/lstm_cell_15/addÍ
.sequential_4/lstm_9/while/lstm_cell_15/SigmoidSigmoid.sequential_4/lstm_9/while/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd20
.sequential_4/lstm_9/while/lstm_cell_15/Sigmoidô
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_1ReadVariableOp@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype029
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_1Í
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2>
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stackÑ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_1Ñ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_2ò
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1StridedSlice?sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_1:value:0Esequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_1:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask28
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_5MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_5:z:0?sequential_4/lstm_9/while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_5
,sequential_4/lstm_9/while/lstm_cell_15/add_1AddV29sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_1:output:09sequential_4/lstm_9/while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/add_1Ó
0sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_1Sigmoid0sequential_4/lstm_9/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_1ô
,sequential_4/lstm_9/while/lstm_cell_15/mul_8Mul4sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_1:y:0'sequential_4_lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_8ô
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_2ReadVariableOp@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype029
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_2Í
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2>
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stackÑ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_1Ñ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_2ò
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2StridedSlice?sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_2:value:0Esequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_1:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask28
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_6MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_6:z:0?sequential_4/lstm_9/while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_6
,sequential_4/lstm_9/while/lstm_cell_15/add_2AddV29sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_2:output:09sequential_4/lstm_9/while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/add_2Æ
+sequential_4/lstm_9/while/lstm_cell_15/TanhTanh0sequential_4/lstm_9/while/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2-
+sequential_4/lstm_9/while/lstm_cell_15/Tanhú
,sequential_4/lstm_9/while/lstm_cell_15/mul_9Mul2sequential_4/lstm_9/while/lstm_cell_15/Sigmoid:y:0/sequential_4/lstm_9/while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/mul_9û
,sequential_4/lstm_9/while/lstm_cell_15/add_3AddV20sequential_4/lstm_9/while/lstm_cell_15/mul_8:z:00sequential_4/lstm_9/while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/add_3ô
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3ReadVariableOp@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype029
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3Í
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2>
<sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stackÑ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_1Ñ
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_2ò
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3StridedSlice?sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3:value:0Esequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_1:output:0Gsequential_4/lstm_9/while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask28
6sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_7MatMul0sequential_4/lstm_9/while/lstm_cell_15/mul_7:z:0?sequential_4/lstm_9/while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/sequential_4/lstm_9/while/lstm_cell_15/MatMul_7
,sequential_4/lstm_9/while/lstm_cell_15/add_4AddV29sequential_4/lstm_9/while/lstm_cell_15/BiasAdd_3:output:09sequential_4/lstm_9/while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/while/lstm_cell_15/add_4Ó
0sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_2Sigmoid0sequential_4/lstm_9/while/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_2Ê
-sequential_4/lstm_9/while/lstm_cell_15/Tanh_1Tanh0sequential_4/lstm_9/while/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2/
-sequential_4/lstm_9/while/lstm_cell_15/Tanh_1
-sequential_4/lstm_9/while/lstm_cell_15/mul_10Mul4sequential_4/lstm_9/while/lstm_cell_15/Sigmoid_2:y:01sequential_4/lstm_9/while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2/
-sequential_4/lstm_9/while/lstm_cell_15/mul_10Å
>sequential_4/lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_9_while_placeholder_1%sequential_4_lstm_9_while_placeholder1sequential_4/lstm_9/while/lstm_cell_15/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_4/lstm_9/while/TensorArrayV2Write/TensorListSetItem
sequential_4/lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_4/lstm_9/while/add/y¹
sequential_4/lstm_9/while/addAddV2%sequential_4_lstm_9_while_placeholder(sequential_4/lstm_9/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_9/while/add
!sequential_4/lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_4/lstm_9/while/add_1/yÚ
sequential_4/lstm_9/while/add_1AddV2@sequential_4_lstm_9_while_sequential_4_lstm_9_while_loop_counter*sequential_4/lstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_9/while/add_1þ
"sequential_4/lstm_9/while/IdentityIdentity#sequential_4/lstm_9/while/add_1:z:06^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_4/lstm_9/while/Identity¥
$sequential_4/lstm_9/while/Identity_1IdentityFsequential_4_lstm_9_while_sequential_4_lstm_9_while_maximum_iterations6^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_9/while/Identity_1
$sequential_4/lstm_9/while/Identity_2Identity!sequential_4/lstm_9/while/add:z:06^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_9/while/Identity_2­
$sequential_4/lstm_9/while/Identity_3IdentityNsequential_4/lstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:06^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_9/while/Identity_3¡
$sequential_4/lstm_9/while/Identity_4Identity1sequential_4/lstm_9/while/lstm_cell_15/mul_10:z:06^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$sequential_4/lstm_9/while/Identity_4 
$sequential_4/lstm_9/while/Identity_5Identity0sequential_4/lstm_9/while/lstm_cell_15/add_3:z:06^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp8^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_18^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_28^sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_3<^sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp>^sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$sequential_4/lstm_9/while/Identity_5"Q
"sequential_4_lstm_9_while_identity+sequential_4/lstm_9/while/Identity:output:0"U
$sequential_4_lstm_9_while_identity_1-sequential_4/lstm_9/while/Identity_1:output:0"U
$sequential_4_lstm_9_while_identity_2-sequential_4/lstm_9/while/Identity_2:output:0"U
$sequential_4_lstm_9_while_identity_3-sequential_4/lstm_9/while/Identity_3:output:0"U
$sequential_4_lstm_9_while_identity_4-sequential_4/lstm_9/while/Identity_4:output:0"U
$sequential_4_lstm_9_while_identity_5-sequential_4/lstm_9/while/Identity_5:output:0"
>sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource@sequential_4_lstm_9_while_lstm_cell_15_readvariableop_resource_0"
Fsequential_4_lstm_9_while_lstm_cell_15_split_1_readvariableop_resourceHsequential_4_lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0"
Dsequential_4_lstm_9_while_lstm_cell_15_split_readvariableop_resourceFsequential_4_lstm_9_while_lstm_cell_15_split_readvariableop_resource_0"
=sequential_4_lstm_9_while_sequential_4_lstm_9_strided_slice_1?sequential_4_lstm_9_while_sequential_4_lstm_9_strided_slice_1_0"ø
ysequential_4_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_9_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2n
5sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp5sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp2r
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_17sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_12r
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_27sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_22r
7sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_37sequential_4/lstm_9/while/lstm_cell_15/ReadVariableOp_32z
;sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp;sequential_4/lstm_9/while/lstm_cell_15/split/ReadVariableOp2~
=sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp=sequential_4/lstm_9/while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
«
ÿ
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_99156

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÒ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2 °2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ö¡³2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¾Ùõ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2»­2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeØ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÌA2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÆ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ã£2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÆ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeØ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2úg2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÆ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÙ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Í´2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÆ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

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
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2ü
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates

m
4__inference_spatial_dropout1d_4_layer_call_fn_101391

inputs
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_989552
StatefulPartitionedCall¤
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥û
¿
B__inference_lstm_9_layer_call_and_return_conditional_losses_101816
inputs_0.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like}
lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout/Const³
lstm_cell_15/dropout/MulMullstm_cell_15/ones_like:output:0#lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul
lstm_cell_15/dropout/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout/Shapeú
1lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed223
1lstm_cell_15/dropout/random_uniform/RandomUniform
#lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2%
#lstm_cell_15/dropout/GreaterEqual/yò
!lstm_cell_15/dropout/GreaterEqualGreaterEqual:lstm_cell_15/dropout/random_uniform/RandomUniform:output:0,lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_cell_15/dropout/GreaterEqual¦
lstm_cell_15/dropout/CastCast%lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Cast®
lstm_cell_15/dropout/Mul_1Mullstm_cell_15/dropout/Mul:z:0lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul_1
lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_1/Const¹
lstm_cell_15/dropout_1/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul
lstm_cell_15/dropout_1/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_1/Shape
3lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ý25
3lstm_cell_15/dropout_1/random_uniform/RandomUniform
%lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_1/GreaterEqual/yú
#lstm_cell_15/dropout_1/GreaterEqualGreaterEqual<lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_1/GreaterEqual¬
lstm_cell_15/dropout_1/CastCast'lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Cast¶
lstm_cell_15/dropout_1/Mul_1Mullstm_cell_15/dropout_1/Mul:z:0lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul_1
lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_2/Const¹
lstm_cell_15/dropout_2/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul
lstm_cell_15/dropout_2/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_2/Shape
3lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2é25
3lstm_cell_15/dropout_2/random_uniform/RandomUniform
%lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_2/GreaterEqual/yú
#lstm_cell_15/dropout_2/GreaterEqualGreaterEqual<lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_2/GreaterEqual¬
lstm_cell_15/dropout_2/CastCast'lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Cast¶
lstm_cell_15/dropout_2/Mul_1Mullstm_cell_15/dropout_2/Mul:z:0lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul_1
lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_3/Const¹
lstm_cell_15/dropout_3/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul
lstm_cell_15/dropout_3/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_3/Shape
3lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2·î25
3lstm_cell_15/dropout_3/random_uniform/RandomUniform
%lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_3/GreaterEqual/yú
#lstm_cell_15/dropout_3/GreaterEqualGreaterEqual<lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_3/GreaterEqual¬
lstm_cell_15/dropout_3/CastCast'lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Cast¶
lstm_cell_15/dropout_3/Mul_1Mullstm_cell_15/dropout_3/Mul:z:0lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul_1~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_4/Const»
lstm_cell_15/dropout_4/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul
lstm_cell_15/dropout_4/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_4/Shape
3lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÝÂ25
3lstm_cell_15/dropout_4/random_uniform/RandomUniform
%lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_4/GreaterEqual/yú
#lstm_cell_15/dropout_4/GreaterEqualGreaterEqual<lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_4/GreaterEqual¬
lstm_cell_15/dropout_4/CastCast'lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Cast¶
lstm_cell_15/dropout_4/Mul_1Mullstm_cell_15/dropout_4/Mul:z:0lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul_1
lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_5/Const»
lstm_cell_15/dropout_5/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul
lstm_cell_15/dropout_5/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_5/Shape
3lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ëò25
3lstm_cell_15/dropout_5/random_uniform/RandomUniform
%lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_5/GreaterEqual/yú
#lstm_cell_15/dropout_5/GreaterEqualGreaterEqual<lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_5/GreaterEqual¬
lstm_cell_15/dropout_5/CastCast'lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Cast¶
lstm_cell_15/dropout_5/Mul_1Mullstm_cell_15/dropout_5/Mul:z:0lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul_1
lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_6/Const»
lstm_cell_15/dropout_6/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul
lstm_cell_15/dropout_6/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_6/Shapeÿ
3lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ç225
3lstm_cell_15/dropout_6/random_uniform/RandomUniform
%lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_6/GreaterEqual/yú
#lstm_cell_15/dropout_6/GreaterEqualGreaterEqual<lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_6/GreaterEqual¬
lstm_cell_15/dropout_6/CastCast'lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Cast¶
lstm_cell_15/dropout_6/Mul_1Mullstm_cell_15/dropout_6/Mul:z:0lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul_1
lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_7/Const»
lstm_cell_15/dropout_7/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul
lstm_cell_15/dropout_7/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_7/Shape
3lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ùµó25
3lstm_cell_15/dropout_7/random_uniform/RandomUniform
%lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_7/GreaterEqual/yú
#lstm_cell_15/dropout_7/GreaterEqualGreaterEqual<lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_7/GreaterEqual¬
lstm_cell_15/dropout_7/CastCast'lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Cast¶
lstm_cell_15/dropout_7/Mul_1Mullstm_cell_15/dropout_7/Mul:z:0lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0 lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0 lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0 lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0 lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0 lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0 lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0 lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_101616*
condR
while_cond_101615*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
¦
¾
while_cond_99533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_99533___redundant_placeholder03
/while_while_cond_99533___redundant_placeholder13
/while_while_cond_99533___redundant_placeholder23
/while_while_cond_99533___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ß	

G__inference_embedding_4_layer_call_and_return_conditional_losses_101352

inputs
embedding_lookup_101346
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
Castý
embedding_lookupResourceGatherembedding_lookup_101346Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/101346*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/101346*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
ö	
Ý
D__inference_dense_12_layer_call_and_return_conditional_losses_100486

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


'__inference_lstm_9_layer_call_fn_102753

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1004452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
©
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_98965

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ò
while_body_100309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1Â
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÆ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Æ
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Æ
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3«
while/lstm_cell_15/mul_4Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4«
while/lstm_cell_15/mul_5Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5«
while/lstm_cell_15/mul_6Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6«
while/lstm_cell_15/mul_7Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
á
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_99796

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
Õ
À
$__inference_signature_wrapper_100625
embedding_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_989022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input
ÍD
×
A__inference_lstm_9_layer_call_and_return_conditional_losses_99603

inputs
lstm_cell_15_99521
lstm_cell_15_99523
lstm_cell_15_99525
identity¢$lstm_cell_15/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_99521lstm_cell_15_99523lstm_cell_15_99525*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_991562&
$lstm_cell_15/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_99521lstm_cell_15_99523lstm_cell_15_99525*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_99534*
condR
while_cond_99533*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_15/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
Í
-__inference_lstm_cell_15_layer_call_fn_103022

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_991562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
Å
ú
H__inference_sequential_4_layer_call_and_return_conditional_losses_100546

inputs
embedding_4_100529
lstm_9_100533
lstm_9_100535
lstm_9_100537
dense_12_100540
dense_12_100542
identity¢ dense_12/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCall¢+spatial_dropout1d_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_4_100529*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_997582%
#embedding_4/StatefulPartitionedCall¶
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997912-
+spatial_dropout1d_4/StatefulPartitionedCallÉ
lstm_9/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0lstm_9_100533lstm_9_100535lstm_9_100537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1001902 
lstm_9/StatefulPartitionedCallµ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_12_100540dense_12_100542*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1004862"
 dense_12/StatefulPartitionedCall
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
êÌ
ï
H__inference_sequential_4_layer_call_and_return_conditional_losses_101039

inputs'
#embedding_4_embedding_lookup_1006295
1lstm_9_lstm_cell_15_split_readvariableop_resource7
3lstm_9_lstm_cell_15_split_1_readvariableop_resource/
+lstm_9_lstm_cell_15_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢embedding_4/embedding_lookup¢"lstm_9/lstm_cell_15/ReadVariableOp¢$lstm_9/lstm_cell_15/ReadVariableOp_1¢$lstm_9/lstm_cell_15/ReadVariableOp_2¢$lstm_9/lstm_cell_15/ReadVariableOp_3¢(lstm_9/lstm_cell_15/split/ReadVariableOp¢*lstm_9/lstm_cell_15/split_1/ReadVariableOp¢lstm_9/whileu
embedding_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
embedding_4/Cast¹
embedding_4/embedding_lookupResourceGather#embedding_4_embedding_lookup_100629embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_4/embedding_lookup/100629*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
dtype02
embedding_4/embedding_lookup
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_4/embedding_lookup/100629*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22'
%embedding_4/embedding_lookup/IdentityÄ
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22)
'embedding_4/embedding_lookup/Identity_1
spatial_dropout1d_4/ShapeShape0embedding_4/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_4/Shape
'spatial_dropout1d_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_4/strided_slice/stack 
)spatial_dropout1d_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_1 
)spatial_dropout1d_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_2Ú
!spatial_dropout1d_4/strided_sliceStridedSlice"spatial_dropout1d_4/Shape:output:00spatial_dropout1d_4/strided_slice/stack:output:02spatial_dropout1d_4/strided_slice/stack_1:output:02spatial_dropout1d_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_4/strided_slice 
)spatial_dropout1d_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice_1/stack¤
+spatial_dropout1d_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_1¤
+spatial_dropout1d_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_2ä
#spatial_dropout1d_4/strided_slice_1StridedSlice"spatial_dropout1d_4/Shape:output:02spatial_dropout1d_4/strided_slice_1/stack:output:04spatial_dropout1d_4/strided_slice_1/stack_1:output:04spatial_dropout1d_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_4/strided_slice_1
!spatial_dropout1d_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!spatial_dropout1d_4/dropout/ConstÝ
spatial_dropout1d_4/dropout/MulMul0embedding_4/embedding_lookup/Identity_1:output:0*spatial_dropout1d_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22!
spatial_dropout1d_4/dropout/Mulª
2spatial_dropout1d_4/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_4/dropout/random_uniform/shape/1±
0spatial_dropout1d_4/dropout/random_uniform/shapePack*spatial_dropout1d_4/strided_slice:output:0;spatial_dropout1d_4/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_4/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_4/dropout/random_uniform/shape
8spatial_dropout1d_4/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_4/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02:
8spatial_dropout1d_4/dropout/random_uniform/RandomUniform
*spatial_dropout1d_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*spatial_dropout1d_4/dropout/GreaterEqual/y
(spatial_dropout1d_4/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_4/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(spatial_dropout1d_4/dropout/GreaterEqualÈ
 spatial_dropout1d_4/dropout/CastCast,spatial_dropout1d_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 spatial_dropout1d_4/dropout/CastÎ
!spatial_dropout1d_4/dropout/Mul_1Mul#spatial_dropout1d_4/dropout/Mul:z:0$spatial_dropout1d_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22#
!spatial_dropout1d_4/dropout/Mul_1q
lstm_9/ShapeShape%spatial_dropout1d_4/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_9/Shape
lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice/stack
lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_9/strided_slice/stack_1
lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_9/strided_slice/stack_2
lstm_9/strided_sliceStridedSlicelstm_9/Shape:output:0#lstm_9/strided_slice/stack:output:0%lstm_9/strided_slice/stack_1:output:0%lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_9/strided_slicej
lstm_9/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros/mul/y
lstm_9/zeros/mulMullstm_9/strided_slice:output:0lstm_9/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros/mulm
lstm_9/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_9/zeros/Less/y
lstm_9/zeros/LessLesslstm_9/zeros/mul:z:0lstm_9/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros/Lessp
lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros/packed/1
lstm_9/zeros/packedPacklstm_9/strided_slice:output:0lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_9/zeros/packedm
lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/zeros/Const
lstm_9/zerosFilllstm_9/zeros/packed:output:0lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/zerosn
lstm_9/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros_1/mul/y
lstm_9/zeros_1/mulMullstm_9/strided_slice:output:0lstm_9/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros_1/mulq
lstm_9/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_9/zeros_1/Less/y
lstm_9/zeros_1/LessLesslstm_9/zeros_1/mul:z:0lstm_9/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros_1/Lesst
lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros_1/packed/1¥
lstm_9/zeros_1/packedPacklstm_9/strided_slice:output:0 lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_9/zeros_1/packedq
lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/zeros_1/Const
lstm_9/zeros_1Filllstm_9/zeros_1/packed:output:0lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/zeros_1
lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_9/transpose/perm®
lstm_9/transpose	Transpose%spatial_dropout1d_4/dropout/Mul_1:z:0lstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿ22
lstm_9/transposed
lstm_9/Shape_1Shapelstm_9/transpose:y:0*
T0*
_output_shapes
:2
lstm_9/Shape_1
lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice_1/stack
lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_1/stack_1
lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_1/stack_2
lstm_9/strided_slice_1StridedSlicelstm_9/Shape_1:output:0%lstm_9/strided_slice_1/stack:output:0'lstm_9/strided_slice_1/stack_1:output:0'lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_9/strided_slice_1
"lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_9/TensorArrayV2/element_shapeÎ
lstm_9/TensorArrayV2TensorListReserve+lstm_9/TensorArrayV2/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_9/TensorArrayV2Í
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2>
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_9/transpose:y:0Elstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_9/TensorArrayUnstack/TensorListFromTensor
lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice_2/stack
lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_2/stack_1
lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_2/stack_2¦
lstm_9/strided_slice_2StridedSlicelstm_9/transpose:y:0%lstm_9/strided_slice_2/stack:output:0'lstm_9/strided_slice_2/stack_1:output:0'lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_9/strided_slice_2
#lstm_9/lstm_cell_15/ones_like/ShapeShapelstm_9/strided_slice_2:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/ones_like/Shape
#lstm_9/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_9/lstm_cell_15/ones_like/ConstÔ
lstm_9/lstm_cell_15/ones_likeFill,lstm_9/lstm_cell_15/ones_like/Shape:output:0,lstm_9/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/ones_like
!lstm_9/lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!lstm_9/lstm_cell_15/dropout/ConstÏ
lstm_9/lstm_cell_15/dropout/MulMul&lstm_9/lstm_cell_15/ones_like:output:0*lstm_9/lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/lstm_cell_15/dropout/Mul
!lstm_9/lstm_cell_15/dropout/ShapeShape&lstm_9/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2#
!lstm_9/lstm_cell_15/dropout/Shape
8lstm_9/lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform*lstm_9/lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2³µ2:
8lstm_9/lstm_cell_15/dropout/random_uniform/RandomUniform
*lstm_9/lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*lstm_9/lstm_cell_15/dropout/GreaterEqual/y
(lstm_9/lstm_cell_15/dropout/GreaterEqualGreaterEqualAlstm_9/lstm_cell_15/dropout/random_uniform/RandomUniform:output:03lstm_9/lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_9/lstm_cell_15/dropout/GreaterEqual»
 lstm_9/lstm_cell_15/dropout/CastCast,lstm_9/lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_9/lstm_cell_15/dropout/CastÊ
!lstm_9/lstm_cell_15/dropout/Mul_1Mul#lstm_9/lstm_cell_15/dropout/Mul:z:0$lstm_9/lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_9/lstm_cell_15/dropout/Mul_1
#lstm_9/lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_1/ConstÕ
!lstm_9/lstm_cell_15/dropout_1/MulMul&lstm_9/lstm_cell_15/ones_like:output:0,lstm_9/lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_9/lstm_cell_15/dropout_1/Mul 
#lstm_9/lstm_cell_15/dropout_1/ShapeShape&lstm_9/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_1/Shape
:lstm_9/lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2·ØÂ2<
:lstm_9/lstm_cell_15/dropout_1/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_1/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_1/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*lstm_9/lstm_cell_15/dropout_1/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_1/CastCast.lstm_9/lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_9/lstm_cell_15/dropout_1/CastÒ
#lstm_9/lstm_cell_15/dropout_1/Mul_1Mul%lstm_9/lstm_cell_15/dropout_1/Mul:z:0&lstm_9/lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_9/lstm_cell_15/dropout_1/Mul_1
#lstm_9/lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_2/ConstÕ
!lstm_9/lstm_cell_15/dropout_2/MulMul&lstm_9/lstm_cell_15/ones_like:output:0,lstm_9/lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_9/lstm_cell_15/dropout_2/Mul 
#lstm_9/lstm_cell_15/dropout_2/ShapeShape&lstm_9/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_2/Shape
:lstm_9/lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2îñ2<
:lstm_9/lstm_cell_15/dropout_2/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_2/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_2/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*lstm_9/lstm_cell_15/dropout_2/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_2/CastCast.lstm_9/lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_9/lstm_cell_15/dropout_2/CastÒ
#lstm_9/lstm_cell_15/dropout_2/Mul_1Mul%lstm_9/lstm_cell_15/dropout_2/Mul:z:0&lstm_9/lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_9/lstm_cell_15/dropout_2/Mul_1
#lstm_9/lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_3/ConstÕ
!lstm_9/lstm_cell_15/dropout_3/MulMul&lstm_9/lstm_cell_15/ones_like:output:0,lstm_9/lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_9/lstm_cell_15/dropout_3/Mul 
#lstm_9/lstm_cell_15/dropout_3/ShapeShape&lstm_9/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_3/Shape
:lstm_9/lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ò§2<
:lstm_9/lstm_cell_15/dropout_3/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_3/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_3/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*lstm_9/lstm_cell_15/dropout_3/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_3/CastCast.lstm_9/lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_9/lstm_cell_15/dropout_3/CastÒ
#lstm_9/lstm_cell_15/dropout_3/Mul_1Mul%lstm_9/lstm_cell_15/dropout_3/Mul:z:0&lstm_9/lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_9/lstm_cell_15/dropout_3/Mul_1
%lstm_9/lstm_cell_15/ones_like_1/ShapeShapelstm_9/zeros:output:0*
T0*
_output_shapes
:2'
%lstm_9/lstm_cell_15/ones_like_1/Shape
%lstm_9/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_9/lstm_cell_15/ones_like_1/ConstÜ
lstm_9/lstm_cell_15/ones_like_1Fill.lstm_9/lstm_cell_15/ones_like_1/Shape:output:0.lstm_9/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/lstm_cell_15/ones_like_1
#lstm_9/lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_4/Const×
!lstm_9/lstm_cell_15/dropout_4/MulMul(lstm_9/lstm_cell_15/ones_like_1:output:0,lstm_9/lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/lstm_cell_15/dropout_4/Mul¢
#lstm_9/lstm_cell_15/dropout_4/ShapeShape(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_4/Shape
:lstm_9/lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ø»2<
:lstm_9/lstm_cell_15/dropout_4/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_4/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_4/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*lstm_9/lstm_cell_15/dropout_4/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_4/CastCast.lstm_9/lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/lstm_cell_15/dropout_4/CastÒ
#lstm_9/lstm_cell_15/dropout_4/Mul_1Mul%lstm_9/lstm_cell_15/dropout_4/Mul:z:0&lstm_9/lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/lstm_cell_15/dropout_4/Mul_1
#lstm_9/lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_5/Const×
!lstm_9/lstm_cell_15/dropout_5/MulMul(lstm_9/lstm_cell_15/ones_like_1:output:0,lstm_9/lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/lstm_cell_15/dropout_5/Mul¢
#lstm_9/lstm_cell_15/dropout_5/ShapeShape(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_5/Shape
:lstm_9/lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¹ð2<
:lstm_9/lstm_cell_15/dropout_5/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_5/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_5/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*lstm_9/lstm_cell_15/dropout_5/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_5/CastCast.lstm_9/lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/lstm_cell_15/dropout_5/CastÒ
#lstm_9/lstm_cell_15/dropout_5/Mul_1Mul%lstm_9/lstm_cell_15/dropout_5/Mul:z:0&lstm_9/lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/lstm_cell_15/dropout_5/Mul_1
#lstm_9/lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_6/Const×
!lstm_9/lstm_cell_15/dropout_6/MulMul(lstm_9/lstm_cell_15/ones_like_1:output:0,lstm_9/lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/lstm_cell_15/dropout_6/Mul¢
#lstm_9/lstm_cell_15/dropout_6/ShapeShape(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_6/Shape
:lstm_9/lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ì±¾2<
:lstm_9/lstm_cell_15/dropout_6/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_6/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_6/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*lstm_9/lstm_cell_15/dropout_6/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_6/CastCast.lstm_9/lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/lstm_cell_15/dropout_6/CastÒ
#lstm_9/lstm_cell_15/dropout_6/Mul_1Mul%lstm_9/lstm_cell_15/dropout_6/Mul:z:0&lstm_9/lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/lstm_cell_15/dropout_6/Mul_1
#lstm_9/lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#lstm_9/lstm_cell_15/dropout_7/Const×
!lstm_9/lstm_cell_15/dropout_7/MulMul(lstm_9/lstm_cell_15/ones_like_1:output:0,lstm_9/lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/lstm_cell_15/dropout_7/Mul¢
#lstm_9/lstm_cell_15/dropout_7/ShapeShape(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/dropout_7/Shape
:lstm_9/lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2²©í2<
:lstm_9/lstm_cell_15/dropout_7/random_uniform/RandomUniform¡
,lstm_9/lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2.
,lstm_9/lstm_cell_15/dropout_7/GreaterEqual/y
*lstm_9/lstm_cell_15/dropout_7/GreaterEqualGreaterEqualClstm_9/lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*lstm_9/lstm_cell_15/dropout_7/GreaterEqualÁ
"lstm_9/lstm_cell_15/dropout_7/CastCast.lstm_9/lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/lstm_cell_15/dropout_7/CastÒ
#lstm_9/lstm_cell_15/dropout_7/Mul_1Mul%lstm_9/lstm_cell_15/dropout_7/Mul:z:0&lstm_9/lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/lstm_cell_15/dropout_7/Mul_1³
lstm_9/lstm_cell_15/mulMullstm_9/strided_slice_2:output:0%lstm_9/lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul¹
lstm_9/lstm_cell_15/mul_1Mullstm_9/strided_slice_2:output:0'lstm_9/lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_1¹
lstm_9/lstm_cell_15/mul_2Mullstm_9/strided_slice_2:output:0'lstm_9/lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_2¹
lstm_9/lstm_cell_15/mul_3Mullstm_9/strided_slice_2:output:0'lstm_9/lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_3x
lstm_9/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/lstm_cell_15/Const
#lstm_9/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_9/lstm_cell_15/split/split_dimÇ
(lstm_9/lstm_cell_15/split/ReadVariableOpReadVariableOp1lstm_9_lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02*
(lstm_9/lstm_cell_15/split/ReadVariableOp÷
lstm_9/lstm_cell_15/splitSplit,lstm_9/lstm_cell_15/split/split_dim:output:00lstm_9/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_9/lstm_cell_15/splitµ
lstm_9/lstm_cell_15/MatMulMatMullstm_9/lstm_cell_15/mul:z:0"lstm_9/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul»
lstm_9/lstm_cell_15/MatMul_1MatMullstm_9/lstm_cell_15/mul_1:z:0"lstm_9/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_1»
lstm_9/lstm_cell_15/MatMul_2MatMullstm_9/lstm_cell_15/mul_2:z:0"lstm_9/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_2»
lstm_9/lstm_cell_15/MatMul_3MatMullstm_9/lstm_cell_15/mul_3:z:0"lstm_9/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_3|
lstm_9/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/lstm_cell_15/Const_1
%lstm_9/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%lstm_9/lstm_cell_15/split_1/split_dimÉ
*lstm_9/lstm_cell_15/split_1/ReadVariableOpReadVariableOp3lstm_9_lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_9/lstm_cell_15/split_1/ReadVariableOpï
lstm_9/lstm_cell_15/split_1Split.lstm_9/lstm_cell_15/split_1/split_dim:output:02lstm_9/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_9/lstm_cell_15/split_1Ã
lstm_9/lstm_cell_15/BiasAddBiasAdd$lstm_9/lstm_cell_15/MatMul:product:0$lstm_9/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAddÉ
lstm_9/lstm_cell_15/BiasAdd_1BiasAdd&lstm_9/lstm_cell_15/MatMul_1:product:0$lstm_9/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_1É
lstm_9/lstm_cell_15/BiasAdd_2BiasAdd&lstm_9/lstm_cell_15/MatMul_2:product:0$lstm_9/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_2É
lstm_9/lstm_cell_15/BiasAdd_3BiasAdd&lstm_9/lstm_cell_15/MatMul_3:product:0$lstm_9/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_3¯
lstm_9/lstm_cell_15/mul_4Mullstm_9/zeros:output:0'lstm_9/lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_4¯
lstm_9/lstm_cell_15/mul_5Mullstm_9/zeros:output:0'lstm_9/lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_5¯
lstm_9/lstm_cell_15/mul_6Mullstm_9/zeros:output:0'lstm_9/lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_6¯
lstm_9/lstm_cell_15/mul_7Mullstm_9/zeros:output:0'lstm_9/lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_7µ
"lstm_9/lstm_cell_15/ReadVariableOpReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02$
"lstm_9/lstm_cell_15/ReadVariableOp£
'lstm_9/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'lstm_9/lstm_cell_15/strided_slice/stack§
)lstm_9/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)lstm_9/lstm_cell_15/strided_slice/stack_1§
)lstm_9/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm_9/lstm_cell_15/strided_slice/stack_2ô
!lstm_9/lstm_cell_15/strided_sliceStridedSlice*lstm_9/lstm_cell_15/ReadVariableOp:value:00lstm_9/lstm_cell_15/strided_slice/stack:output:02lstm_9/lstm_cell_15/strided_slice/stack_1:output:02lstm_9/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2#
!lstm_9/lstm_cell_15/strided_sliceÃ
lstm_9/lstm_cell_15/MatMul_4MatMullstm_9/lstm_cell_15/mul_4:z:0*lstm_9/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_4»
lstm_9/lstm_cell_15/addAddV2$lstm_9/lstm_cell_15/BiasAdd:output:0&lstm_9/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add
lstm_9/lstm_cell_15/SigmoidSigmoidlstm_9/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid¹
$lstm_9/lstm_cell_15/ReadVariableOp_1ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_1§
)lstm_9/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2+
)lstm_9/lstm_cell_15/strided_slice_1/stack«
+lstm_9/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2-
+lstm_9/lstm_cell_15/strided_slice_1/stack_1«
+lstm_9/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_1/stack_2
#lstm_9/lstm_cell_15/strided_slice_1StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_1:value:02lstm_9/lstm_cell_15/strided_slice_1/stack:output:04lstm_9/lstm_cell_15/strided_slice_1/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_1Å
lstm_9/lstm_cell_15/MatMul_5MatMullstm_9/lstm_cell_15/mul_5:z:0,lstm_9/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_5Á
lstm_9/lstm_cell_15/add_1AddV2&lstm_9/lstm_cell_15/BiasAdd_1:output:0&lstm_9/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_1
lstm_9/lstm_cell_15/Sigmoid_1Sigmoidlstm_9/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid_1«
lstm_9/lstm_cell_15/mul_8Mul!lstm_9/lstm_cell_15/Sigmoid_1:y:0lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_8¹
$lstm_9/lstm_cell_15/ReadVariableOp_2ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_2§
)lstm_9/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2+
)lstm_9/lstm_cell_15/strided_slice_2/stack«
+lstm_9/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2-
+lstm_9/lstm_cell_15/strided_slice_2/stack_1«
+lstm_9/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_2/stack_2
#lstm_9/lstm_cell_15/strided_slice_2StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_2:value:02lstm_9/lstm_cell_15/strided_slice_2/stack:output:04lstm_9/lstm_cell_15/strided_slice_2/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_2Å
lstm_9/lstm_cell_15/MatMul_6MatMullstm_9/lstm_cell_15/mul_6:z:0,lstm_9/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_6Á
lstm_9/lstm_cell_15/add_2AddV2&lstm_9/lstm_cell_15/BiasAdd_2:output:0&lstm_9/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_2
lstm_9/lstm_cell_15/TanhTanhlstm_9/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Tanh®
lstm_9/lstm_cell_15/mul_9Mullstm_9/lstm_cell_15/Sigmoid:y:0lstm_9/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_9¯
lstm_9/lstm_cell_15/add_3AddV2lstm_9/lstm_cell_15/mul_8:z:0lstm_9/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_3¹
$lstm_9/lstm_cell_15/ReadVariableOp_3ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_3§
)lstm_9/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2+
)lstm_9/lstm_cell_15/strided_slice_3/stack«
+lstm_9/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm_9/lstm_cell_15/strided_slice_3/stack_1«
+lstm_9/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_3/stack_2
#lstm_9/lstm_cell_15/strided_slice_3StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_3:value:02lstm_9/lstm_cell_15/strided_slice_3/stack:output:04lstm_9/lstm_cell_15/strided_slice_3/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_3Å
lstm_9/lstm_cell_15/MatMul_7MatMullstm_9/lstm_cell_15/mul_7:z:0,lstm_9/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_7Á
lstm_9/lstm_cell_15/add_4AddV2&lstm_9/lstm_cell_15/BiasAdd_3:output:0&lstm_9/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_4
lstm_9/lstm_cell_15/Sigmoid_2Sigmoidlstm_9/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid_2
lstm_9/lstm_cell_15/Tanh_1Tanhlstm_9/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Tanh_1´
lstm_9/lstm_cell_15/mul_10Mul!lstm_9/lstm_cell_15/Sigmoid_2:y:0lstm_9/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_10
$lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2&
$lstm_9/TensorArrayV2_1/element_shapeÔ
lstm_9/TensorArrayV2_1TensorListReserve-lstm_9/TensorArrayV2_1/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_9/TensorArrayV2_1\
lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_9/time
lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_9/while/maximum_iterationsx
lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_9/while/loop_counterÍ
lstm_9/whileWhile"lstm_9/while/loop_counter:output:0(lstm_9/while/maximum_iterations:output:0lstm_9/time:output:0lstm_9/TensorArrayV2_1:handle:0lstm_9/zeros:output:0lstm_9/zeros_1:output:0lstm_9/strided_slice_1:output:0>lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_9_lstm_cell_15_split_readvariableop_resource3lstm_9_lstm_cell_15_split_1_readvariableop_resource+lstm_9_lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_9_while_body_100832*$
condR
lstm_9_while_cond_100831*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
lstm_9/whileÃ
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_9/TensorArrayV2Stack/TensorListStackTensorListStacklstm_9/while:output:3@lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)lstm_9/TensorArrayV2Stack/TensorListStack
lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_9/strided_slice_3/stack
lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_9/strided_slice_3/stack_1
lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_3/stack_2Ä
lstm_9/strided_slice_3StridedSlice2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_9/strided_slice_3/stack:output:0'lstm_9/strided_slice_3/stack_1:output:0'lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
lstm_9/strided_slice_3
lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_9/transpose_1/permÁ
lstm_9/transpose_1	Transpose2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
lstm_9/transpose_1t
lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/runtime¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_12/MatMul/ReadVariableOp§
dense_12/MatMulMatMullstm_9/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/BiasAdd|
dense_12/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/SoftmaxÑ
IdentityIdentitydense_12/Softmax:softmax:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^embedding_4/embedding_lookup#^lstm_9/lstm_cell_15/ReadVariableOp%^lstm_9/lstm_cell_15/ReadVariableOp_1%^lstm_9/lstm_cell_15/ReadVariableOp_2%^lstm_9/lstm_cell_15/ReadVariableOp_3)^lstm_9/lstm_cell_15/split/ReadVariableOp+^lstm_9/lstm_cell_15/split_1/ReadVariableOp^lstm_9/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2H
"lstm_9/lstm_cell_15/ReadVariableOp"lstm_9/lstm_cell_15/ReadVariableOp2L
$lstm_9/lstm_cell_15/ReadVariableOp_1$lstm_9/lstm_cell_15/ReadVariableOp_12L
$lstm_9/lstm_cell_15/ReadVariableOp_2$lstm_9/lstm_cell_15/ReadVariableOp_22L
$lstm_9/lstm_cell_15/ReadVariableOp_3$lstm_9/lstm_cell_15/ReadVariableOp_32T
(lstm_9/lstm_cell_15/split/ReadVariableOp(lstm_9/lstm_cell_15/split/ReadVariableOp2X
*lstm_9/lstm_cell_15/split_1/ReadVariableOp*lstm_9/lstm_cell_15/split_1/ReadVariableOp2
lstm_9/whilelstm_9/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
ðø
Ò
while_body_101616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
 while/lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_15/dropout/ConstË
while/lstm_cell_15/dropout/MulMul%while/lstm_cell_15/ones_like:output:0)while/lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/lstm_cell_15/dropout/Mul
 while/lstm_cell_15/dropout/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_15/dropout/Shape
7while/lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2±¥>29
7while/lstm_cell_15/dropout/random_uniform/RandomUniform
)while/lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)while/lstm_cell_15/dropout/GreaterEqual/y
'while/lstm_cell_15/dropout/GreaterEqualGreaterEqual@while/lstm_cell_15/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/lstm_cell_15/dropout/GreaterEqual¸
while/lstm_cell_15/dropout/CastCast+while/lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_15/dropout/CastÆ
 while/lstm_cell_15/dropout/Mul_1Mul"while/lstm_cell_15/dropout/Mul:z:0#while/lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout/Mul_1
"while/lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_1/ConstÑ
 while/lstm_cell_15/dropout_1/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_1/Mul
"while/lstm_cell_15/dropout_1/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_1/Shape
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2â(2;
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_1/GreaterEqual/y
)while/lstm_cell_15/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_1/GreaterEqual¾
!while/lstm_cell_15/dropout_1/CastCast-while/lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_1/CastÎ
"while/lstm_cell_15/dropout_1/Mul_1Mul$while/lstm_cell_15/dropout_1/Mul:z:0%while/lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_1/Mul_1
"while/lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_2/ConstÑ
 while/lstm_cell_15/dropout_2/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_2/Mul
"while/lstm_cell_15/dropout_2/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_2/Shape
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ãÃ2;
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_2/GreaterEqual/y
)while/lstm_cell_15/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_2/GreaterEqual¾
!while/lstm_cell_15/dropout_2/CastCast-while/lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_2/CastÎ
"while/lstm_cell_15/dropout_2/Mul_1Mul$while/lstm_cell_15/dropout_2/Mul:z:0%while/lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_2/Mul_1
"while/lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_3/ConstÑ
 while/lstm_cell_15/dropout_3/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_3/Mul
"while/lstm_cell_15/dropout_3/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_3/Shape
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ðØÒ2;
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_3/GreaterEqual/y
)while/lstm_cell_15/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_3/GreaterEqual¾
!while/lstm_cell_15/dropout_3/CastCast-while/lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_3/CastÎ
"while/lstm_cell_15/dropout_3/Mul_1Mul$while/lstm_cell_15/dropout_3/Mul:z:0%while/lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_3/Mul_1
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1
"while/lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_4/ConstÓ
 while/lstm_cell_15/dropout_4/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_4/Mul
"while/lstm_cell_15/dropout_4/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_4/Shape
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ßö2;
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_4/GreaterEqual/y
)while/lstm_cell_15/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_4/GreaterEqual¾
!while/lstm_cell_15/dropout_4/CastCast-while/lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_4/CastÎ
"while/lstm_cell_15/dropout_4/Mul_1Mul$while/lstm_cell_15/dropout_4/Mul:z:0%while/lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_4/Mul_1
"while/lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_5/ConstÓ
 while/lstm_cell_15/dropout_5/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_5/Mul
"while/lstm_cell_15/dropout_5/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_5/Shape
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ªæ2;
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_5/GreaterEqual/y
)while/lstm_cell_15/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_5/GreaterEqual¾
!while/lstm_cell_15/dropout_5/CastCast-while/lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_5/CastÎ
"while/lstm_cell_15/dropout_5/Mul_1Mul$while/lstm_cell_15/dropout_5/Mul:z:0%while/lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_5/Mul_1
"while/lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_6/ConstÓ
 while/lstm_cell_15/dropout_6/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_6/Mul
"while/lstm_cell_15/dropout_6/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_6/Shape
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2º¢2;
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_6/GreaterEqual/y
)while/lstm_cell_15/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_6/GreaterEqual¾
!while/lstm_cell_15/dropout_6/CastCast-while/lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_6/CastÎ
"while/lstm_cell_15/dropout_6/Mul_1Mul$while/lstm_cell_15/dropout_6/Mul:z:0%while/lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_6/Mul_1
"while/lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_7/ConstÓ
 while/lstm_cell_15/dropout_7/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_7/Mul
"while/lstm_cell_15/dropout_7/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_7/Shape
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¦ç2;
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_7/GreaterEqual/y
)while/lstm_cell_15/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_7/GreaterEqual¾
!while/lstm_cell_15/dropout_7/CastCast-while/lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_7/CastÎ
"while/lstm_cell_15/dropout_7/Mul_1Mul$while/lstm_cell_15/dropout_7/Mul:z:0%while/lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_7/Mul_1Á
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÇ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Ç
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Ç
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3ª
while/lstm_cell_15/mul_4Mulwhile_placeholder_2&while/lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4ª
while/lstm_cell_15/mul_5Mulwhile_placeholder_2&while/lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5ª
while/lstm_cell_15/mul_6Mulwhile_placeholder_2&while/lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6ª
while/lstm_cell_15/mul_7Mulwhile_placeholder_2&while/lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
±
½
B__inference_lstm_9_layer_call_and_return_conditional_losses_100445

inputs.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
:Pÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0!lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_100309*
condR
while_cond_100308*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
ñø
Ò
while_body_102276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
 while/lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_15/dropout/ConstË
while/lstm_cell_15/dropout/MulMul%while/lstm_cell_15/ones_like:output:0)while/lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/lstm_cell_15/dropout/Mul
 while/lstm_cell_15/dropout/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_15/dropout/Shape
7while/lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2÷¯¹29
7while/lstm_cell_15/dropout/random_uniform/RandomUniform
)while/lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)while/lstm_cell_15/dropout/GreaterEqual/y
'while/lstm_cell_15/dropout/GreaterEqualGreaterEqual@while/lstm_cell_15/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/lstm_cell_15/dropout/GreaterEqual¸
while/lstm_cell_15/dropout/CastCast+while/lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_15/dropout/CastÆ
 while/lstm_cell_15/dropout/Mul_1Mul"while/lstm_cell_15/dropout/Mul:z:0#while/lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout/Mul_1
"while/lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_1/ConstÑ
 while/lstm_cell_15/dropout_1/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_1/Mul
"while/lstm_cell_15/dropout_1/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_1/Shape
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ö³2;
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_1/GreaterEqual/y
)while/lstm_cell_15/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_1/GreaterEqual¾
!while/lstm_cell_15/dropout_1/CastCast-while/lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_1/CastÎ
"while/lstm_cell_15/dropout_1/Mul_1Mul$while/lstm_cell_15/dropout_1/Mul:z:0%while/lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_1/Mul_1
"while/lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_2/ConstÑ
 while/lstm_cell_15/dropout_2/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_2/Mul
"while/lstm_cell_15/dropout_2/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_2/Shape
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ò2;
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_2/GreaterEqual/y
)while/lstm_cell_15/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_2/GreaterEqual¾
!while/lstm_cell_15/dropout_2/CastCast-while/lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_2/CastÎ
"while/lstm_cell_15/dropout_2/Mul_1Mul$while/lstm_cell_15/dropout_2/Mul:z:0%while/lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_2/Mul_1
"while/lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_3/ConstÑ
 while/lstm_cell_15/dropout_3/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_3/Mul
"while/lstm_cell_15/dropout_3/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_3/Shape
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¬ì\2;
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_3/GreaterEqual/y
)while/lstm_cell_15/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_3/GreaterEqual¾
!while/lstm_cell_15/dropout_3/CastCast-while/lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_3/CastÎ
"while/lstm_cell_15/dropout_3/Mul_1Mul$while/lstm_cell_15/dropout_3/Mul:z:0%while/lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_3/Mul_1
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1
"while/lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_4/ConstÓ
 while/lstm_cell_15/dropout_4/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_4/Mul
"while/lstm_cell_15/dropout_4/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_4/Shape
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÞÜÑ2;
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_4/GreaterEqual/y
)while/lstm_cell_15/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_4/GreaterEqual¾
!while/lstm_cell_15/dropout_4/CastCast-while/lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_4/CastÎ
"while/lstm_cell_15/dropout_4/Mul_1Mul$while/lstm_cell_15/dropout_4/Mul:z:0%while/lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_4/Mul_1
"while/lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_5/ConstÓ
 while/lstm_cell_15/dropout_5/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_5/Mul
"while/lstm_cell_15/dropout_5/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_5/Shape
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ý³2;
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_5/GreaterEqual/y
)while/lstm_cell_15/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_5/GreaterEqual¾
!while/lstm_cell_15/dropout_5/CastCast-while/lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_5/CastÎ
"while/lstm_cell_15/dropout_5/Mul_1Mul$while/lstm_cell_15/dropout_5/Mul:z:0%while/lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_5/Mul_1
"while/lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_6/ConstÓ
 while/lstm_cell_15/dropout_6/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_6/Mul
"while/lstm_cell_15/dropout_6/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_6/Shape
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2·ë2;
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_6/GreaterEqual/y
)while/lstm_cell_15/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_6/GreaterEqual¾
!while/lstm_cell_15/dropout_6/CastCast-while/lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_6/CastÎ
"while/lstm_cell_15/dropout_6/Mul_1Mul$while/lstm_cell_15/dropout_6/Mul:z:0%while/lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_6/Mul_1
"while/lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_7/ConstÓ
 while/lstm_cell_15/dropout_7/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_7/Mul
"while/lstm_cell_15/dropout_7/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_7/Shape
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ãÏ2;
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_7/GreaterEqual/y
)while/lstm_cell_15/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_7/GreaterEqual¾
!while/lstm_cell_15/dropout_7/CastCast-while/lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_7/CastÎ
"while/lstm_cell_15/dropout_7/Mul_1Mul$while/lstm_cell_15/dropout_7/Mul:z:0%while/lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_7/Mul_1Á
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÇ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Ç
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Ç
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3ª
while/lstm_cell_15/mul_4Mulwhile_placeholder_2&while/lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4ª
while/lstm_cell_15/mul_5Mulwhile_placeholder_2&while/lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5ª
while/lstm_cell_15/mul_6Mulwhile_placeholder_2&while/lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6ª
while/lstm_cell_15/mul_7Mulwhile_placeholder_2&while/lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¦
¾
while_cond_99989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_99989___redundant_placeholder03
/while_while_cond_99989___redundant_placeholder13
/while_while_cond_99989___redundant_placeholder23
/while_while_cond_99989___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
º
Í
-__inference_lstm_cell_15_layer_call_fn_103039

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_992402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
ïø
Ñ
while_body_99990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
 while/lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 while/lstm_cell_15/dropout/ConstË
while/lstm_cell_15/dropout/MulMul%while/lstm_cell_15/ones_like:output:0)while/lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/lstm_cell_15/dropout/Mul
 while/lstm_cell_15/dropout/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_15/dropout/Shape
7while/lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2c29
7while/lstm_cell_15/dropout/random_uniform/RandomUniform
)while/lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)while/lstm_cell_15/dropout/GreaterEqual/y
'while/lstm_cell_15/dropout/GreaterEqualGreaterEqual@while/lstm_cell_15/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/lstm_cell_15/dropout/GreaterEqual¸
while/lstm_cell_15/dropout/CastCast+while/lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_15/dropout/CastÆ
 while/lstm_cell_15/dropout/Mul_1Mul"while/lstm_cell_15/dropout/Mul:z:0#while/lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout/Mul_1
"while/lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_1/ConstÑ
 while/lstm_cell_15/dropout_1/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_1/Mul
"while/lstm_cell_15/dropout_1/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_1/Shape
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2å®b2;
9while/lstm_cell_15/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_1/GreaterEqual/y
)while/lstm_cell_15/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_1/GreaterEqual¾
!while/lstm_cell_15/dropout_1/CastCast-while/lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_1/CastÎ
"while/lstm_cell_15/dropout_1/Mul_1Mul$while/lstm_cell_15/dropout_1/Mul:z:0%while/lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_1/Mul_1
"while/lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_2/ConstÑ
 while/lstm_cell_15/dropout_2/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_2/Mul
"while/lstm_cell_15/dropout_2/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_2/Shape
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÉÓª2;
9while/lstm_cell_15/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_2/GreaterEqual/y
)while/lstm_cell_15/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_2/GreaterEqual¾
!while/lstm_cell_15/dropout_2/CastCast-while/lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_2/CastÎ
"while/lstm_cell_15/dropout_2/Mul_1Mul$while/lstm_cell_15/dropout_2/Mul:z:0%while/lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_2/Mul_1
"while/lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_3/ConstÑ
 while/lstm_cell_15/dropout_3/MulMul%while/lstm_cell_15/ones_like:output:0+while/lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_15/dropout_3/Mul
"while/lstm_cell_15/dropout_3/ShapeShape%while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_3/Shape
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2´é2;
9while/lstm_cell_15/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_3/GreaterEqual/y
)while/lstm_cell_15/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)while/lstm_cell_15/dropout_3/GreaterEqual¾
!while/lstm_cell_15/dropout_3/CastCast-while/lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_15/dropout_3/CastÎ
"while/lstm_cell_15/dropout_3/Mul_1Mul$while/lstm_cell_15/dropout_3/Mul:z:0%while/lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"while/lstm_cell_15/dropout_3/Mul_1
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1
"while/lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_4/ConstÓ
 while/lstm_cell_15/dropout_4/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_4/Mul
"while/lstm_cell_15/dropout_4/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_4/Shape
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2úÎ£2;
9while/lstm_cell_15/dropout_4/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_4/GreaterEqual/y
)while/lstm_cell_15/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_4/GreaterEqual¾
!while/lstm_cell_15/dropout_4/CastCast-while/lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_4/CastÎ
"while/lstm_cell_15/dropout_4/Mul_1Mul$while/lstm_cell_15/dropout_4/Mul:z:0%while/lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_4/Mul_1
"while/lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_5/ConstÓ
 while/lstm_cell_15/dropout_5/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_5/Mul
"while/lstm_cell_15/dropout_5/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_5/Shape
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÞÕ2;
9while/lstm_cell_15/dropout_5/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_5/GreaterEqual/y
)while/lstm_cell_15/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_5/GreaterEqual¾
!while/lstm_cell_15/dropout_5/CastCast-while/lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_5/CastÎ
"while/lstm_cell_15/dropout_5/Mul_1Mul$while/lstm_cell_15/dropout_5/Mul:z:0%while/lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_5/Mul_1
"while/lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_6/ConstÓ
 while/lstm_cell_15/dropout_6/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_6/Mul
"while/lstm_cell_15/dropout_6/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_6/Shape
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2³ý2;
9while/lstm_cell_15/dropout_6/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_6/GreaterEqual/y
)while/lstm_cell_15/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_6/GreaterEqual¾
!while/lstm_cell_15/dropout_6/CastCast-while/lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_6/CastÎ
"while/lstm_cell_15/dropout_6/Mul_1Mul$while/lstm_cell_15/dropout_6/Mul:z:0%while/lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_6/Mul_1
"while/lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"while/lstm_cell_15/dropout_7/ConstÓ
 while/lstm_cell_15/dropout_7/MulMul'while/lstm_cell_15/ones_like_1:output:0+while/lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_15/dropout_7/Mul
"while/lstm_cell_15/dropout_7/ShapeShape'while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/dropout_7/Shape
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÕÒ2;
9while/lstm_cell_15/dropout_7/random_uniform/RandomUniform
+while/lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+while/lstm_cell_15/dropout_7/GreaterEqual/y
)while/lstm_cell_15/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)while/lstm_cell_15/dropout_7/GreaterEqual¾
!while/lstm_cell_15/dropout_7/CastCast-while/lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_15/dropout_7/CastÎ
"while/lstm_cell_15/dropout_7/Mul_1Mul$while/lstm_cell_15/dropout_7/Mul:z:0%while/lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"while/lstm_cell_15/dropout_7/Mul_1Á
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÇ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Ç
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Ç
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3ª
while/lstm_cell_15/mul_4Mulwhile_placeholder_2&while/lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4ª
while/lstm_cell_15/mul_5Mulwhile_placeholder_2&while/lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5ª
while/lstm_cell_15/mul_6Mulwhile_placeholder_2&while/lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6ª
while/lstm_cell_15/mul_7Mulwhile_placeholder_2&while/lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 

×
H__inference_sequential_4_layer_call_and_return_conditional_losses_100523
embedding_4_input
embedding_4_100506
lstm_9_100510
lstm_9_100512
lstm_9_100514
dense_12_100517
dense_12_100519
identity¢ dense_12/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_100506*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_997582%
#embedding_4/StatefulPartitionedCall
#spatial_dropout1d_4/PartitionedCallPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997962%
#spatial_dropout1d_4/PartitionedCallÁ
lstm_9/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0lstm_9_100510lstm_9_100512lstm_9_100514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1004452 
lstm_9/StatefulPartitionedCallµ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_12_100517dense_12_100519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1004862"
 dense_12/StatefulPartitionedCallç
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input
þ	
Ï
lstm_9_while_cond_101164*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3,
(lstm_9_while_less_lstm_9_strided_slice_1B
>lstm_9_while_lstm_9_while_cond_101164___redundant_placeholder0B
>lstm_9_while_lstm_9_while_cond_101164___redundant_placeholder1B
>lstm_9_while_lstm_9_while_cond_101164___redundant_placeholder2B
>lstm_9_while_lstm_9_while_cond_101164___redundant_placeholder3
lstm_9_while_identity

lstm_9/while/LessLesslstm_9_while_placeholder(lstm_9_while_less_lstm_9_strided_slice_1*
T0*
_output_shapes
: 2
lstm_9/while/Lessr
lstm_9/while/IdentityIdentitylstm_9/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_9/while/Identity"7
lstm_9_while_identitylstm_9/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:

É
-__inference_sequential_4_layer_call_fn_100598
embedding_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1005832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input
å
¾
-__inference_sequential_4_layer_call_fn_101325

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1005462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
«
Ã
while_cond_102275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_102275___redundant_placeholder04
0while_while_cond_102275___redundant_placeholder14
0while_while_cond_102275___redundant_placeholder24
0while_while_cond_102275___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
úÈ
ï
H__inference_sequential_4_layer_call_and_return_conditional_losses_101308

inputs'
#embedding_4_embedding_lookup_1010435
1lstm_9_lstm_cell_15_split_readvariableop_resource7
3lstm_9_lstm_cell_15_split_1_readvariableop_resource/
+lstm_9_lstm_cell_15_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢embedding_4/embedding_lookup¢"lstm_9/lstm_cell_15/ReadVariableOp¢$lstm_9/lstm_cell_15/ReadVariableOp_1¢$lstm_9/lstm_cell_15/ReadVariableOp_2¢$lstm_9/lstm_cell_15/ReadVariableOp_3¢(lstm_9/lstm_cell_15/split/ReadVariableOp¢*lstm_9/lstm_cell_15/split_1/ReadVariableOp¢lstm_9/whileu
embedding_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
embedding_4/Cast¹
embedding_4/embedding_lookupResourceGather#embedding_4_embedding_lookup_101043embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_4/embedding_lookup/101043*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
dtype02
embedding_4/embedding_lookup
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_4/embedding_lookup/101043*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22'
%embedding_4/embedding_lookup/IdentityÄ
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22)
'embedding_4/embedding_lookup/Identity_1°
spatial_dropout1d_4/IdentityIdentity0embedding_4/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
spatial_dropout1d_4/Identityq
lstm_9/ShapeShape%spatial_dropout1d_4/Identity:output:0*
T0*
_output_shapes
:2
lstm_9/Shape
lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice/stack
lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_9/strided_slice/stack_1
lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_9/strided_slice/stack_2
lstm_9/strided_sliceStridedSlicelstm_9/Shape:output:0#lstm_9/strided_slice/stack:output:0%lstm_9/strided_slice/stack_1:output:0%lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_9/strided_slicej
lstm_9/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros/mul/y
lstm_9/zeros/mulMullstm_9/strided_slice:output:0lstm_9/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros/mulm
lstm_9/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_9/zeros/Less/y
lstm_9/zeros/LessLesslstm_9/zeros/mul:z:0lstm_9/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros/Lessp
lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros/packed/1
lstm_9/zeros/packedPacklstm_9/strided_slice:output:0lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_9/zeros/packedm
lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/zeros/Const
lstm_9/zerosFilllstm_9/zeros/packed:output:0lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/zerosn
lstm_9/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros_1/mul/y
lstm_9/zeros_1/mulMullstm_9/strided_slice:output:0lstm_9/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros_1/mulq
lstm_9/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_9/zeros_1/Less/y
lstm_9/zeros_1/LessLesslstm_9/zeros_1/mul:z:0lstm_9/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_9/zeros_1/Lesst
lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2
lstm_9/zeros_1/packed/1¥
lstm_9/zeros_1/packedPacklstm_9/strided_slice:output:0 lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_9/zeros_1/packedq
lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/zeros_1/Const
lstm_9/zeros_1Filllstm_9/zeros_1/packed:output:0lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/zeros_1
lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_9/transpose/perm®
lstm_9/transpose	Transpose%spatial_dropout1d_4/Identity:output:0lstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿ22
lstm_9/transposed
lstm_9/Shape_1Shapelstm_9/transpose:y:0*
T0*
_output_shapes
:2
lstm_9/Shape_1
lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice_1/stack
lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_1/stack_1
lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_1/stack_2
lstm_9/strided_slice_1StridedSlicelstm_9/Shape_1:output:0%lstm_9/strided_slice_1/stack:output:0'lstm_9/strided_slice_1/stack_1:output:0'lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_9/strided_slice_1
"lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_9/TensorArrayV2/element_shapeÎ
lstm_9/TensorArrayV2TensorListReserve+lstm_9/TensorArrayV2/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_9/TensorArrayV2Í
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2>
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_9/transpose:y:0Elstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_9/TensorArrayUnstack/TensorListFromTensor
lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_9/strided_slice_2/stack
lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_2/stack_1
lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_2/stack_2¦
lstm_9/strided_slice_2StridedSlicelstm_9/transpose:y:0%lstm_9/strided_slice_2/stack:output:0'lstm_9/strided_slice_2/stack_1:output:0'lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_9/strided_slice_2
#lstm_9/lstm_cell_15/ones_like/ShapeShapelstm_9/strided_slice_2:output:0*
T0*
_output_shapes
:2%
#lstm_9/lstm_cell_15/ones_like/Shape
#lstm_9/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_9/lstm_cell_15/ones_like/ConstÔ
lstm_9/lstm_cell_15/ones_likeFill,lstm_9/lstm_cell_15/ones_like/Shape:output:0,lstm_9/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/ones_like
%lstm_9/lstm_cell_15/ones_like_1/ShapeShapelstm_9/zeros:output:0*
T0*
_output_shapes
:2'
%lstm_9/lstm_cell_15/ones_like_1/Shape
%lstm_9/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_9/lstm_cell_15/ones_like_1/ConstÜ
lstm_9/lstm_cell_15/ones_like_1Fill.lstm_9/lstm_cell_15/ones_like_1/Shape:output:0.lstm_9/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/lstm_cell_15/ones_like_1´
lstm_9/lstm_cell_15/mulMullstm_9/strided_slice_2:output:0&lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul¸
lstm_9/lstm_cell_15/mul_1Mullstm_9/strided_slice_2:output:0&lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_1¸
lstm_9/lstm_cell_15/mul_2Mullstm_9/strided_slice_2:output:0&lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_2¸
lstm_9/lstm_cell_15/mul_3Mullstm_9/strided_slice_2:output:0&lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/lstm_cell_15/mul_3x
lstm_9/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/lstm_cell_15/Const
#lstm_9/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_9/lstm_cell_15/split/split_dimÇ
(lstm_9/lstm_cell_15/split/ReadVariableOpReadVariableOp1lstm_9_lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02*
(lstm_9/lstm_cell_15/split/ReadVariableOp÷
lstm_9/lstm_cell_15/splitSplit,lstm_9/lstm_cell_15/split/split_dim:output:00lstm_9/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_9/lstm_cell_15/splitµ
lstm_9/lstm_cell_15/MatMulMatMullstm_9/lstm_cell_15/mul:z:0"lstm_9/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul»
lstm_9/lstm_cell_15/MatMul_1MatMullstm_9/lstm_cell_15/mul_1:z:0"lstm_9/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_1»
lstm_9/lstm_cell_15/MatMul_2MatMullstm_9/lstm_cell_15/mul_2:z:0"lstm_9/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_2»
lstm_9/lstm_cell_15/MatMul_3MatMullstm_9/lstm_cell_15/mul_3:z:0"lstm_9/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_3|
lstm_9/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/lstm_cell_15/Const_1
%lstm_9/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%lstm_9/lstm_cell_15/split_1/split_dimÉ
*lstm_9/lstm_cell_15/split_1/ReadVariableOpReadVariableOp3lstm_9_lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_9/lstm_cell_15/split_1/ReadVariableOpï
lstm_9/lstm_cell_15/split_1Split.lstm_9/lstm_cell_15/split_1/split_dim:output:02lstm_9/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_9/lstm_cell_15/split_1Ã
lstm_9/lstm_cell_15/BiasAddBiasAdd$lstm_9/lstm_cell_15/MatMul:product:0$lstm_9/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAddÉ
lstm_9/lstm_cell_15/BiasAdd_1BiasAdd&lstm_9/lstm_cell_15/MatMul_1:product:0$lstm_9/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_1É
lstm_9/lstm_cell_15/BiasAdd_2BiasAdd&lstm_9/lstm_cell_15/MatMul_2:product:0$lstm_9/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_2É
lstm_9/lstm_cell_15/BiasAdd_3BiasAdd&lstm_9/lstm_cell_15/MatMul_3:product:0$lstm_9/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/BiasAdd_3°
lstm_9/lstm_cell_15/mul_4Mullstm_9/zeros:output:0(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_4°
lstm_9/lstm_cell_15/mul_5Mullstm_9/zeros:output:0(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_5°
lstm_9/lstm_cell_15/mul_6Mullstm_9/zeros:output:0(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_6°
lstm_9/lstm_cell_15/mul_7Mullstm_9/zeros:output:0(lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_7µ
"lstm_9/lstm_cell_15/ReadVariableOpReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02$
"lstm_9/lstm_cell_15/ReadVariableOp£
'lstm_9/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'lstm_9/lstm_cell_15/strided_slice/stack§
)lstm_9/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)lstm_9/lstm_cell_15/strided_slice/stack_1§
)lstm_9/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm_9/lstm_cell_15/strided_slice/stack_2ô
!lstm_9/lstm_cell_15/strided_sliceStridedSlice*lstm_9/lstm_cell_15/ReadVariableOp:value:00lstm_9/lstm_cell_15/strided_slice/stack:output:02lstm_9/lstm_cell_15/strided_slice/stack_1:output:02lstm_9/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2#
!lstm_9/lstm_cell_15/strided_sliceÃ
lstm_9/lstm_cell_15/MatMul_4MatMullstm_9/lstm_cell_15/mul_4:z:0*lstm_9/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_4»
lstm_9/lstm_cell_15/addAddV2$lstm_9/lstm_cell_15/BiasAdd:output:0&lstm_9/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add
lstm_9/lstm_cell_15/SigmoidSigmoidlstm_9/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid¹
$lstm_9/lstm_cell_15/ReadVariableOp_1ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_1§
)lstm_9/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2+
)lstm_9/lstm_cell_15/strided_slice_1/stack«
+lstm_9/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2-
+lstm_9/lstm_cell_15/strided_slice_1/stack_1«
+lstm_9/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_1/stack_2
#lstm_9/lstm_cell_15/strided_slice_1StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_1:value:02lstm_9/lstm_cell_15/strided_slice_1/stack:output:04lstm_9/lstm_cell_15/strided_slice_1/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_1Å
lstm_9/lstm_cell_15/MatMul_5MatMullstm_9/lstm_cell_15/mul_5:z:0,lstm_9/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_5Á
lstm_9/lstm_cell_15/add_1AddV2&lstm_9/lstm_cell_15/BiasAdd_1:output:0&lstm_9/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_1
lstm_9/lstm_cell_15/Sigmoid_1Sigmoidlstm_9/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid_1«
lstm_9/lstm_cell_15/mul_8Mul!lstm_9/lstm_cell_15/Sigmoid_1:y:0lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_8¹
$lstm_9/lstm_cell_15/ReadVariableOp_2ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_2§
)lstm_9/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2+
)lstm_9/lstm_cell_15/strided_slice_2/stack«
+lstm_9/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2-
+lstm_9/lstm_cell_15/strided_slice_2/stack_1«
+lstm_9/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_2/stack_2
#lstm_9/lstm_cell_15/strided_slice_2StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_2:value:02lstm_9/lstm_cell_15/strided_slice_2/stack:output:04lstm_9/lstm_cell_15/strided_slice_2/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_2Å
lstm_9/lstm_cell_15/MatMul_6MatMullstm_9/lstm_cell_15/mul_6:z:0,lstm_9/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_6Á
lstm_9/lstm_cell_15/add_2AddV2&lstm_9/lstm_cell_15/BiasAdd_2:output:0&lstm_9/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_2
lstm_9/lstm_cell_15/TanhTanhlstm_9/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Tanh®
lstm_9/lstm_cell_15/mul_9Mullstm_9/lstm_cell_15/Sigmoid:y:0lstm_9/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_9¯
lstm_9/lstm_cell_15/add_3AddV2lstm_9/lstm_cell_15/mul_8:z:0lstm_9/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_3¹
$lstm_9/lstm_cell_15/ReadVariableOp_3ReadVariableOp+lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02&
$lstm_9/lstm_cell_15/ReadVariableOp_3§
)lstm_9/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2+
)lstm_9/lstm_cell_15/strided_slice_3/stack«
+lstm_9/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm_9/lstm_cell_15/strided_slice_3/stack_1«
+lstm_9/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_9/lstm_cell_15/strided_slice_3/stack_2
#lstm_9/lstm_cell_15/strided_slice_3StridedSlice,lstm_9/lstm_cell_15/ReadVariableOp_3:value:02lstm_9/lstm_cell_15/strided_slice_3/stack:output:04lstm_9/lstm_cell_15/strided_slice_3/stack_1:output:04lstm_9/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2%
#lstm_9/lstm_cell_15/strided_slice_3Å
lstm_9/lstm_cell_15/MatMul_7MatMullstm_9/lstm_cell_15/mul_7:z:0,lstm_9/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/MatMul_7Á
lstm_9/lstm_cell_15/add_4AddV2&lstm_9/lstm_cell_15/BiasAdd_3:output:0&lstm_9/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/add_4
lstm_9/lstm_cell_15/Sigmoid_2Sigmoidlstm_9/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Sigmoid_2
lstm_9/lstm_cell_15/Tanh_1Tanhlstm_9/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/Tanh_1´
lstm_9/lstm_cell_15/mul_10Mul!lstm_9/lstm_cell_15/Sigmoid_2:y:0lstm_9/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/lstm_cell_15/mul_10
$lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2&
$lstm_9/TensorArrayV2_1/element_shapeÔ
lstm_9/TensorArrayV2_1TensorListReserve-lstm_9/TensorArrayV2_1/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_9/TensorArrayV2_1\
lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_9/time
lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_9/while/maximum_iterationsx
lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_9/while/loop_counterÍ
lstm_9/whileWhile"lstm_9/while/loop_counter:output:0(lstm_9/while/maximum_iterations:output:0lstm_9/time:output:0lstm_9/TensorArrayV2_1:handle:0lstm_9/zeros:output:0lstm_9/zeros_1:output:0lstm_9/strided_slice_1:output:0>lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_9_lstm_cell_15_split_readvariableop_resource3lstm_9_lstm_cell_15_split_1_readvariableop_resource+lstm_9_lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_9_while_body_101165*$
condR
lstm_9_while_cond_101164*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
lstm_9/whileÃ
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_9/TensorArrayV2Stack/TensorListStackTensorListStacklstm_9/while:output:3@lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)lstm_9/TensorArrayV2Stack/TensorListStack
lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_9/strided_slice_3/stack
lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_9/strided_slice_3/stack_1
lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_9/strided_slice_3/stack_2Ä
lstm_9/strided_slice_3StridedSlice2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_9/strided_slice_3/stack:output:0'lstm_9/strided_slice_3/stack_1:output:0'lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
lstm_9/strided_slice_3
lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_9/transpose_1/permÁ
lstm_9/transpose_1	Transpose2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
lstm_9/transpose_1t
lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_9/runtime¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_12/MatMul/ReadVariableOp§
dense_12/MatMulMatMullstm_9/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/BiasAdd|
dense_12/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_12/SoftmaxÑ
IdentityIdentitydense_12/Softmax:softmax:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^embedding_4/embedding_lookup#^lstm_9/lstm_cell_15/ReadVariableOp%^lstm_9/lstm_cell_15/ReadVariableOp_1%^lstm_9/lstm_cell_15/ReadVariableOp_2%^lstm_9/lstm_cell_15/ReadVariableOp_3)^lstm_9/lstm_cell_15/split/ReadVariableOp+^lstm_9/lstm_cell_15/split_1/ReadVariableOp^lstm_9/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2H
"lstm_9/lstm_cell_15/ReadVariableOp"lstm_9/lstm_cell_15/ReadVariableOp2L
$lstm_9/lstm_cell_15/ReadVariableOp_1$lstm_9/lstm_cell_15/ReadVariableOp_12L
$lstm_9/lstm_cell_15/ReadVariableOp_2$lstm_9/lstm_cell_15/ReadVariableOp_22L
$lstm_9/lstm_cell_15/ReadVariableOp_3$lstm_9/lstm_cell_15/ReadVariableOp_32T
(lstm_9/lstm_cell_15/split/ReadVariableOp(lstm_9/lstm_cell_15/split/ReadVariableOp2X
*lstm_9/lstm_cell_15/split_1/ReadVariableOp*lstm_9/lstm_cell_15/split_1/ReadVariableOp2
lstm_9/whilelstm_9/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
ª
m
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101386

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
n
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101381

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
strided_slice/stack_2â
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
strided_slice_1/stack_2ì
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
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%

while_body_99666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_15_99690_0
while_lstm_cell_15_99692_0
while_lstm_cell_15_99694_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_15_99690
while_lstm_cell_15_99692
while_lstm_cell_15_99694¢*while/lstm_cell_15/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÝ
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_99690_0while_lstm_cell_15_99692_0while_lstm_cell_15_99694_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_992402,
*while/lstm_cell_15/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1+^while/lstm_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2+^while/lstm_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_15_99690while_lstm_cell_15_99690_0"6
while_lstm_cell_15_99692while_lstm_cell_15_99692_0"6
while_lstm_cell_15_99694while_lstm_cell_15_99694_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
«
Ã
while_cond_102594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_102594___redundant_placeholder04
0while_while_cond_102594___redundant_placeholder14
0while_while_cond_102594___redundant_placeholder24
0while_while_cond_102594___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
¾

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_102921

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ù°2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2×¥2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ã¬2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeØ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ª2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÙ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ã2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÆ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Á³2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÆ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÙ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÖÞí2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÆ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÙ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2»¯2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÆ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

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
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2ü
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
´t

"__inference__traced_restore_103234
file_prefix+
'assignvariableop_embedding_4_embeddings&
"assignvariableop_1_dense_12_kernel$
 assignvariableop_2_dense_12_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate1
-assignvariableop_8_lstm_9_lstm_cell_15_kernel;
7assignvariableop_9_lstm_9_lstm_cell_15_recurrent_kernel0
,assignvariableop_10_lstm_9_lstm_cell_15_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_4_embeddings_m.
*assignvariableop_16_adam_dense_12_kernel_m,
(assignvariableop_17_adam_dense_12_bias_m9
5assignvariableop_18_adam_lstm_9_lstm_cell_15_kernel_mC
?assignvariableop_19_adam_lstm_9_lstm_cell_15_recurrent_kernel_m7
3assignvariableop_20_adam_lstm_9_lstm_cell_15_bias_m5
1assignvariableop_21_adam_embedding_4_embeddings_v.
*assignvariableop_22_adam_dense_12_kernel_v,
(assignvariableop_23_adam_dense_12_bias_v9
5assignvariableop_24_adam_lstm_9_lstm_cell_15_kernel_vC
?assignvariableop_25_adam_lstm_9_lstm_cell_15_recurrent_kernel_v7
3assignvariableop_26_adam_lstm_9_lstm_cell_15_bias_v
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
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

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_4_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_12_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¥
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_12_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ª
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8²
AssignVariableOp_8AssignVariableOp-assignvariableop_8_lstm_9_lstm_cell_15_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¼
AssignVariableOp_9AssignVariableOp7assignvariableop_9_lstm_9_lstm_cell_15_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10´
AssignVariableOp_10AssignVariableOp,assignvariableop_10_lstm_9_lstm_cell_15_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_4_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_12_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_12_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18½
AssignVariableOp_18AssignVariableOp5assignvariableop_18_adam_lstm_9_lstm_cell_15_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ç
AssignVariableOp_19AssignVariableOp?assignvariableop_19_adam_lstm_9_lstm_cell_15_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20»
AssignVariableOp_20AssignVariableOp3assignvariableop_20_adam_lstm_9_lstm_cell_15_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_4_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22²
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_12_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_12_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24½
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_lstm_9_lstm_cell_15_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ç
AssignVariableOp_25AssignVariableOp?assignvariableop_25_adam_lstm_9_lstm_cell_15_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26»
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_lstm_9_lstm_cell_15_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
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
?
¦
__inference__traced_save_103143
file_prefix5
1savev2_embedding_4_embeddings_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop9
5savev2_lstm_9_lstm_cell_15_kernel_read_readvariableopC
?savev2_lstm_9_lstm_cell_15_recurrent_kernel_read_readvariableop7
3savev2_lstm_9_lstm_cell_15_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_4_embeddings_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop@
<savev2_adam_lstm_9_lstm_cell_15_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_9_lstm_cell_15_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_9_lstm_cell_15_bias_m_read_readvariableop<
8savev2_adam_embedding_4_embeddings_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop@
<savev2_adam_lstm_9_lstm_cell_15_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_9_lstm_cell_15_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_9_lstm_cell_15_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices£
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_4_embeddings_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop5savev2_lstm_9_lstm_cell_15_kernel_read_readvariableop?savev2_lstm_9_lstm_cell_15_recurrent_kernel_read_readvariableop3savev2_lstm_9_lstm_cell_15_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_4_embeddings_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop<savev2_adam_lstm_9_lstm_cell_15_kernel_m_read_readvariableopFsavev2_adam_lstm_9_lstm_cell_15_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_9_lstm_cell_15_bias_m_read_readvariableop8savev2_adam_embedding_4_embeddings_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop<savev2_adam_lstm_9_lstm_cell_15_kernel_v_read_readvariableopFsavev2_adam_lstm_9_lstm_cell_15_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_9_lstm_cell_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*Ö
_input_shapesÄ
Á: :
ÿí2:d:: : : : : :	2:	d:: : : : :
ÿí2:d::	2:	d::
ÿí2:d::	2:	d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ÿí2:$ 

_output_shapes

:d: 

_output_shapes
::
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
ÿí2:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	d:!

_output_shapes	
::&"
 
_output_shapes
:
ÿí2:$ 

_output_shapes

:d: 

_output_shapes
::%!

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
ä

H__inference_sequential_4_layer_call_and_return_conditional_losses_100503
embedding_4_input
embedding_4_99767
lstm_9_100468
lstm_9_100470
lstm_9_100472
dense_12_100497
dense_12_100499
identity¢ dense_12/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCall¢+spatial_dropout1d_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_99767*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_997582%
#embedding_4/StatefulPartitionedCall¶
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997912-
+spatial_dropout1d_4/StatefulPartitionedCallÉ
lstm_9/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0lstm_9_100468lstm_9_100470lstm_9_100472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1001902 
lstm_9/StatefulPartitionedCallµ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_12_100497dense_12_100499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1004862"
 dense_12/StatefulPartitionedCall
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input
%

while_body_99534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_15_99558_0
while_lstm_cell_15_99560_0
while_lstm_cell_15_99562_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_15_99558
while_lstm_cell_15_99560
while_lstm_cell_15_99562¢*while/lstm_cell_15/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÝ
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_99558_0while_lstm_cell_15_99560_0while_lstm_cell_15_99562_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_991562,
*while/lstm_cell_15/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1+^while/lstm_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2+^while/lstm_cell_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_15_99558while_lstm_cell_15_99558_0"6
while_lstm_cell_15_99560while_lstm_cell_15_99560_0"6
while_lstm_cell_15_99562while_lstm_cell_15_99562_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
ëú
½
B__inference_lstm_9_layer_call_and_return_conditional_losses_100190

inputs.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
:Pÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like}
lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout/Const³
lstm_cell_15/dropout/MulMullstm_cell_15/ones_like:output:0#lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul
lstm_cell_15/dropout/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout/Shapeú
1lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2äÖ23
1lstm_cell_15/dropout/random_uniform/RandomUniform
#lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2%
#lstm_cell_15/dropout/GreaterEqual/yò
!lstm_cell_15/dropout/GreaterEqualGreaterEqual:lstm_cell_15/dropout/random_uniform/RandomUniform:output:0,lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_cell_15/dropout/GreaterEqual¦
lstm_cell_15/dropout/CastCast%lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Cast®
lstm_cell_15/dropout/Mul_1Mullstm_cell_15/dropout/Mul:z:0lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul_1
lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_1/Const¹
lstm_cell_15/dropout_1/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul
lstm_cell_15/dropout_1/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_1/Shape
3lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÕÒ¦25
3lstm_cell_15/dropout_1/random_uniform/RandomUniform
%lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_1/GreaterEqual/yú
#lstm_cell_15/dropout_1/GreaterEqualGreaterEqual<lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_1/GreaterEqual¬
lstm_cell_15/dropout_1/CastCast'lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Cast¶
lstm_cell_15/dropout_1/Mul_1Mullstm_cell_15/dropout_1/Mul:z:0lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul_1
lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_2/Const¹
lstm_cell_15/dropout_2/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul
lstm_cell_15/dropout_2/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_2/Shape
3lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¾ô25
3lstm_cell_15/dropout_2/random_uniform/RandomUniform
%lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_2/GreaterEqual/yú
#lstm_cell_15/dropout_2/GreaterEqualGreaterEqual<lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_2/GreaterEqual¬
lstm_cell_15/dropout_2/CastCast'lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Cast¶
lstm_cell_15/dropout_2/Mul_1Mullstm_cell_15/dropout_2/Mul:z:0lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul_1
lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_3/Const¹
lstm_cell_15/dropout_3/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul
lstm_cell_15/dropout_3/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_3/Shapeÿ
3lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2á´|25
3lstm_cell_15/dropout_3/random_uniform/RandomUniform
%lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_3/GreaterEqual/yú
#lstm_cell_15/dropout_3/GreaterEqualGreaterEqual<lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_3/GreaterEqual¬
lstm_cell_15/dropout_3/CastCast'lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Cast¶
lstm_cell_15/dropout_3/Mul_1Mullstm_cell_15/dropout_3/Mul:z:0lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul_1~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_4/Const»
lstm_cell_15/dropout_4/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul
lstm_cell_15/dropout_4/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_4/Shapeÿ
3lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2è¢F25
3lstm_cell_15/dropout_4/random_uniform/RandomUniform
%lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_4/GreaterEqual/yú
#lstm_cell_15/dropout_4/GreaterEqualGreaterEqual<lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_4/GreaterEqual¬
lstm_cell_15/dropout_4/CastCast'lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Cast¶
lstm_cell_15/dropout_4/Mul_1Mullstm_cell_15/dropout_4/Mul:z:0lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul_1
lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_5/Const»
lstm_cell_15/dropout_5/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul
lstm_cell_15/dropout_5/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_5/Shape
3lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ñ§25
3lstm_cell_15/dropout_5/random_uniform/RandomUniform
%lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_5/GreaterEqual/yú
#lstm_cell_15/dropout_5/GreaterEqualGreaterEqual<lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_5/GreaterEqual¬
lstm_cell_15/dropout_5/CastCast'lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Cast¶
lstm_cell_15/dropout_5/Mul_1Mullstm_cell_15/dropout_5/Mul:z:0lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul_1
lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_6/Const»
lstm_cell_15/dropout_6/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul
lstm_cell_15/dropout_6/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_6/Shape
3lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ø¥25
3lstm_cell_15/dropout_6/random_uniform/RandomUniform
%lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_6/GreaterEqual/yú
#lstm_cell_15/dropout_6/GreaterEqualGreaterEqual<lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_6/GreaterEqual¬
lstm_cell_15/dropout_6/CastCast'lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Cast¶
lstm_cell_15/dropout_6/Mul_1Mullstm_cell_15/dropout_6/Mul:z:0lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul_1
lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_7/Const»
lstm_cell_15/dropout_7/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul
lstm_cell_15/dropout_7/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_7/Shapeÿ
3lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Õ¡25
3lstm_cell_15/dropout_7/random_uniform/RandomUniform
%lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_7/GreaterEqual/yú
#lstm_cell_15/dropout_7/GreaterEqualGreaterEqual<lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_7/GreaterEqual¬
lstm_cell_15/dropout_7/CastCast'lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Cast¶
lstm_cell_15/dropout_7/Mul_1Mullstm_cell_15/dropout_7/Mul:z:0lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0 lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0 lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0 lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0 lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0 lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0 lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0 lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterâ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_99990*
condR
while_cond_99989*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
Ã
m
4__inference_spatial_dropout1d_4_layer_call_fn_101428

inputs
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
·
P
4__inference_spatial_dropout1d_4_layer_call_fn_101433

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997962
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs

P
4__inference_spatial_dropout1d_4_layer_call_fn_101396

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_989652
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±N
ÿ
G__inference_lstm_cell_15_layer_call_and_return_conditional_losses_99240

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿd2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

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
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2ü
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
â
m
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101423

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
íú
½
B__inference_lstm_9_layer_call_and_return_conditional_losses_102476

inputs.
*lstm_cell_15_split_readvariableop_resource0
,lstm_cell_15_split_1_readvariableop_resource(
$lstm_cell_15_readvariableop_resource
identity¢lstm_cell_15/ReadVariableOp¢lstm_cell_15/ReadVariableOp_1¢lstm_cell_15/ReadVariableOp_2¢lstm_cell_15/ReadVariableOp_3¢!lstm_cell_15/split/ReadVariableOp¢#lstm_cell_15/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2
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
B :è2
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
:ÿÿÿÿÿÿÿÿÿd2	
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
:Pÿÿÿÿÿÿÿÿÿ22
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
lstm_cell_15/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_15/ones_like/Shape
lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_15/ones_like/Const¸
lstm_cell_15/ones_likeFill%lstm_cell_15/ones_like/Shape:output:0%lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/ones_like}
lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout/Const³
lstm_cell_15/dropout/MulMullstm_cell_15/ones_like:output:0#lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul
lstm_cell_15/dropout/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout/Shapeù
1lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ä523
1lstm_cell_15/dropout/random_uniform/RandomUniform
#lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2%
#lstm_cell_15/dropout/GreaterEqual/yò
!lstm_cell_15/dropout/GreaterEqualGreaterEqual:lstm_cell_15/dropout/random_uniform/RandomUniform:output:0,lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_cell_15/dropout/GreaterEqual¦
lstm_cell_15/dropout/CastCast%lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Cast®
lstm_cell_15/dropout/Mul_1Mullstm_cell_15/dropout/Mul:z:0lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout/Mul_1
lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_1/Const¹
lstm_cell_15/dropout_1/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul
lstm_cell_15/dropout_1/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_1/Shapeÿ
3lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2øF25
3lstm_cell_15/dropout_1/random_uniform/RandomUniform
%lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_1/GreaterEqual/yú
#lstm_cell_15/dropout_1/GreaterEqualGreaterEqual<lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_1/GreaterEqual¬
lstm_cell_15/dropout_1/CastCast'lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Cast¶
lstm_cell_15/dropout_1/Mul_1Mullstm_cell_15/dropout_1/Mul:z:0lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_1/Mul_1
lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_2/Const¹
lstm_cell_15/dropout_2/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul
lstm_cell_15/dropout_2/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_2/Shape
3lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2È25
3lstm_cell_15/dropout_2/random_uniform/RandomUniform
%lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_2/GreaterEqual/yú
#lstm_cell_15/dropout_2/GreaterEqualGreaterEqual<lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_2/GreaterEqual¬
lstm_cell_15/dropout_2/CastCast'lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Cast¶
lstm_cell_15/dropout_2/Mul_1Mullstm_cell_15/dropout_2/Mul:z:0lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_2/Mul_1
lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_3/Const¹
lstm_cell_15/dropout_3/MulMullstm_cell_15/ones_like:output:0%lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul
lstm_cell_15/dropout_3/ShapeShapelstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_3/Shape
3lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ø¼Ð25
3lstm_cell_15/dropout_3/random_uniform/RandomUniform
%lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_3/GreaterEqual/yú
#lstm_cell_15/dropout_3/GreaterEqualGreaterEqual<lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_cell_15/dropout_3/GreaterEqual¬
lstm_cell_15/dropout_3/CastCast'lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Cast¶
lstm_cell_15/dropout_3/Mul_1Mullstm_cell_15/dropout_3/Mul:z:0lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/dropout_3/Mul_1~
lstm_cell_15/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_15/ones_like_1/Shape
lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
lstm_cell_15/ones_like_1/ConstÀ
lstm_cell_15/ones_like_1Fill'lstm_cell_15/ones_like_1/Shape:output:0'lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/ones_like_1
lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_4/Const»
lstm_cell_15/dropout_4/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul
lstm_cell_15/dropout_4/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_4/Shapeÿ
3lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ã25
3lstm_cell_15/dropout_4/random_uniform/RandomUniform
%lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_4/GreaterEqual/yú
#lstm_cell_15/dropout_4/GreaterEqualGreaterEqual<lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_4/GreaterEqual¬
lstm_cell_15/dropout_4/CastCast'lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Cast¶
lstm_cell_15/dropout_4/Mul_1Mullstm_cell_15/dropout_4/Mul:z:0lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_4/Mul_1
lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_5/Const»
lstm_cell_15/dropout_5/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul
lstm_cell_15/dropout_5/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_5/Shape
3lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÓÛ25
3lstm_cell_15/dropout_5/random_uniform/RandomUniform
%lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_5/GreaterEqual/yú
#lstm_cell_15/dropout_5/GreaterEqualGreaterEqual<lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_5/GreaterEqual¬
lstm_cell_15/dropout_5/CastCast'lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Cast¶
lstm_cell_15/dropout_5/Mul_1Mullstm_cell_15/dropout_5/Mul:z:0lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_5/Mul_1
lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_6/Const»
lstm_cell_15/dropout_6/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul
lstm_cell_15/dropout_6/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_6/Shape
3lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÉÕ25
3lstm_cell_15/dropout_6/random_uniform/RandomUniform
%lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_6/GreaterEqual/yú
#lstm_cell_15/dropout_6/GreaterEqualGreaterEqual<lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_6/GreaterEqual¬
lstm_cell_15/dropout_6/CastCast'lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Cast¶
lstm_cell_15/dropout_6/Mul_1Mullstm_cell_15/dropout_6/Mul:z:0lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_6/Mul_1
lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_15/dropout_7/Const»
lstm_cell_15/dropout_7/MulMul!lstm_cell_15/ones_like_1:output:0%lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul
lstm_cell_15/dropout_7/ShapeShape!lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_15/dropout_7/Shape
3lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ãÌ25
3lstm_cell_15/dropout_7/random_uniform/RandomUniform
%lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%lstm_cell_15/dropout_7/GreaterEqual/yú
#lstm_cell_15/dropout_7/GreaterEqualGreaterEqual<lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_cell_15/dropout_7/GreaterEqual¬
lstm_cell_15/dropout_7/CastCast'lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Cast¶
lstm_cell_15/dropout_7/Mul_1Mullstm_cell_15/dropout_7/Mul:z:0lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/dropout_7/Mul_1
lstm_cell_15/mulMulstrided_slice_2:output:0lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul
lstm_cell_15/mul_1Mulstrided_slice_2:output:0 lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_1
lstm_cell_15/mul_2Mulstrided_slice_2:output:0 lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_2
lstm_cell_15/mul_3Mulstrided_slice_2:output:0 lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_15/mul_3j
lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim²
!lstm_cell_15/split/ReadVariableOpReadVariableOp*lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype02#
!lstm_cell_15/split/ReadVariableOpÛ
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0)lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
lstm_cell_15/split
lstm_cell_15/MatMulMatMullstm_cell_15/mul:z:0lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul
lstm_cell_15/MatMul_1MatMullstm_cell_15/mul_1:z:0lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_1
lstm_cell_15/MatMul_2MatMullstm_cell_15/mul_2:z:0lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_2
lstm_cell_15/MatMul_3MatMullstm_cell_15/mul_3:z:0lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_3n
lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/Const_1
lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_15/split_1/split_dim´
#lstm_cell_15/split_1/ReadVariableOpReadVariableOp,lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_15/split_1/ReadVariableOpÓ
lstm_cell_15/split_1Split'lstm_cell_15/split_1/split_dim:output:0+lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
lstm_cell_15/split_1§
lstm_cell_15/BiasAddBiasAddlstm_cell_15/MatMul:product:0lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd­
lstm_cell_15/BiasAdd_1BiasAddlstm_cell_15/MatMul_1:product:0lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_1­
lstm_cell_15/BiasAdd_2BiasAddlstm_cell_15/MatMul_2:product:0lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_2­
lstm_cell_15/BiasAdd_3BiasAddlstm_cell_15/MatMul_3:product:0lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/BiasAdd_3
lstm_cell_15/mul_4Mulzeros:output:0 lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_4
lstm_cell_15/mul_5Mulzeros:output:0 lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_5
lstm_cell_15/mul_6Mulzeros:output:0 lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_6
lstm_cell_15/mul_7Mulzeros:output:0 lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_7 
lstm_cell_15/ReadVariableOpReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp
 lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_15/strided_slice/stack
"lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice/stack_1
"lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_15/strided_slice/stack_2Ê
lstm_cell_15/strided_sliceStridedSlice#lstm_cell_15/ReadVariableOp:value:0)lstm_cell_15/strided_slice/stack:output:0+lstm_cell_15/strided_slice/stack_1:output:0+lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice§
lstm_cell_15/MatMul_4MatMullstm_cell_15/mul_4:z:0#lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_4
lstm_cell_15/addAddV2lstm_cell_15/BiasAdd:output:0lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add
lstm_cell_15/SigmoidSigmoidlstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid¤
lstm_cell_15/ReadVariableOp_1ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_1
"lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2$
"lstm_cell_15/strided_slice_1/stack
$lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2&
$lstm_cell_15/strided_slice_1/stack_1
$lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_1/stack_2Ö
lstm_cell_15/strided_slice_1StridedSlice%lstm_cell_15/ReadVariableOp_1:value:0+lstm_cell_15/strided_slice_1/stack:output:0-lstm_cell_15/strided_slice_1/stack_1:output:0-lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_1©
lstm_cell_15/MatMul_5MatMullstm_cell_15/mul_5:z:0%lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_5¥
lstm_cell_15/add_1AddV2lstm_cell_15/BiasAdd_1:output:0lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_1
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_1
lstm_cell_15/mul_8Mullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_8¤
lstm_cell_15/ReadVariableOp_2ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_2
"lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2$
"lstm_cell_15/strided_slice_2/stack
$lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$lstm_cell_15/strided_slice_2/stack_1
$lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_2/stack_2Ö
lstm_cell_15/strided_slice_2StridedSlice%lstm_cell_15/ReadVariableOp_2:value:0+lstm_cell_15/strided_slice_2/stack:output:0-lstm_cell_15/strided_slice_2/stack_1:output:0-lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_2©
lstm_cell_15/MatMul_6MatMullstm_cell_15/mul_6:z:0%lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_6¥
lstm_cell_15/add_2AddV2lstm_cell_15/BiasAdd_2:output:0lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_2x
lstm_cell_15/TanhTanhlstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh
lstm_cell_15/mul_9Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_9
lstm_cell_15/add_3AddV2lstm_cell_15/mul_8:z:0lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_3¤
lstm_cell_15/ReadVariableOp_3ReadVariableOp$lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype02
lstm_cell_15/ReadVariableOp_3
"lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"lstm_cell_15/strided_slice_3/stack
$lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_15/strided_slice_3/stack_1
$lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_15/strided_slice_3/stack_2Ö
lstm_cell_15/strided_slice_3StridedSlice%lstm_cell_15/ReadVariableOp_3:value:0+lstm_cell_15/strided_slice_3/stack:output:0-lstm_cell_15/strided_slice_3/stack_1:output:0-lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2
lstm_cell_15/strided_slice_3©
lstm_cell_15/MatMul_7MatMullstm_cell_15/mul_7:z:0%lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/MatMul_7¥
lstm_cell_15/add_4AddV2lstm_cell_15/BiasAdd_3:output:0lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/add_4
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Sigmoid_2|
lstm_cell_15/Tanh_1Tanhlstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/Tanh_1
lstm_cell_15/mul_10Mullstm_cell_15/Sigmoid_2:y:0lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_15/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_15_split_readvariableop_resource,lstm_cell_15_split_1_readvariableop_resource$lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_102276*
condR
while_cond_102275*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¼
IdentityIdentitystrided_slice_3:output:0^lstm_cell_15/ReadVariableOp^lstm_cell_15/ReadVariableOp_1^lstm_cell_15/ReadVariableOp_2^lstm_cell_15/ReadVariableOp_3"^lstm_cell_15/split/ReadVariableOp$^lstm_cell_15/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::2:
lstm_cell_15/ReadVariableOplstm_cell_15/ReadVariableOp2>
lstm_cell_15/ReadVariableOp_1lstm_cell_15/ReadVariableOp_12>
lstm_cell_15/ReadVariableOp_2lstm_cell_15/ReadVariableOp_22>
lstm_cell_15/ReadVariableOp_3lstm_cell_15/ReadVariableOp_32F
!lstm_cell_15/split/ReadVariableOp!lstm_cell_15/split/ReadVariableOp2J
#lstm_cell_15/split_1/ReadVariableOp#lstm_cell_15/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
Ï
n
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101418

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
strided_slice/stack_2â
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
strided_slice_1/stack_2ì
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
:ÿÿÿÿÿÿÿÿÿP22
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
«
Ã
while_cond_101615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_101615___redundant_placeholder04
0while_while_cond_101615___redundant_placeholder14
0while_while_cond_101615___redundant_placeholder24
0while_while_cond_101615___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
þ	
Ï
lstm_9_while_cond_100831*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3,
(lstm_9_while_less_lstm_9_strided_slice_1B
>lstm_9_while_lstm_9_while_cond_100831___redundant_placeholder0B
>lstm_9_while_lstm_9_while_cond_100831___redundant_placeholder1B
>lstm_9_while_lstm_9_while_cond_100831___redundant_placeholder2B
>lstm_9_while_lstm_9_while_cond_100831___redundant_placeholder3
lstm_9_while_identity

lstm_9/while/LessLesslstm_9_while_placeholder(lstm_9_while_less_lstm_9_strided_slice_1*
T0*
_output_shapes
: 2
lstm_9/while/Lessr
lstm_9/while/IdentityIdentitylstm_9/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_9/while/Identity"7
lstm_9_while_identitylstm_9/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ò§
Ç

lstm_9_while_body_101165*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3)
%lstm_9_while_lstm_9_strided_slice_1_0e
alstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0?
;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_07
3lstm_9_while_lstm_cell_15_readvariableop_resource_0
lstm_9_while_identity
lstm_9_while_identity_1
lstm_9_while_identity_2
lstm_9_while_identity_3
lstm_9_while_identity_4
lstm_9_while_identity_5'
#lstm_9_while_lstm_9_strided_slice_1c
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor;
7lstm_9_while_lstm_cell_15_split_readvariableop_resource=
9lstm_9_while_lstm_cell_15_split_1_readvariableop_resource5
1lstm_9_while_lstm_cell_15_readvariableop_resource¢(lstm_9/while/lstm_cell_15/ReadVariableOp¢*lstm_9/while/lstm_cell_15/ReadVariableOp_1¢*lstm_9/while/lstm_cell_15/ReadVariableOp_2¢*lstm_9/while/lstm_cell_15/ReadVariableOp_3¢.lstm_9/while/lstm_cell_15/split/ReadVariableOp¢0lstm_9/while/lstm_cell_15/split_1/ReadVariableOpÑ
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2@
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0lstm_9_while_placeholderGlstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype022
0lstm_9/while/TensorArrayV2Read/TensorListGetItem½
)lstm_9/while/lstm_cell_15/ones_like/ShapeShape7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/ones_like/Shape
)lstm_9/while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)lstm_9/while/lstm_cell_15/ones_like/Constì
#lstm_9/while/lstm_cell_15/ones_likeFill2lstm_9/while/lstm_cell_15/ones_like/Shape:output:02lstm_9/while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_9/while/lstm_cell_15/ones_like¤
+lstm_9/while/lstm_cell_15/ones_like_1/ShapeShapelstm_9_while_placeholder_2*
T0*
_output_shapes
:2-
+lstm_9/while/lstm_cell_15/ones_like_1/Shape
+lstm_9/while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+lstm_9/while/lstm_cell_15/ones_like_1/Constô
%lstm_9/while/lstm_cell_15/ones_like_1Fill4lstm_9/while/lstm_cell_15/ones_like_1/Shape:output:04lstm_9/while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2'
%lstm_9/while/lstm_cell_15/ones_like_1Þ
lstm_9/while/lstm_cell_15/mulMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/while/lstm_cell_15/mulâ
lstm_9/while/lstm_cell_15/mul_1Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_1â
lstm_9/while/lstm_cell_15/mul_2Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_2â
lstm_9/while/lstm_cell_15/mul_3Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_3
lstm_9/while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2!
lstm_9/while/lstm_cell_15/Const
)lstm_9/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_9/while/lstm_cell_15/split/split_dimÛ
.lstm_9/while/lstm_cell_15/split/ReadVariableOpReadVariableOp9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype020
.lstm_9/while/lstm_cell_15/split/ReadVariableOp
lstm_9/while/lstm_cell_15/splitSplit2lstm_9/while/lstm_cell_15/split/split_dim:output:06lstm_9/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2!
lstm_9/while/lstm_cell_15/splitÍ
 lstm_9/while/lstm_cell_15/MatMulMatMul!lstm_9/while/lstm_cell_15/mul:z:0(lstm_9/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/MatMulÓ
"lstm_9/while/lstm_cell_15/MatMul_1MatMul#lstm_9/while/lstm_cell_15/mul_1:z:0(lstm_9/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_1Ó
"lstm_9/while/lstm_cell_15/MatMul_2MatMul#lstm_9/while/lstm_cell_15/mul_2:z:0(lstm_9/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_2Ó
"lstm_9/while/lstm_cell_15/MatMul_3MatMul#lstm_9/while/lstm_cell_15/mul_3:z:0(lstm_9/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_3
!lstm_9/while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_9/while/lstm_cell_15/Const_1
+lstm_9/while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+lstm_9/while/lstm_cell_15/split_1/split_dimÝ
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp
!lstm_9/while/lstm_cell_15/split_1Split4lstm_9/while/lstm_cell_15/split_1/split_dim:output:08lstm_9/while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2#
!lstm_9/while/lstm_cell_15/split_1Û
!lstm_9/while/lstm_cell_15/BiasAddBiasAdd*lstm_9/while/lstm_cell_15/MatMul:product:0*lstm_9/while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/while/lstm_cell_15/BiasAddá
#lstm_9/while/lstm_cell_15/BiasAdd_1BiasAdd,lstm_9/while/lstm_cell_15/MatMul_1:product:0*lstm_9/while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_1á
#lstm_9/while/lstm_cell_15/BiasAdd_2BiasAdd,lstm_9/while/lstm_cell_15/MatMul_2:product:0*lstm_9/while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_2á
#lstm_9/while/lstm_cell_15/BiasAdd_3BiasAdd,lstm_9/while/lstm_cell_15/MatMul_3:product:0*lstm_9/while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_3Ç
lstm_9/while/lstm_cell_15/mul_4Mullstm_9_while_placeholder_2.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_4Ç
lstm_9/while/lstm_cell_15/mul_5Mullstm_9_while_placeholder_2.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_5Ç
lstm_9/while/lstm_cell_15/mul_6Mullstm_9_while_placeholder_2.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_6Ç
lstm_9/while/lstm_cell_15/mul_7Mullstm_9_while_placeholder_2.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_7É
(lstm_9/while/lstm_cell_15/ReadVariableOpReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02*
(lstm_9/while/lstm_cell_15/ReadVariableOp¯
-lstm_9/while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-lstm_9/while/lstm_cell_15/strided_slice/stack³
/lstm_9/while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/lstm_9/while/lstm_cell_15/strided_slice/stack_1³
/lstm_9/while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm_9/while/lstm_cell_15/strided_slice/stack_2
'lstm_9/while/lstm_cell_15/strided_sliceStridedSlice0lstm_9/while/lstm_cell_15/ReadVariableOp:value:06lstm_9/while/lstm_cell_15/strided_slice/stack:output:08lstm_9/while/lstm_cell_15/strided_slice/stack_1:output:08lstm_9/while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2)
'lstm_9/while/lstm_cell_15/strided_sliceÛ
"lstm_9/while/lstm_cell_15/MatMul_4MatMul#lstm_9/while/lstm_cell_15/mul_4:z:00lstm_9/while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_4Ó
lstm_9/while/lstm_cell_15/addAddV2*lstm_9/while/lstm_cell_15/BiasAdd:output:0,lstm_9/while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/lstm_cell_15/add¦
!lstm_9/while/lstm_cell_15/SigmoidSigmoid!lstm_9/while/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/while/lstm_cell_15/SigmoidÍ
*lstm_9/while/lstm_cell_15/ReadVariableOp_1ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_1³
/lstm_9/while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   21
/lstm_9/while/lstm_cell_15/strided_slice_1/stack·
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   23
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_1StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_1:value:08lstm_9/while/lstm_cell_15/strided_slice_1/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_1/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_1Ý
"lstm_9/while/lstm_cell_15/MatMul_5MatMul#lstm_9/while/lstm_cell_15/mul_5:z:02lstm_9/while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_5Ù
lstm_9/while/lstm_cell_15/add_1AddV2,lstm_9/while/lstm_cell_15/BiasAdd_1:output:0,lstm_9/while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_1¬
#lstm_9/while/lstm_cell_15/Sigmoid_1Sigmoid#lstm_9/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/Sigmoid_1À
lstm_9/while/lstm_cell_15/mul_8Mul'lstm_9/while/lstm_cell_15/Sigmoid_1:y:0lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_8Í
*lstm_9/while/lstm_cell_15/ReadVariableOp_2ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_2³
/lstm_9/while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   21
/lstm_9/while/lstm_cell_15/strided_slice_2/stack·
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  23
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_2StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_2:value:08lstm_9/while/lstm_cell_15/strided_slice_2/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_2/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_2Ý
"lstm_9/while/lstm_cell_15/MatMul_6MatMul#lstm_9/while/lstm_cell_15/mul_6:z:02lstm_9/while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_6Ù
lstm_9/while/lstm_cell_15/add_2AddV2,lstm_9/while/lstm_cell_15/BiasAdd_2:output:0,lstm_9/while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_2
lstm_9/while/lstm_cell_15/TanhTanh#lstm_9/while/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_9/while/lstm_cell_15/TanhÆ
lstm_9/while/lstm_cell_15/mul_9Mul%lstm_9/while/lstm_cell_15/Sigmoid:y:0"lstm_9/while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_9Ç
lstm_9/while/lstm_cell_15/add_3AddV2#lstm_9/while/lstm_cell_15/mul_8:z:0#lstm_9/while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_3Í
*lstm_9/while/lstm_cell_15/ReadVariableOp_3ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_3³
/lstm_9/while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  21
/lstm_9/while/lstm_cell_15/strided_slice_3/stack·
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_3StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_3:value:08lstm_9/while/lstm_cell_15/strided_slice_3/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_3/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_3Ý
"lstm_9/while/lstm_cell_15/MatMul_7MatMul#lstm_9/while/lstm_cell_15/mul_7:z:02lstm_9/while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_7Ù
lstm_9/while/lstm_cell_15/add_4AddV2,lstm_9/while/lstm_cell_15/BiasAdd_3:output:0,lstm_9/while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_4¬
#lstm_9/while/lstm_cell_15/Sigmoid_2Sigmoid#lstm_9/while/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/Sigmoid_2£
 lstm_9/while/lstm_cell_15/Tanh_1Tanh#lstm_9/while/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/Tanh_1Ì
 lstm_9/while/lstm_cell_15/mul_10Mul'lstm_9/while/lstm_cell_15/Sigmoid_2:y:0$lstm_9/while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/mul_10
1lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_9_while_placeholder_1lstm_9_while_placeholder$lstm_9/while/lstm_cell_15/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_9/while/TensorArrayV2Write/TensorListSetItemj
lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/while/add/y
lstm_9/while/addAddV2lstm_9_while_placeholderlstm_9/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_9/while/addn
lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/while/add_1/y
lstm_9/while/add_1AddV2&lstm_9_while_lstm_9_while_loop_counterlstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_9/while/add_1
lstm_9/while/IdentityIdentitylstm_9/while/add_1:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity£
lstm_9/while/Identity_1Identity,lstm_9_while_lstm_9_while_maximum_iterations)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_1
lstm_9/while/Identity_2Identitylstm_9/while/add:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_2¸
lstm_9/while/Identity_3IdentityAlstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_3¬
lstm_9/while/Identity_4Identity$lstm_9/while/lstm_cell_15/mul_10:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/Identity_4«
lstm_9/while/Identity_5Identity#lstm_9/while/lstm_cell_15/add_3:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/Identity_5"7
lstm_9_while_identitylstm_9/while/Identity:output:0";
lstm_9_while_identity_1 lstm_9/while/Identity_1:output:0";
lstm_9_while_identity_2 lstm_9/while/Identity_2:output:0";
lstm_9_while_identity_3 lstm_9/while/Identity_3:output:0";
lstm_9_while_identity_4 lstm_9/while/Identity_4:output:0";
lstm_9_while_identity_5 lstm_9/while/Identity_5:output:0"L
#lstm_9_while_lstm_9_strided_slice_1%lstm_9_while_lstm_9_strided_slice_1_0"h
1lstm_9_while_lstm_cell_15_readvariableop_resource3lstm_9_while_lstm_cell_15_readvariableop_resource_0"x
9lstm_9_while_lstm_cell_15_split_1_readvariableop_resource;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0"t
7lstm_9_while_lstm_cell_15_split_readvariableop_resource9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0"Ä
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensoralstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2T
(lstm_9/while/lstm_cell_15/ReadVariableOp(lstm_9/while/lstm_cell_15/ReadVariableOp2X
*lstm_9/while/lstm_cell_15/ReadVariableOp_1*lstm_9/while/lstm_cell_15/ReadVariableOp_12X
*lstm_9/while/lstm_cell_15/ReadVariableOp_2*lstm_9/while/lstm_cell_15/ReadVariableOp_22X
*lstm_9/while/lstm_cell_15/ReadVariableOp_3*lstm_9/while/lstm_cell_15/ReadVariableOp_32`
.lstm_9/while/lstm_cell_15/split/ReadVariableOp.lstm_9/while/lstm_cell_15/split/ReadVariableOp2d
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
ÂN

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_103005

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿd2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
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
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

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
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2ü
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"    È   2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
:ÿÿÿÿÿÿÿÿÿd2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1

Ò
while_body_101935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1Â
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÆ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Æ
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Æ
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3«
while/lstm_cell_15/mul_4Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4«
while/lstm_cell_15/mul_5Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5«
while/lstm_cell_15/mul_6Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6«
while/lstm_cell_15/mul_7Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 


'__inference_lstm_9_layer_call_fn_102093
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_9_layer_call_and_return_conditional_losses_997352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Îø
¡
 __inference__wrapped_model_98902
embedding_4_input3
/sequential_4_embedding_4_embedding_lookup_98637B
>sequential_4_lstm_9_lstm_cell_15_split_readvariableop_resourceD
@sequential_4_lstm_9_lstm_cell_15_split_1_readvariableop_resource<
8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource8
4sequential_4_dense_12_matmul_readvariableop_resource9
5sequential_4_dense_12_biasadd_readvariableop_resource
identity¢,sequential_4/dense_12/BiasAdd/ReadVariableOp¢+sequential_4/dense_12/MatMul/ReadVariableOp¢)sequential_4/embedding_4/embedding_lookup¢/sequential_4/lstm_9/lstm_cell_15/ReadVariableOp¢1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_1¢1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_2¢1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_3¢5sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp¢7sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp¢sequential_4/lstm_9/while
sequential_4/embedding_4/CastCastembedding_4_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
sequential_4/embedding_4/Castø
)sequential_4/embedding_4/embedding_lookupResourceGather/sequential_4_embedding_4_embedding_lookup_98637!sequential_4/embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_4/embedding_4/embedding_lookup/98637*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
dtype02+
)sequential_4/embedding_4/embedding_lookupÐ
2sequential_4/embedding_4/embedding_lookup/IdentityIdentity2sequential_4/embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_4/embedding_4/embedding_lookup/98637*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP224
2sequential_4/embedding_4/embedding_lookup/Identityë
4sequential_4/embedding_4/embedding_lookup/Identity_1Identity;sequential_4/embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP226
4sequential_4/embedding_4/embedding_lookup/Identity_1×
)sequential_4/spatial_dropout1d_4/IdentityIdentity=sequential_4/embedding_4/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22+
)sequential_4/spatial_dropout1d_4/Identity
sequential_4/lstm_9/ShapeShape2sequential_4/spatial_dropout1d_4/Identity:output:0*
T0*
_output_shapes
:2
sequential_4/lstm_9/Shape
'sequential_4/lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/lstm_9/strided_slice/stack 
)sequential_4/lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_9/strided_slice/stack_1 
)sequential_4/lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_9/strided_slice/stack_2Ú
!sequential_4/lstm_9/strided_sliceStridedSlice"sequential_4/lstm_9/Shape:output:00sequential_4/lstm_9/strided_slice/stack:output:02sequential_4/lstm_9/strided_slice/stack_1:output:02sequential_4/lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_4/lstm_9/strided_slice
sequential_4/lstm_9/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2!
sequential_4/lstm_9/zeros/mul/y¼
sequential_4/lstm_9/zeros/mulMul*sequential_4/lstm_9/strided_slice:output:0(sequential_4/lstm_9/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_9/zeros/mul
 sequential_4/lstm_9/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 sequential_4/lstm_9/zeros/Less/y·
sequential_4/lstm_9/zeros/LessLess!sequential_4/lstm_9/zeros/mul:z:0)sequential_4/lstm_9/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/lstm_9/zeros/Less
"sequential_4/lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2$
"sequential_4/lstm_9/zeros/packed/1Ó
 sequential_4/lstm_9/zeros/packedPack*sequential_4/lstm_9/strided_slice:output:0+sequential_4/lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_4/lstm_9/zeros/packed
sequential_4/lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_4/lstm_9/zeros/ConstÅ
sequential_4/lstm_9/zerosFill)sequential_4/lstm_9/zeros/packed:output:0(sequential_4/lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_4/lstm_9/zeros
!sequential_4/lstm_9/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :d2#
!sequential_4/lstm_9/zeros_1/mul/yÂ
sequential_4/lstm_9/zeros_1/mulMul*sequential_4/lstm_9/strided_slice:output:0*sequential_4/lstm_9/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_9/zeros_1/mul
"sequential_4/lstm_9/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_4/lstm_9/zeros_1/Less/y¿
 sequential_4/lstm_9/zeros_1/LessLess#sequential_4/lstm_9/zeros_1/mul:z:0+sequential_4/lstm_9/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_4/lstm_9/zeros_1/Less
$sequential_4/lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d2&
$sequential_4/lstm_9/zeros_1/packed/1Ù
"sequential_4/lstm_9/zeros_1/packedPack*sequential_4/lstm_9/strided_slice:output:0-sequential_4/lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_4/lstm_9/zeros_1/packed
!sequential_4/lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_4/lstm_9/zeros_1/ConstÍ
sequential_4/lstm_9/zeros_1Fill+sequential_4/lstm_9/zeros_1/packed:output:0*sequential_4/lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_4/lstm_9/zeros_1
"sequential_4/lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_4/lstm_9/transpose/permâ
sequential_4/lstm_9/transpose	Transpose2sequential_4/spatial_dropout1d_4/Identity:output:0+sequential_4/lstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿ22
sequential_4/lstm_9/transpose
sequential_4/lstm_9/Shape_1Shape!sequential_4/lstm_9/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/lstm_9/Shape_1 
)sequential_4/lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_9/strided_slice_1/stack¤
+sequential_4/lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_9/strided_slice_1/stack_1¤
+sequential_4/lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_9/strided_slice_1/stack_2æ
#sequential_4/lstm_9/strided_slice_1StridedSlice$sequential_4/lstm_9/Shape_1:output:02sequential_4/lstm_9/strided_slice_1/stack:output:04sequential_4/lstm_9/strided_slice_1/stack_1:output:04sequential_4/lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_4/lstm_9/strided_slice_1­
/sequential_4/lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_4/lstm_9/TensorArrayV2/element_shape
!sequential_4/lstm_9/TensorArrayV2TensorListReserve8sequential_4/lstm_9/TensorArrayV2/element_shape:output:0,sequential_4/lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_4/lstm_9/TensorArrayV2ç
Isequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2K
Isequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;sequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_9/transpose:y:0Rsequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensor 
)sequential_4/lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_9/strided_slice_2/stack¤
+sequential_4/lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_9/strided_slice_2/stack_1¤
+sequential_4/lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_9/strided_slice_2/stack_2ô
#sequential_4/lstm_9/strided_slice_2StridedSlice!sequential_4/lstm_9/transpose:y:02sequential_4/lstm_9/strided_slice_2/stack:output:04sequential_4/lstm_9/strided_slice_2/stack_1:output:04sequential_4/lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2%
#sequential_4/lstm_9/strided_slice_2À
0sequential_4/lstm_9/lstm_cell_15/ones_like/ShapeShape,sequential_4/lstm_9/strided_slice_2:output:0*
T0*
_output_shapes
:22
0sequential_4/lstm_9/lstm_cell_15/ones_like/Shape©
0sequential_4/lstm_9/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0sequential_4/lstm_9/lstm_cell_15/ones_like/Const
*sequential_4/lstm_9/lstm_cell_15/ones_likeFill9sequential_4/lstm_9/lstm_cell_15/ones_like/Shape:output:09sequential_4/lstm_9/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*sequential_4/lstm_9/lstm_cell_15/ones_likeº
2sequential_4/lstm_9/lstm_cell_15/ones_like_1/ShapeShape"sequential_4/lstm_9/zeros:output:0*
T0*
_output_shapes
:24
2sequential_4/lstm_9/lstm_cell_15/ones_like_1/Shape­
2sequential_4/lstm_9/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2sequential_4/lstm_9/lstm_cell_15/ones_like_1/Const
,sequential_4/lstm_9/lstm_cell_15/ones_like_1Fill;sequential_4/lstm_9/lstm_cell_15/ones_like_1/Shape:output:0;sequential_4/lstm_9/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2.
,sequential_4/lstm_9/lstm_cell_15/ones_like_1è
$sequential_4/lstm_9/lstm_cell_15/mulMul,sequential_4/lstm_9/strided_slice_2:output:03sequential_4/lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$sequential_4/lstm_9/lstm_cell_15/mulì
&sequential_4/lstm_9/lstm_cell_15/mul_1Mul,sequential_4/lstm_9/strided_slice_2:output:03sequential_4/lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_4/lstm_9/lstm_cell_15/mul_1ì
&sequential_4/lstm_9/lstm_cell_15/mul_2Mul,sequential_4/lstm_9/strided_slice_2:output:03sequential_4/lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_4/lstm_9/lstm_cell_15/mul_2ì
&sequential_4/lstm_9/lstm_cell_15/mul_3Mul,sequential_4/lstm_9/strided_slice_2:output:03sequential_4/lstm_9/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_4/lstm_9/lstm_cell_15/mul_3
&sequential_4/lstm_9/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/lstm_9/lstm_cell_15/Const¦
0sequential_4/lstm_9/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_4/lstm_9/lstm_cell_15/split/split_dimî
5sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOpReadVariableOp>sequential_4_lstm_9_lstm_cell_15_split_readvariableop_resource*
_output_shapes
:	2*
dtype027
5sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp«
&sequential_4/lstm_9/lstm_cell_15/splitSplit9sequential_4/lstm_9/lstm_cell_15/split/split_dim:output:0=sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2(
&sequential_4/lstm_9/lstm_cell_15/splité
'sequential_4/lstm_9/lstm_cell_15/MatMulMatMul(sequential_4/lstm_9/lstm_cell_15/mul:z:0/sequential_4/lstm_9/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'sequential_4/lstm_9/lstm_cell_15/MatMulï
)sequential_4/lstm_9/lstm_cell_15/MatMul_1MatMul*sequential_4/lstm_9/lstm_cell_15/mul_1:z:0/sequential_4/lstm_9/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_1ï
)sequential_4/lstm_9/lstm_cell_15/MatMul_2MatMul*sequential_4/lstm_9/lstm_cell_15/mul_2:z:0/sequential_4/lstm_9/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_2ï
)sequential_4/lstm_9/lstm_cell_15/MatMul_3MatMul*sequential_4/lstm_9/lstm_cell_15/mul_3:z:0/sequential_4/lstm_9/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_3
(sequential_4/lstm_9/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/lstm_9/lstm_cell_15/Const_1ª
2sequential_4/lstm_9/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_4/lstm_9/lstm_cell_15/split_1/split_dimð
7sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOpReadVariableOp@sequential_4_lstm_9_lstm_cell_15_split_1_readvariableop_resource*
_output_shapes	
:*
dtype029
7sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp£
(sequential_4/lstm_9/lstm_cell_15/split_1Split;sequential_4/lstm_9/lstm_cell_15/split_1/split_dim:output:0?sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2*
(sequential_4/lstm_9/lstm_cell_15/split_1÷
(sequential_4/lstm_9/lstm_cell_15/BiasAddBiasAdd1sequential_4/lstm_9/lstm_cell_15/MatMul:product:01sequential_4/lstm_9/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(sequential_4/lstm_9/lstm_cell_15/BiasAddý
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_1BiasAdd3sequential_4/lstm_9/lstm_cell_15/MatMul_1:product:01sequential_4/lstm_9/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_1ý
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_2BiasAdd3sequential_4/lstm_9/lstm_cell_15/MatMul_2:product:01sequential_4/lstm_9/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_2ý
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_3BiasAdd3sequential_4/lstm_9/lstm_cell_15/MatMul_3:product:01sequential_4/lstm_9/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/lstm_cell_15/BiasAdd_3ä
&sequential_4/lstm_9/lstm_cell_15/mul_4Mul"sequential_4/lstm_9/zeros:output:05sequential_4/lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_4ä
&sequential_4/lstm_9/lstm_cell_15/mul_5Mul"sequential_4/lstm_9/zeros:output:05sequential_4/lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_5ä
&sequential_4/lstm_9/lstm_cell_15/mul_6Mul"sequential_4/lstm_9/zeros:output:05sequential_4/lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_6ä
&sequential_4/lstm_9/lstm_cell_15/mul_7Mul"sequential_4/lstm_9/zeros:output:05sequential_4/lstm_9/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_7Ü
/sequential_4/lstm_9/lstm_cell_15/ReadVariableOpReadVariableOp8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype021
/sequential_4/lstm_9/lstm_cell_15/ReadVariableOp½
4sequential_4/lstm_9/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_4/lstm_9/lstm_cell_15/strided_slice/stackÁ
6sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   28
6sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_1Á
6sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_2Â
.sequential_4/lstm_9/lstm_cell_15/strided_sliceStridedSlice7sequential_4/lstm_9/lstm_cell_15/ReadVariableOp:value:0=sequential_4/lstm_9/lstm_cell_15/strided_slice/stack:output:0?sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_1:output:0?sequential_4/lstm_9/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask20
.sequential_4/lstm_9/lstm_cell_15/strided_slice÷
)sequential_4/lstm_9/lstm_cell_15/MatMul_4MatMul*sequential_4/lstm_9/lstm_cell_15/mul_4:z:07sequential_4/lstm_9/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_4ï
$sequential_4/lstm_9/lstm_cell_15/addAddV21sequential_4/lstm_9/lstm_cell_15/BiasAdd:output:03sequential_4/lstm_9/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$sequential_4/lstm_9/lstm_cell_15/add»
(sequential_4/lstm_9/lstm_cell_15/SigmoidSigmoid(sequential_4/lstm_9/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(sequential_4/lstm_9/lstm_cell_15/Sigmoidà
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_1ReadVariableOp8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype023
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_1Á
6sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   28
6sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stackÅ
8sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_1Å
8sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_2Î
0sequential_4/lstm_9/lstm_cell_15/strided_slice_1StridedSlice9sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_1:value:0?sequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_1:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask22
0sequential_4/lstm_9/lstm_cell_15/strided_slice_1ù
)sequential_4/lstm_9/lstm_cell_15/MatMul_5MatMul*sequential_4/lstm_9/lstm_cell_15/mul_5:z:09sequential_4/lstm_9/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_5õ
&sequential_4/lstm_9/lstm_cell_15/add_1AddV23sequential_4/lstm_9/lstm_cell_15/BiasAdd_1:output:03sequential_4/lstm_9/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/add_1Á
*sequential_4/lstm_9/lstm_cell_15/Sigmoid_1Sigmoid*sequential_4/lstm_9/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/lstm_cell_15/Sigmoid_1ß
&sequential_4/lstm_9/lstm_cell_15/mul_8Mul.sequential_4/lstm_9/lstm_cell_15/Sigmoid_1:y:0$sequential_4/lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_8à
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_2ReadVariableOp8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype023
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_2Á
6sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   28
6sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stackÅ
8sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_1Å
8sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_2Î
0sequential_4/lstm_9/lstm_cell_15/strided_slice_2StridedSlice9sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_2:value:0?sequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_1:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask22
0sequential_4/lstm_9/lstm_cell_15/strided_slice_2ù
)sequential_4/lstm_9/lstm_cell_15/MatMul_6MatMul*sequential_4/lstm_9/lstm_cell_15/mul_6:z:09sequential_4/lstm_9/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_6õ
&sequential_4/lstm_9/lstm_cell_15/add_2AddV23sequential_4/lstm_9/lstm_cell_15/BiasAdd_2:output:03sequential_4/lstm_9/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/add_2´
%sequential_4/lstm_9/lstm_cell_15/TanhTanh*sequential_4/lstm_9/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2'
%sequential_4/lstm_9/lstm_cell_15/Tanhâ
&sequential_4/lstm_9/lstm_cell_15/mul_9Mul,sequential_4/lstm_9/lstm_cell_15/Sigmoid:y:0)sequential_4/lstm_9/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/mul_9ã
&sequential_4/lstm_9/lstm_cell_15/add_3AddV2*sequential_4/lstm_9/lstm_cell_15/mul_8:z:0*sequential_4/lstm_9/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/add_3à
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_3ReadVariableOp8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource*
_output_shapes
:	d*
dtype023
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_3Á
6sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  28
6sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stackÅ
8sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_1Å
8sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_2Î
0sequential_4/lstm_9/lstm_cell_15/strided_slice_3StridedSlice9sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_3:value:0?sequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_1:output:0Asequential_4/lstm_9/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask22
0sequential_4/lstm_9/lstm_cell_15/strided_slice_3ù
)sequential_4/lstm_9/lstm_cell_15/MatMul_7MatMul*sequential_4/lstm_9/lstm_cell_15/mul_7:z:09sequential_4/lstm_9/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)sequential_4/lstm_9/lstm_cell_15/MatMul_7õ
&sequential_4/lstm_9/lstm_cell_15/add_4AddV23sequential_4/lstm_9/lstm_cell_15/BiasAdd_3:output:03sequential_4/lstm_9/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&sequential_4/lstm_9/lstm_cell_15/add_4Á
*sequential_4/lstm_9/lstm_cell_15/Sigmoid_2Sigmoid*sequential_4/lstm_9/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*sequential_4/lstm_9/lstm_cell_15/Sigmoid_2¸
'sequential_4/lstm_9/lstm_cell_15/Tanh_1Tanh*sequential_4/lstm_9/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'sequential_4/lstm_9/lstm_cell_15/Tanh_1è
'sequential_4/lstm_9/lstm_cell_15/mul_10Mul.sequential_4/lstm_9/lstm_cell_15/Sigmoid_2:y:0+sequential_4/lstm_9/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'sequential_4/lstm_9/lstm_cell_15/mul_10·
1sequential_4/lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   23
1sequential_4/lstm_9/TensorArrayV2_1/element_shape
#sequential_4/lstm_9/TensorArrayV2_1TensorListReserve:sequential_4/lstm_9/TensorArrayV2_1/element_shape:output:0,sequential_4/lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_4/lstm_9/TensorArrayV2_1v
sequential_4/lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/lstm_9/time§
,sequential_4/lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,sequential_4/lstm_9/while/maximum_iterations
&sequential_4/lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_4/lstm_9/while/loop_counter
sequential_4/lstm_9/whileWhile/sequential_4/lstm_9/while/loop_counter:output:05sequential_4/lstm_9/while/maximum_iterations:output:0!sequential_4/lstm_9/time:output:0,sequential_4/lstm_9/TensorArrayV2_1:handle:0"sequential_4/lstm_9/zeros:output:0$sequential_4/lstm_9/zeros_1:output:0,sequential_4/lstm_9/strided_slice_1:output:0Ksequential_4/lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_4_lstm_9_lstm_cell_15_split_readvariableop_resource@sequential_4_lstm_9_lstm_cell_15_split_1_readvariableop_resource8sequential_4_lstm_9_lstm_cell_15_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_4_lstm_9_while_body_98759*0
cond(R&
$sequential_4_lstm_9_while_cond_98758*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 2
sequential_4/lstm_9/whileÝ
Dsequential_4/lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2F
Dsequential_4/lstm_9/TensorArrayV2Stack/TensorListStack/element_shape¸
6sequential_4/lstm_9/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_9/while:output:3Msequential_4/lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:Pÿÿÿÿÿÿÿÿÿd*
element_dtype028
6sequential_4/lstm_9/TensorArrayV2Stack/TensorListStack©
)sequential_4/lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)sequential_4/lstm_9/strided_slice_3/stack¤
+sequential_4/lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_4/lstm_9/strided_slice_3/stack_1¤
+sequential_4/lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_9/strided_slice_3/stack_2
#sequential_4/lstm_9/strided_slice_3StridedSlice?sequential_4/lstm_9/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_9/strided_slice_3/stack:output:04sequential_4/lstm_9/strided_slice_3/stack_1:output:04sequential_4/lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2%
#sequential_4/lstm_9/strided_slice_3¡
$sequential_4/lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_4/lstm_9/transpose_1/permõ
sequential_4/lstm_9/transpose_1	Transpose?sequential_4/lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿPd2!
sequential_4/lstm_9/transpose_1
sequential_4/lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_4/lstm_9/runtimeÏ
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02-
+sequential_4/dense_12/MatMul/ReadVariableOpÛ
sequential_4/dense_12/MatMulMatMul,sequential_4/lstm_9/strided_slice_3:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_12/MatMulÎ
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/dense_12/BiasAdd/ReadVariableOpÙ
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_12/BiasAdd£
sequential_4/dense_12/SoftmaxSoftmax&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_12/Softmaxà
IdentityIdentity'sequential_4/dense_12/Softmax:softmax:0-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp*^sequential_4/embedding_4/embedding_lookup0^sequential_4/lstm_9/lstm_cell_15/ReadVariableOp2^sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_12^sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_22^sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_36^sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp8^sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp^sequential_4/lstm_9/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2V
)sequential_4/embedding_4/embedding_lookup)sequential_4/embedding_4/embedding_lookup2b
/sequential_4/lstm_9/lstm_cell_15/ReadVariableOp/sequential_4/lstm_9/lstm_cell_15/ReadVariableOp2f
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_11sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_12f
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_21sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_22f
1sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_31sequential_4/lstm_9/lstm_cell_15/ReadVariableOp_32n
5sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp5sequential_4/lstm_9/lstm_cell_15/split/ReadVariableOp2r
7sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp7sequential_4/lstm_9/lstm_cell_15/split_1/ReadVariableOp26
sequential_4/lstm_9/whilesequential_4/lstm_9/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input


'__inference_lstm_9_layer_call_fn_102742

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1001902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿP2:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
 
_user_specified_nameinputs
í
Ì
H__inference_sequential_4_layer_call_and_return_conditional_losses_100583

inputs
embedding_4_100566
lstm_9_100570
lstm_9_100572
lstm_9_100574
dense_12_100577
dense_12_100579
identity¢ dense_12/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_4_100566*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_997582%
#embedding_4/StatefulPartitionedCall
#spatial_dropout1d_4/PartitionedCallPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_997962%
#spatial_dropout1d_4/PartitionedCallÁ
lstm_9/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0lstm_9_100570lstm_9_100572lstm_9_100574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_9_layer_call_and_return_conditional_losses_1004452 
lstm_9/StatefulPartitionedCallµ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_12_100577dense_12_100579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1004862"
 dense_12/StatefulPartitionedCallç
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
É
r
,__inference_embedding_4_layer_call_fn_101359

inputs
unknown
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_997582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP22

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿP:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
 
_user_specified_nameinputs
¦
¾
while_cond_99665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_99665___redundant_placeholder03
/while_while_cond_99665___redundant_placeholder13
/while_while_cond_99665___redundant_placeholder23
/while_while_cond_99665___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:

Ò
while_body_102595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_15_split_readvariableop_resource_08
4while_lstm_cell_15_split_1_readvariableop_resource_00
,while_lstm_cell_15_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_15_split_readvariableop_resource6
2while_lstm_cell_15_split_1_readvariableop_resource.
*while_lstm_cell_15_readvariableop_resource¢!while/lstm_cell_15/ReadVariableOp¢#while/lstm_cell_15/ReadVariableOp_1¢#while/lstm_cell_15/ReadVariableOp_2¢#while/lstm_cell_15/ReadVariableOp_3¢'while/lstm_cell_15/split/ReadVariableOp¢)while/lstm_cell_15/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¨
"while/lstm_cell_15/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_15/ones_like/Shape
"while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_15/ones_like/ConstÐ
while/lstm_cell_15/ones_likeFill+while/lstm_cell_15/ones_like/Shape:output:0+while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/ones_like
$while/lstm_cell_15/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_15/ones_like_1/Shape
$while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$while/lstm_cell_15/ones_like_1/ConstØ
while/lstm_cell_15/ones_like_1Fill-while/lstm_cell_15/ones_like_1/Shape:output:0-while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_15/ones_like_1Â
while/lstm_cell_15/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mulÆ
while/lstm_cell_15/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_1Æ
while/lstm_cell_15/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_2Æ
while/lstm_cell_15/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_15/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_15/mul_3v
while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dimÆ
'while/lstm_cell_15/split/ReadVariableOpReadVariableOp2while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype02)
'while/lstm_cell_15/split/ReadVariableOpó
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2
while/lstm_cell_15/split±
while/lstm_cell_15/MatMulMatMulwhile/lstm_cell_15/mul:z:0!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul·
while/lstm_cell_15/MatMul_1MatMulwhile/lstm_cell_15/mul_1:z:0!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_1·
while/lstm_cell_15/MatMul_2MatMulwhile/lstm_cell_15/mul_2:z:0!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_2·
while/lstm_cell_15/MatMul_3MatMulwhile/lstm_cell_15/mul_3:z:0!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_3z
while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_15/Const_1
$while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_15/split_1/split_dimÈ
)while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_15/split_1/ReadVariableOpë
while/lstm_cell_15/split_1Split-while/lstm_cell_15/split_1/split_dim:output:01while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2
while/lstm_cell_15/split_1¿
while/lstm_cell_15/BiasAddBiasAdd#while/lstm_cell_15/MatMul:product:0#while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAddÅ
while/lstm_cell_15/BiasAdd_1BiasAdd%while/lstm_cell_15/MatMul_1:product:0#while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_1Å
while/lstm_cell_15/BiasAdd_2BiasAdd%while/lstm_cell_15/MatMul_2:product:0#while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_2Å
while/lstm_cell_15/BiasAdd_3BiasAdd%while/lstm_cell_15/MatMul_3:product:0#while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/BiasAdd_3«
while/lstm_cell_15/mul_4Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_4«
while/lstm_cell_15/mul_5Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_5«
while/lstm_cell_15/mul_6Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_6«
while/lstm_cell_15/mul_7Mulwhile_placeholder_2'while/lstm_cell_15/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_7´
!while/lstm_cell_15/ReadVariableOpReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02#
!while/lstm_cell_15/ReadVariableOp¡
&while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_15/strided_slice/stack¥
(while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice/stack_1¥
(while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_15/strided_slice/stack_2î
 while/lstm_cell_15/strided_sliceStridedSlice)while/lstm_cell_15/ReadVariableOp:value:0/while/lstm_cell_15/strided_slice/stack:output:01while/lstm_cell_15/strided_slice/stack_1:output:01while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2"
 while/lstm_cell_15/strided_slice¿
while/lstm_cell_15/MatMul_4MatMulwhile/lstm_cell_15/mul_4:z:0)while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_4·
while/lstm_cell_15/addAddV2#while/lstm_cell_15/BiasAdd:output:0%while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add
while/lstm_cell_15/SigmoidSigmoidwhile/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid¸
#while/lstm_cell_15/ReadVariableOp_1ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_1¥
(while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(while/lstm_cell_15/strided_slice_1/stack©
*while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   2,
*while/lstm_cell_15/strided_slice_1/stack_1©
*while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_1/stack_2ú
"while/lstm_cell_15/strided_slice_1StridedSlice+while/lstm_cell_15/ReadVariableOp_1:value:01while/lstm_cell_15/strided_slice_1/stack:output:03while/lstm_cell_15/strided_slice_1/stack_1:output:03while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_1Á
while/lstm_cell_15/MatMul_5MatMulwhile/lstm_cell_15/mul_5:z:0+while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_5½
while/lstm_cell_15/add_1AddV2%while/lstm_cell_15/BiasAdd_1:output:0%while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_1
while/lstm_cell_15/Sigmoid_1Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_1¤
while/lstm_cell_15/mul_8Mul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_8¸
#while/lstm_cell_15/ReadVariableOp_2ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_2¥
(while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   2*
(while/lstm_cell_15/strided_slice_2/stack©
*while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*while/lstm_cell_15/strided_slice_2/stack_1©
*while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_2/stack_2ú
"while/lstm_cell_15/strided_slice_2StridedSlice+while/lstm_cell_15/ReadVariableOp_2:value:01while/lstm_cell_15/strided_slice_2/stack:output:03while/lstm_cell_15/strided_slice_2/stack_1:output:03while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_2Á
while/lstm_cell_15/MatMul_6MatMulwhile/lstm_cell_15/mul_6:z:0+while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_6½
while/lstm_cell_15/add_2AddV2%while/lstm_cell_15/BiasAdd_2:output:0%while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_2
while/lstm_cell_15/TanhTanhwhile/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanhª
while/lstm_cell_15/mul_9Mulwhile/lstm_cell_15/Sigmoid:y:0while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_9«
while/lstm_cell_15/add_3AddV2while/lstm_cell_15/mul_8:z:0while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_3¸
#while/lstm_cell_15/ReadVariableOp_3ReadVariableOp,while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02%
#while/lstm_cell_15/ReadVariableOp_3¥
(while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/lstm_cell_15/strided_slice_3/stack©
*while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_15/strided_slice_3/stack_1©
*while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_15/strided_slice_3/stack_2ú
"while/lstm_cell_15/strided_slice_3StridedSlice+while/lstm_cell_15/ReadVariableOp_3:value:01while/lstm_cell_15/strided_slice_3/stack:output:03while/lstm_cell_15/strided_slice_3/stack_1:output:03while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2$
"while/lstm_cell_15/strided_slice_3Á
while/lstm_cell_15/MatMul_7MatMulwhile/lstm_cell_15/mul_7:z:0+while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/MatMul_7½
while/lstm_cell_15/add_4AddV2%while/lstm_cell_15/BiasAdd_3:output:0%while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/add_4
while/lstm_cell_15/Sigmoid_2Sigmoidwhile/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Sigmoid_2
while/lstm_cell_15/Tanh_1Tanhwhile/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/Tanh_1°
while/lstm_cell_15/mul_10Mul while/lstm_cell_15/Sigmoid_2:y:0while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_15/mul_10á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_10:z:0*
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
while/add_1Ê
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÝ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ì
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ù
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3í
while/Identity_4Identitywhile/lstm_cell_15/mul_10:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_4ì
while/Identity_5Identitywhile/lstm_cell_15/add_3:z:0"^while/lstm_cell_15/ReadVariableOp$^while/lstm_cell_15/ReadVariableOp_1$^while/lstm_cell_15/ReadVariableOp_2$^while/lstm_cell_15/ReadVariableOp_3(^while/lstm_cell_15/split/ReadVariableOp*^while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_15_readvariableop_resource,while_lstm_cell_15_readvariableop_resource_0"j
2while_lstm_cell_15_split_1_readvariableop_resource4while_lstm_cell_15_split_1_readvariableop_resource_0"f
0while_lstm_cell_15_split_readvariableop_resource2while_lstm_cell_15_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2F
!while/lstm_cell_15/ReadVariableOp!while/lstm_cell_15/ReadVariableOp2J
#while/lstm_cell_15/ReadVariableOp_1#while/lstm_cell_15/ReadVariableOp_12J
#while/lstm_cell_15/ReadVariableOp_2#while/lstm_cell_15/ReadVariableOp_22J
#while/lstm_cell_15/ReadVariableOp_3#while/lstm_cell_15/ReadVariableOp_32R
'while/lstm_cell_15/split/ReadVariableOp'while/lstm_cell_15/split/ReadVariableOp2V
)while/lstm_cell_15/split_1/ReadVariableOp)while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 

É
-__inference_sequential_4_layer_call_fn_100561
embedding_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1005462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿP::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
+
_user_specified_nameembedding_4_input
«
Ã
while_cond_101934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_101934___redundant_placeholder04
0while_while_cond_101934___redundant_placeholder14
0while_while_cond_101934___redundant_placeholder24
0while_while_cond_101934___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
Ø
Ç

lstm_9_while_body_100832*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3)
%lstm_9_while_lstm_9_strided_slice_1_0e
alstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0?
;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_07
3lstm_9_while_lstm_cell_15_readvariableop_resource_0
lstm_9_while_identity
lstm_9_while_identity_1
lstm_9_while_identity_2
lstm_9_while_identity_3
lstm_9_while_identity_4
lstm_9_while_identity_5'
#lstm_9_while_lstm_9_strided_slice_1c
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor;
7lstm_9_while_lstm_cell_15_split_readvariableop_resource=
9lstm_9_while_lstm_cell_15_split_1_readvariableop_resource5
1lstm_9_while_lstm_cell_15_readvariableop_resource¢(lstm_9/while/lstm_cell_15/ReadVariableOp¢*lstm_9/while/lstm_cell_15/ReadVariableOp_1¢*lstm_9/while/lstm_cell_15/ReadVariableOp_2¢*lstm_9/while/lstm_cell_15/ReadVariableOp_3¢.lstm_9/while/lstm_cell_15/split/ReadVariableOp¢0lstm_9/while/lstm_cell_15/split_1/ReadVariableOpÑ
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2@
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0lstm_9_while_placeholderGlstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype022
0lstm_9/while/TensorArrayV2Read/TensorListGetItem½
)lstm_9/while/lstm_cell_15/ones_like/ShapeShape7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/ones_like/Shape
)lstm_9/while/lstm_cell_15/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)lstm_9/while/lstm_cell_15/ones_like/Constì
#lstm_9/while/lstm_cell_15/ones_likeFill2lstm_9/while/lstm_cell_15/ones_like/Shape:output:02lstm_9/while/lstm_cell_15/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#lstm_9/while/lstm_cell_15/ones_like
'lstm_9/while/lstm_cell_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'lstm_9/while/lstm_cell_15/dropout/Constç
%lstm_9/while/lstm_cell_15/dropout/MulMul,lstm_9/while/lstm_cell_15/ones_like:output:00lstm_9/while/lstm_cell_15/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%lstm_9/while/lstm_cell_15/dropout/Mul®
'lstm_9/while/lstm_cell_15/dropout/ShapeShape,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2)
'lstm_9/while/lstm_cell_15/dropout/Shape¡
>lstm_9/while/lstm_cell_15/dropout/random_uniform/RandomUniformRandomUniform0lstm_9/while/lstm_cell_15/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ç2@
>lstm_9/while/lstm_cell_15/dropout/random_uniform/RandomUniform©
0lstm_9/while/lstm_cell_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>22
0lstm_9/while/lstm_cell_15/dropout/GreaterEqual/y¦
.lstm_9/while/lstm_cell_15/dropout/GreaterEqualGreaterEqualGlstm_9/while/lstm_cell_15/dropout/random_uniform/RandomUniform:output:09lstm_9/while/lstm_cell_15/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.lstm_9/while/lstm_cell_15/dropout/GreaterEqualÍ
&lstm_9/while/lstm_cell_15/dropout/CastCast2lstm_9/while/lstm_cell_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&lstm_9/while/lstm_cell_15/dropout/Castâ
'lstm_9/while/lstm_cell_15/dropout/Mul_1Mul)lstm_9/while/lstm_cell_15/dropout/Mul:z:0*lstm_9/while/lstm_cell_15/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_9/while/lstm_cell_15/dropout/Mul_1
)lstm_9/while/lstm_cell_15/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_1/Constí
'lstm_9/while/lstm_cell_15/dropout_1/MulMul,lstm_9/while/lstm_cell_15/ones_like:output:02lstm_9/while/lstm_cell_15/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_9/while/lstm_cell_15/dropout_1/Mul²
)lstm_9/while/lstm_cell_15/dropout_1/ShapeShape,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_1/Shape¦
@lstm_9/while/lstm_cell_15/dropout_1/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ãÊ-2B
@lstm_9/while/lstm_cell_15/dropout_1/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_1/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_1/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_1/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
0lstm_9/while/lstm_cell_15/dropout_1/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_1/CastCast4lstm_9/while/lstm_cell_15/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_9/while/lstm_cell_15/dropout_1/Castê
)lstm_9/while/lstm_cell_15/dropout_1/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_1/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_9/while/lstm_cell_15/dropout_1/Mul_1
)lstm_9/while/lstm_cell_15/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_2/Constí
'lstm_9/while/lstm_cell_15/dropout_2/MulMul,lstm_9/while/lstm_cell_15/ones_like:output:02lstm_9/while/lstm_cell_15/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_9/while/lstm_cell_15/dropout_2/Mul²
)lstm_9/while/lstm_cell_15/dropout_2/ShapeShape,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_2/Shape§
@lstm_9/while/lstm_cell_15/dropout_2/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¶ùæ2B
@lstm_9/while/lstm_cell_15/dropout_2/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_2/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_2/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_2/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
0lstm_9/while/lstm_cell_15/dropout_2/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_2/CastCast4lstm_9/while/lstm_cell_15/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_9/while/lstm_cell_15/dropout_2/Castê
)lstm_9/while/lstm_cell_15/dropout_2/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_2/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_9/while/lstm_cell_15/dropout_2/Mul_1
)lstm_9/while/lstm_cell_15/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_3/Constí
'lstm_9/while/lstm_cell_15/dropout_3/MulMul,lstm_9/while/lstm_cell_15/ones_like:output:02lstm_9/while/lstm_cell_15/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_9/while/lstm_cell_15/dropout_3/Mul²
)lstm_9/while/lstm_cell_15/dropout_3/ShapeShape,lstm_9/while/lstm_cell_15/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_3/Shape§
@lstm_9/while/lstm_cell_15/dropout_3/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2³°2B
@lstm_9/while/lstm_cell_15/dropout_3/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_3/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_3/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_3/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
0lstm_9/while/lstm_cell_15/dropout_3/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_3/CastCast4lstm_9/while/lstm_cell_15/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_9/while/lstm_cell_15/dropout_3/Castê
)lstm_9/while/lstm_cell_15/dropout_3/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_3/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_9/while/lstm_cell_15/dropout_3/Mul_1¤
+lstm_9/while/lstm_cell_15/ones_like_1/ShapeShapelstm_9_while_placeholder_2*
T0*
_output_shapes
:2-
+lstm_9/while/lstm_cell_15/ones_like_1/Shape
+lstm_9/while/lstm_cell_15/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+lstm_9/while/lstm_cell_15/ones_like_1/Constô
%lstm_9/while/lstm_cell_15/ones_like_1Fill4lstm_9/while/lstm_cell_15/ones_like_1/Shape:output:04lstm_9/while/lstm_cell_15/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2'
%lstm_9/while/lstm_cell_15/ones_like_1
)lstm_9/while/lstm_cell_15/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_4/Constï
'lstm_9/while/lstm_cell_15/dropout_4/MulMul.lstm_9/while/lstm_cell_15/ones_like_1:output:02lstm_9/while/lstm_cell_15/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_9/while/lstm_cell_15/dropout_4/Mul´
)lstm_9/while/lstm_cell_15/dropout_4/ShapeShape.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_4/Shape§
@lstm_9/while/lstm_cell_15/dropout_4/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2³Á¦2B
@lstm_9/while/lstm_cell_15/dropout_4/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_4/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_4/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_4/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0lstm_9/while/lstm_cell_15/dropout_4/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_4/CastCast4lstm_9/while/lstm_cell_15/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_9/while/lstm_cell_15/dropout_4/Castê
)lstm_9/while/lstm_cell_15/dropout_4/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_4/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_9/while/lstm_cell_15/dropout_4/Mul_1
)lstm_9/while/lstm_cell_15/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_5/Constï
'lstm_9/while/lstm_cell_15/dropout_5/MulMul.lstm_9/while/lstm_cell_15/ones_like_1:output:02lstm_9/while/lstm_cell_15/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_9/while/lstm_cell_15/dropout_5/Mul´
)lstm_9/while/lstm_cell_15/dropout_5/ShapeShape.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_5/Shape§
@lstm_9/while/lstm_cell_15/dropout_5/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2º¨ö2B
@lstm_9/while/lstm_cell_15/dropout_5/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_5/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_5/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_5/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0lstm_9/while/lstm_cell_15/dropout_5/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_5/CastCast4lstm_9/while/lstm_cell_15/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_9/while/lstm_cell_15/dropout_5/Castê
)lstm_9/while/lstm_cell_15/dropout_5/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_5/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_9/while/lstm_cell_15/dropout_5/Mul_1
)lstm_9/while/lstm_cell_15/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_6/Constï
'lstm_9/while/lstm_cell_15/dropout_6/MulMul.lstm_9/while/lstm_cell_15/ones_like_1:output:02lstm_9/while/lstm_cell_15/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_9/while/lstm_cell_15/dropout_6/Mul´
)lstm_9/while/lstm_cell_15/dropout_6/ShapeShape.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_6/Shape§
@lstm_9/while/lstm_cell_15/dropout_6/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2äº2B
@lstm_9/while/lstm_cell_15/dropout_6/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_6/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_6/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_6/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0lstm_9/while/lstm_cell_15/dropout_6/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_6/CastCast4lstm_9/while/lstm_cell_15/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_9/while/lstm_cell_15/dropout_6/Castê
)lstm_9/while/lstm_cell_15/dropout_6/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_6/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_9/while/lstm_cell_15/dropout_6/Mul_1
)lstm_9/while/lstm_cell_15/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_9/while/lstm_cell_15/dropout_7/Constï
'lstm_9/while/lstm_cell_15/dropout_7/MulMul.lstm_9/while/lstm_cell_15/ones_like_1:output:02lstm_9/while/lstm_cell_15/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_9/while/lstm_cell_15/dropout_7/Mul´
)lstm_9/while/lstm_cell_15/dropout_7/ShapeShape.lstm_9/while/lstm_cell_15/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_9/while/lstm_cell_15/dropout_7/Shape¦
@lstm_9/while/lstm_cell_15/dropout_7/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_15/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ð{2B
@lstm_9/while/lstm_cell_15/dropout_7/random_uniform/RandomUniform­
2lstm_9/while/lstm_cell_15/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>24
2lstm_9/while/lstm_cell_15/dropout_7/GreaterEqual/y®
0lstm_9/while/lstm_cell_15/dropout_7/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_15/dropout_7/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_15/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd22
0lstm_9/while/lstm_cell_15/dropout_7/GreaterEqualÓ
(lstm_9/while/lstm_cell_15/dropout_7/CastCast4lstm_9/while/lstm_cell_15/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_9/while/lstm_cell_15/dropout_7/Castê
)lstm_9/while/lstm_cell_15/dropout_7/Mul_1Mul+lstm_9/while/lstm_cell_15/dropout_7/Mul:z:0,lstm_9/while/lstm_cell_15/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_9/while/lstm_cell_15/dropout_7/Mul_1Ý
lstm_9/while/lstm_cell_15/mulMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_9/while/lstm_cell_15/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_9/while/lstm_cell_15/mulã
lstm_9/while/lstm_cell_15/mul_1Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_9/while/lstm_cell_15/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_1ã
lstm_9/while/lstm_cell_15/mul_2Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_9/while/lstm_cell_15/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_2ã
lstm_9/while/lstm_cell_15/mul_3Mul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_9/while/lstm_cell_15/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_9/while/lstm_cell_15/mul_3
lstm_9/while/lstm_cell_15/ConstConst*
_output_shapes
: *
dtype0*
value	B :2!
lstm_9/while/lstm_cell_15/Const
)lstm_9/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_9/while/lstm_cell_15/split/split_dimÛ
.lstm_9/while/lstm_cell_15/split/ReadVariableOpReadVariableOp9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0*
_output_shapes
:	2*
dtype020
.lstm_9/while/lstm_cell_15/split/ReadVariableOp
lstm_9/while/lstm_cell_15/splitSplit2lstm_9/while/lstm_cell_15/split/split_dim:output:06lstm_9/while/lstm_cell_15/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:2d:2d:2d:2d*
	num_split2!
lstm_9/while/lstm_cell_15/splitÍ
 lstm_9/while/lstm_cell_15/MatMulMatMul!lstm_9/while/lstm_cell_15/mul:z:0(lstm_9/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/MatMulÓ
"lstm_9/while/lstm_cell_15/MatMul_1MatMul#lstm_9/while/lstm_cell_15/mul_1:z:0(lstm_9/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_1Ó
"lstm_9/while/lstm_cell_15/MatMul_2MatMul#lstm_9/while/lstm_cell_15/mul_2:z:0(lstm_9/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_2Ó
"lstm_9/while/lstm_cell_15/MatMul_3MatMul#lstm_9/while/lstm_cell_15/mul_3:z:0(lstm_9/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_3
!lstm_9/while/lstm_cell_15/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_9/while/lstm_cell_15/Const_1
+lstm_9/while/lstm_cell_15/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+lstm_9/while/lstm_cell_15/split_1/split_dimÝ
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOpReadVariableOp;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp
!lstm_9/while/lstm_cell_15/split_1Split4lstm_9/while/lstm_cell_15/split_1/split_dim:output:08lstm_9/while/lstm_cell_15/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split2#
!lstm_9/while/lstm_cell_15/split_1Û
!lstm_9/while/lstm_cell_15/BiasAddBiasAdd*lstm_9/while/lstm_cell_15/MatMul:product:0*lstm_9/while/lstm_cell_15/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/while/lstm_cell_15/BiasAddá
#lstm_9/while/lstm_cell_15/BiasAdd_1BiasAdd,lstm_9/while/lstm_cell_15/MatMul_1:product:0*lstm_9/while/lstm_cell_15/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_1á
#lstm_9/while/lstm_cell_15/BiasAdd_2BiasAdd,lstm_9/while/lstm_cell_15/MatMul_2:product:0*lstm_9/while/lstm_cell_15/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_2á
#lstm_9/while/lstm_cell_15/BiasAdd_3BiasAdd,lstm_9/while/lstm_cell_15/MatMul_3:product:0*lstm_9/while/lstm_cell_15/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/BiasAdd_3Æ
lstm_9/while/lstm_cell_15/mul_4Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_15/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_4Æ
lstm_9/while/lstm_cell_15/mul_5Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_15/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_5Æ
lstm_9/while/lstm_cell_15/mul_6Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_15/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_6Æ
lstm_9/while/lstm_cell_15/mul_7Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_15/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_7É
(lstm_9/while/lstm_cell_15/ReadVariableOpReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02*
(lstm_9/while/lstm_cell_15/ReadVariableOp¯
-lstm_9/while/lstm_cell_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-lstm_9/while/lstm_cell_15/strided_slice/stack³
/lstm_9/while/lstm_cell_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/lstm_9/while/lstm_cell_15/strided_slice/stack_1³
/lstm_9/while/lstm_cell_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm_9/while/lstm_cell_15/strided_slice/stack_2
'lstm_9/while/lstm_cell_15/strided_sliceStridedSlice0lstm_9/while/lstm_cell_15/ReadVariableOp:value:06lstm_9/while/lstm_cell_15/strided_slice/stack:output:08lstm_9/while/lstm_cell_15/strided_slice/stack_1:output:08lstm_9/while/lstm_cell_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2)
'lstm_9/while/lstm_cell_15/strided_sliceÛ
"lstm_9/while/lstm_cell_15/MatMul_4MatMul#lstm_9/while/lstm_cell_15/mul_4:z:00lstm_9/while/lstm_cell_15/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_4Ó
lstm_9/while/lstm_cell_15/addAddV2*lstm_9/while/lstm_cell_15/BiasAdd:output:0,lstm_9/while/lstm_cell_15/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/lstm_cell_15/add¦
!lstm_9/while/lstm_cell_15/SigmoidSigmoid!lstm_9/while/lstm_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_9/while/lstm_cell_15/SigmoidÍ
*lstm_9/while/lstm_cell_15/ReadVariableOp_1ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_1³
/lstm_9/while/lstm_cell_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   21
/lstm_9/while/lstm_cell_15/strided_slice_1/stack·
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    È   23
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_1/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_1StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_1:value:08lstm_9/while/lstm_cell_15/strided_slice_1/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_1/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_1Ý
"lstm_9/while/lstm_cell_15/MatMul_5MatMul#lstm_9/while/lstm_cell_15/mul_5:z:02lstm_9/while/lstm_cell_15/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_5Ù
lstm_9/while/lstm_cell_15/add_1AddV2,lstm_9/while/lstm_cell_15/BiasAdd_1:output:0,lstm_9/while/lstm_cell_15/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_1¬
#lstm_9/while/lstm_cell_15/Sigmoid_1Sigmoid#lstm_9/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/Sigmoid_1À
lstm_9/while/lstm_cell_15/mul_8Mul'lstm_9/while/lstm_cell_15/Sigmoid_1:y:0lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_8Í
*lstm_9/while/lstm_cell_15/ReadVariableOp_2ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_2³
/lstm_9/while/lstm_cell_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    È   21
/lstm_9/while/lstm_cell_15/strided_slice_2/stack·
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  23
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_2/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_2StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_2:value:08lstm_9/while/lstm_cell_15/strided_slice_2/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_2/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_2Ý
"lstm_9/while/lstm_cell_15/MatMul_6MatMul#lstm_9/while/lstm_cell_15/mul_6:z:02lstm_9/while/lstm_cell_15/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_6Ù
lstm_9/while/lstm_cell_15/add_2AddV2,lstm_9/while/lstm_cell_15/BiasAdd_2:output:0,lstm_9/while/lstm_cell_15/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_2
lstm_9/while/lstm_cell_15/TanhTanh#lstm_9/while/lstm_cell_15/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_9/while/lstm_cell_15/TanhÆ
lstm_9/while/lstm_cell_15/mul_9Mul%lstm_9/while/lstm_cell_15/Sigmoid:y:0"lstm_9/while/lstm_cell_15/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/mul_9Ç
lstm_9/while/lstm_cell_15/add_3AddV2#lstm_9/while/lstm_cell_15/mul_8:z:0#lstm_9/while/lstm_cell_15/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_3Í
*lstm_9/while/lstm_cell_15/ReadVariableOp_3ReadVariableOp3lstm_9_while_lstm_cell_15_readvariableop_resource_0*
_output_shapes
:	d*
dtype02,
*lstm_9/while/lstm_cell_15/ReadVariableOp_3³
/lstm_9/while/lstm_cell_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  21
/lstm_9/while/lstm_cell_15/strided_slice_3/stack·
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_1·
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_9/while/lstm_cell_15/strided_slice_3/stack_2¤
)lstm_9/while/lstm_cell_15/strided_slice_3StridedSlice2lstm_9/while/lstm_cell_15/ReadVariableOp_3:value:08lstm_9/while/lstm_cell_15/strided_slice_3/stack:output:0:lstm_9/while/lstm_cell_15/strided_slice_3/stack_1:output:0:lstm_9/while/lstm_cell_15/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask2+
)lstm_9/while/lstm_cell_15/strided_slice_3Ý
"lstm_9/while/lstm_cell_15/MatMul_7MatMul#lstm_9/while/lstm_cell_15/mul_7:z:02lstm_9/while/lstm_cell_15/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_9/while/lstm_cell_15/MatMul_7Ù
lstm_9/while/lstm_cell_15/add_4AddV2,lstm_9/while/lstm_cell_15/BiasAdd_3:output:0,lstm_9/while/lstm_cell_15/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_9/while/lstm_cell_15/add_4¬
#lstm_9/while/lstm_cell_15/Sigmoid_2Sigmoid#lstm_9/while/lstm_cell_15/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2%
#lstm_9/while/lstm_cell_15/Sigmoid_2£
 lstm_9/while/lstm_cell_15/Tanh_1Tanh#lstm_9/while/lstm_cell_15/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/Tanh_1Ì
 lstm_9/while/lstm_cell_15/mul_10Mul'lstm_9/while/lstm_cell_15/Sigmoid_2:y:0$lstm_9/while/lstm_cell_15/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_9/while/lstm_cell_15/mul_10
1lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_9_while_placeholder_1lstm_9_while_placeholder$lstm_9/while/lstm_cell_15/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_9/while/TensorArrayV2Write/TensorListSetItemj
lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/while/add/y
lstm_9/while/addAddV2lstm_9_while_placeholderlstm_9/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_9/while/addn
lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_9/while/add_1/y
lstm_9/while/add_1AddV2&lstm_9_while_lstm_9_while_loop_counterlstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_9/while/add_1
lstm_9/while/IdentityIdentitylstm_9/while/add_1:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity£
lstm_9/while/Identity_1Identity,lstm_9_while_lstm_9_while_maximum_iterations)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_1
lstm_9/while/Identity_2Identitylstm_9/while/add:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_2¸
lstm_9/while/Identity_3IdentityAlstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_9/while/Identity_3¬
lstm_9/while/Identity_4Identity$lstm_9/while/lstm_cell_15/mul_10:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/Identity_4«
lstm_9/while/Identity_5Identity#lstm_9/while/lstm_cell_15/add_3:z:0)^lstm_9/while/lstm_cell_15/ReadVariableOp+^lstm_9/while/lstm_cell_15/ReadVariableOp_1+^lstm_9/while/lstm_cell_15/ReadVariableOp_2+^lstm_9/while/lstm_cell_15/ReadVariableOp_3/^lstm_9/while/lstm_cell_15/split/ReadVariableOp1^lstm_9/while/lstm_cell_15/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_9/while/Identity_5"7
lstm_9_while_identitylstm_9/while/Identity:output:0";
lstm_9_while_identity_1 lstm_9/while/Identity_1:output:0";
lstm_9_while_identity_2 lstm_9/while/Identity_2:output:0";
lstm_9_while_identity_3 lstm_9/while/Identity_3:output:0";
lstm_9_while_identity_4 lstm_9/while/Identity_4:output:0";
lstm_9_while_identity_5 lstm_9/while/Identity_5:output:0"L
#lstm_9_while_lstm_9_strided_slice_1%lstm_9_while_lstm_9_strided_slice_1_0"h
1lstm_9_while_lstm_cell_15_readvariableop_resource3lstm_9_while_lstm_cell_15_readvariableop_resource_0"x
9lstm_9_while_lstm_cell_15_split_1_readvariableop_resource;lstm_9_while_lstm_cell_15_split_1_readvariableop_resource_0"t
7lstm_9_while_lstm_cell_15_split_readvariableop_resource9lstm_9_while_lstm_cell_15_split_readvariableop_resource_0"Ä
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensoralstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : :::2T
(lstm_9/while/lstm_cell_15/ReadVariableOp(lstm_9/while/lstm_cell_15/ReadVariableOp2X
*lstm_9/while/lstm_cell_15/ReadVariableOp_1*lstm_9/while/lstm_cell_15/ReadVariableOp_12X
*lstm_9/while/lstm_cell_15/ReadVariableOp_2*lstm_9/while/lstm_cell_15/ReadVariableOp_22X
*lstm_9/while/lstm_cell_15/ReadVariableOp_3*lstm_9/while/lstm_cell_15/ReadVariableOp_32`
.lstm_9/while/lstm_cell_15/split/ReadVariableOp.lstm_9/while/lstm_cell_15/split/ReadVariableOp2d
0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp0lstm_9/while/lstm_cell_15/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: "±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
O
embedding_4_input:
#serving_default_embedding_4_input:0ÿÿÿÿÿÿÿÿÿP<
dense_120
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¹Ö
Þ*
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
*d&call_and_return_all_conditional_losses"(
_tf_keras_sequentialò'{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_4_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 46847, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_9", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 20, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_4_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 46847, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_9", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 20, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
©

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layerð{"class_name": "Embedding", "name": "embedding_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80]}, "dtype": "float32", "input_dim": 46847, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80]}}

	variables
regularization_losses
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layeré{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¾
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
i__call__
*j&call_and_return_all_conditional_losses"

_tf_keras_rnn_layer÷	{"class_name": "LSTM", "name": "lstm_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_9", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 50]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 50]}}
÷

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
k__call__
*l&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 20, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
¿
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
Ê
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
ÿí22embedding_4/embeddings
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
«

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
n__call__
*o&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "LSTMCell", "name": "lstm_cell_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_15", "trainable": true, "dtype": "float32", "units": 100, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}
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
¹
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
!:d2dense_12/kernel
:2dense_12/bias
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
-:+	22lstm_9/lstm_cell_15/kernel
7:5	d2$lstm_9/lstm_cell_15/recurrent_kernel
':%2lstm_9/lstm_cell_15/bias
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
»
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ÿ
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"¸
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
ÿí22Adam/embedding_4/embeddings/m
&:$d2Adam/dense_12/kernel/m
 :2Adam/dense_12/bias/m
2:0	22!Adam/lstm_9/lstm_cell_15/kernel/m
<::	d2+Adam/lstm_9/lstm_cell_15/recurrent_kernel/m
,:*2Adam/lstm_9/lstm_cell_15/bias/m
/:-
ÿí22Adam/embedding_4/embeddings/v
&:$d2Adam/dense_12/kernel/v
 :2Adam/dense_12/bias/v
2:0	22!Adam/lstm_9/lstm_cell_15/kernel/v
<::	d2+Adam/lstm_9/lstm_cell_15/recurrent_kernel/v
,:*2Adam/lstm_9/lstm_cell_15/bias/v
2ÿ
-__inference_sequential_4_layer_call_fn_101325
-__inference_sequential_4_layer_call_fn_100561
-__inference_sequential_4_layer_call_fn_100598
-__inference_sequential_4_layer_call_fn_101342À
·²³
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
kwonlydefaultsª 
annotationsª *
 
è2å
 __inference__wrapped_model_98902À
²
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
annotationsª *0¢-
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_101308
H__inference_sequential_4_layer_call_and_return_conditional_losses_101039
H__inference_sequential_4_layer_call_and_return_conditional_losses_100523
H__inference_sequential_4_layer_call_and_return_conditional_losses_100503À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
,__inference_embedding_4_layer_call_fn_101359¢
²
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
annotationsª *
 
ñ2î
G__inference_embedding_4_layer_call_and_return_conditional_losses_101352¢
²
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
annotationsª *
 
2
4__inference_spatial_dropout1d_4_layer_call_fn_101428
4__inference_spatial_dropout1d_4_layer_call_fn_101396
4__inference_spatial_dropout1d_4_layer_call_fn_101391
4__inference_spatial_dropout1d_4_layer_call_fn_101433´
«²§
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
kwonlydefaultsª 
annotationsª *
 
þ2û
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101381
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101423
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101386
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101418´
«²§
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
kwonlydefaultsª 
annotationsª *
 
ÿ2ü
'__inference_lstm_9_layer_call_fn_102753
'__inference_lstm_9_layer_call_fn_102082
'__inference_lstm_9_layer_call_fn_102093
'__inference_lstm_9_layer_call_fn_102742Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_9_layer_call_and_return_conditional_losses_101816
B__inference_lstm_9_layer_call_and_return_conditional_losses_102071
B__inference_lstm_9_layer_call_and_return_conditional_losses_102731
B__inference_lstm_9_layer_call_and_return_conditional_losses_102476Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_12_layer_call_fn_102773¢
²
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
annotationsª *
 
î2ë
D__inference_dense_12_layer_call_and_return_conditional_losses_102764¢
²
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
annotationsª *
 
ÕBÒ
$__inference_signature_wrapper_100625embedding_4_input"
²
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
annotationsª *
 
¢2
-__inference_lstm_cell_15_layer_call_fn_103039
-__inference_lstm_cell_15_layer_call_fn_103022¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_103005
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_102921¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
 __inference__wrapped_model_98902y%'&:¢7
0¢-
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
ª "3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_12_layer_call_and_return_conditional_losses_102764\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_12_layer_call_fn_102773O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿª
G__inference_embedding_4_layer_call_and_return_conditional_losses_101352_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿP
ª ")¢&

0ÿÿÿÿÿÿÿÿÿP2
 
,__inference_embedding_4_layer_call_fn_101359R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿP
ª "ÿÿÿÿÿÿÿÿÿP2Ã
B__inference_lstm_9_layer_call_and_return_conditional_losses_101816}%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 Ã
B__inference_lstm_9_layer_call_and_return_conditional_losses_102071}%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ³
B__inference_lstm_9_layer_call_and_return_conditional_losses_102476m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿP2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ³
B__inference_lstm_9_layer_call_and_return_conditional_losses_102731m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿP2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
'__inference_lstm_9_layer_call_fn_102082p%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿd
'__inference_lstm_9_layer_call_fn_102093p%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
'__inference_lstm_9_layer_call_fn_102742`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿP2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿd
'__inference_lstm_9_layer_call_fn_102753`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿP2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿdÊ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_102921ý%'&¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 Ê
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_103005ý%'&¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 
-__inference_lstm_cell_15_layer_call_fn_103022í%'&¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿd
-__inference_lstm_cell_15_layer_call_fn_103039í%'&¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿd¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_100503s%'&B¢?
8¢5
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_100523s%'&B¢?
8¢5
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_101039h%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿP
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_101308h%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿP
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_100561f%'&B¢?
8¢5
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_100598f%'&B¢?
8¢5
+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_101325[%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿP
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_101342[%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿP
p 

 
ª "ÿÿÿÿÿÿÿÿÿ·
$__inference_signature_wrapper_100625%'&O¢L
¢ 
EªB
@
embedding_4_input+(
embedding_4_inputÿÿÿÿÿÿÿÿÿP"3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿÜ
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101381I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ü
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101386I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ·
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101418d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿP2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿP2
 ·
O__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_101423d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿP2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿP2
 ³
4__inference_spatial_dropout1d_4_layer_call_fn_101391{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
4__inference_spatial_dropout1d_4_layer_call_fn_101396{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
4__inference_spatial_dropout1d_4_layer_call_fn_101428W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿP2
p
ª "ÿÿÿÿÿÿÿÿÿP2
4__inference_spatial_dropout1d_4_layer_call_fn_101433W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿP2
p 
ª "ÿÿÿÿÿÿÿÿÿP2