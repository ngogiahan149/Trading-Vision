��/
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��-
|
dense_260/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_260/kernel
u
$dense_260/kernel/Read/ReadVariableOpReadVariableOpdense_260/kernel*
_output_shapes

:
*
dtype0
t
dense_260/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_260/bias
m
"dense_260/bias/Read/ReadVariableOpReadVariableOpdense_260/bias*
_output_shapes
:*
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
�
lstm_780/lstm_cell_780/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_780/lstm_cell_780/kernel
�
1lstm_780/lstm_cell_780/kernel/Read/ReadVariableOpReadVariableOplstm_780/lstm_cell_780/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_780/lstm_cell_780/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*8
shared_name)'lstm_780/lstm_cell_780/recurrent_kernel
�
;lstm_780/lstm_cell_780/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_780/lstm_cell_780/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_780/lstm_cell_780/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_780/lstm_cell_780/bias
�
/lstm_780/lstm_cell_780/bias/Read/ReadVariableOpReadVariableOplstm_780/lstm_cell_780/bias*
_output_shapes	
:�*
dtype0
�
lstm_781/lstm_cell_781/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*.
shared_namelstm_781/lstm_cell_781/kernel
�
1lstm_781/lstm_cell_781/kernel/Read/ReadVariableOpReadVariableOplstm_781/lstm_cell_781/kernel*
_output_shapes
:	d�*
dtype0
�
'lstm_781/lstm_cell_781/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*8
shared_name)'lstm_781/lstm_cell_781/recurrent_kernel
�
;lstm_781/lstm_cell_781/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_781/lstm_cell_781/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
lstm_781/lstm_cell_781/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_781/lstm_cell_781/bias
�
/lstm_781/lstm_cell_781/bias/Read/ReadVariableOpReadVariableOplstm_781/lstm_cell_781/bias*
_output_shapes	
:�*
dtype0
�
lstm_782/lstm_cell_782/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_782/lstm_cell_782/kernel
�
1lstm_782/lstm_cell_782/kernel/Read/ReadVariableOpReadVariableOplstm_782/lstm_cell_782/kernel*
_output_shapes

:2(*
dtype0
�
'lstm_782/lstm_cell_782/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_782/lstm_cell_782/recurrent_kernel
�
;lstm_782/lstm_cell_782/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_782/lstm_cell_782/recurrent_kernel*
_output_shapes

:
(*
dtype0
�
lstm_782/lstm_cell_782/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_782/lstm_cell_782/bias
�
/lstm_782/lstm_cell_782/bias/Read/ReadVariableOpReadVariableOplstm_782/lstm_cell_782/bias*
_output_shapes
:(*
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
�
Adam/dense_260/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_260/kernel/m
�
+Adam/dense_260/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_260/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_260/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_260/bias/m
{
)Adam/dense_260/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_260/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_780/lstm_cell_780/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_780/lstm_cell_780/kernel/m
�
8Adam/lstm_780/lstm_cell_780/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_780/lstm_cell_780/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_780/lstm_cell_780/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_780/lstm_cell_780/recurrent_kernel/m
�
BAdam/lstm_780/lstm_cell_780/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_780/lstm_cell_780/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_780/lstm_cell_780/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_780/lstm_cell_780/bias/m
�
6Adam/lstm_780/lstm_cell_780/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_780/lstm_cell_780/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_781/lstm_cell_781/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_781/lstm_cell_781/kernel/m
�
8Adam/lstm_781/lstm_cell_781/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_781/lstm_cell_781/kernel/m*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_781/lstm_cell_781/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_781/lstm_cell_781/recurrent_kernel/m
�
BAdam/lstm_781/lstm_cell_781/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_781/lstm_cell_781/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_781/lstm_cell_781/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_781/lstm_cell_781/bias/m
�
6Adam/lstm_781/lstm_cell_781/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_781/lstm_cell_781/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_782/lstm_cell_782/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_782/lstm_cell_782/kernel/m
�
8Adam/lstm_782/lstm_cell_782/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_782/lstm_cell_782/kernel/m*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_782/lstm_cell_782/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_782/lstm_cell_782/recurrent_kernel/m
�
BAdam/lstm_782/lstm_cell_782/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_782/lstm_cell_782/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_782/lstm_cell_782/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_782/lstm_cell_782/bias/m
�
6Adam/lstm_782/lstm_cell_782/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_782/lstm_cell_782/bias/m*
_output_shapes
:(*
dtype0
�
Adam/dense_260/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_260/kernel/v
�
+Adam/dense_260/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_260/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_260/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_260/bias/v
{
)Adam/dense_260/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_260/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_780/lstm_cell_780/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_780/lstm_cell_780/kernel/v
�
8Adam/lstm_780/lstm_cell_780/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_780/lstm_cell_780/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_780/lstm_cell_780/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*?
shared_name0.Adam/lstm_780/lstm_cell_780/recurrent_kernel/v
�
BAdam/lstm_780/lstm_cell_780/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_780/lstm_cell_780/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
"Adam/lstm_780/lstm_cell_780/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_780/lstm_cell_780/bias/v
�
6Adam/lstm_780/lstm_cell_780/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_780/lstm_cell_780/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_781/lstm_cell_781/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*5
shared_name&$Adam/lstm_781/lstm_cell_781/kernel/v
�
8Adam/lstm_781/lstm_cell_781/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_781/lstm_cell_781/kernel/v*
_output_shapes
:	d�*
dtype0
�
.Adam/lstm_781/lstm_cell_781/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*?
shared_name0.Adam/lstm_781/lstm_cell_781/recurrent_kernel/v
�
BAdam/lstm_781/lstm_cell_781/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_781/lstm_cell_781/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
"Adam/lstm_781/lstm_cell_781/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_781/lstm_cell_781/bias/v
�
6Adam/lstm_781/lstm_cell_781/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_781/lstm_cell_781/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_782/lstm_cell_782/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_782/lstm_cell_782/kernel/v
�
8Adam/lstm_782/lstm_cell_782/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_782/lstm_cell_782/kernel/v*
_output_shapes

:2(*
dtype0
�
.Adam/lstm_782/lstm_cell_782/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_782/lstm_cell_782/recurrent_kernel/v
�
BAdam/lstm_782/lstm_cell_782/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_782/lstm_cell_782/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
�
"Adam/lstm_782/lstm_cell_782/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_782/lstm_cell_782/bias/v
�
6Adam/lstm_782/lstm_cell_782/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_782/lstm_cell_782/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�A
value�AB�A B�A
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
�

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_260/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_260/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
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
YW
VARIABLE_VALUElstm_780/lstm_cell_780/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_780/lstm_cell_780/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_780/lstm_cell_780/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_781/lstm_cell_781/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_781/lstm_cell_781/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_781/lstm_cell_781/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_782/lstm_cell_782/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_782/lstm_cell_782/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_782/lstm_cell_782/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
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
t0
u1

v	variables
}
VARIABLE_VALUEAdam/dense_260/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_260/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_780/lstm_cell_780/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_780/lstm_cell_780/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_780/lstm_cell_780/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_781/lstm_cell_781/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_781/lstm_cell_781/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_781/lstm_cell_781/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_782/lstm_cell_782/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_782/lstm_cell_782/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_782/lstm_cell_782/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_260/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_260/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_780/lstm_cell_780/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_780/lstm_cell_780/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_780/lstm_cell_780/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_781/lstm_cell_781/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_781/lstm_cell_781/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_781/lstm_cell_781/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_782/lstm_cell_782/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_782/lstm_cell_782/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_782/lstm_cell_782/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_780_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_780_inputlstm_780/lstm_cell_780/kernel'lstm_780/lstm_cell_780/recurrent_kernellstm_780/lstm_cell_780/biaslstm_781/lstm_cell_781/kernel'lstm_781/lstm_cell_781/recurrent_kernellstm_781/lstm_cell_781/biaslstm_782/lstm_cell_782/kernel'lstm_782/lstm_cell_782/recurrent_kernellstm_782/lstm_cell_782/biasdense_260/kerneldense_260/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_4007739
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_260/kernel/Read/ReadVariableOp"dense_260/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_780/lstm_cell_780/kernel/Read/ReadVariableOp;lstm_780/lstm_cell_780/recurrent_kernel/Read/ReadVariableOp/lstm_780/lstm_cell_780/bias/Read/ReadVariableOp1lstm_781/lstm_cell_781/kernel/Read/ReadVariableOp;lstm_781/lstm_cell_781/recurrent_kernel/Read/ReadVariableOp/lstm_781/lstm_cell_781/bias/Read/ReadVariableOp1lstm_782/lstm_cell_782/kernel/Read/ReadVariableOp;lstm_782/lstm_cell_782/recurrent_kernel/Read/ReadVariableOp/lstm_782/lstm_cell_782/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_260/kernel/m/Read/ReadVariableOp)Adam/dense_260/bias/m/Read/ReadVariableOp8Adam/lstm_780/lstm_cell_780/kernel/m/Read/ReadVariableOpBAdam/lstm_780/lstm_cell_780/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_780/lstm_cell_780/bias/m/Read/ReadVariableOp8Adam/lstm_781/lstm_cell_781/kernel/m/Read/ReadVariableOpBAdam/lstm_781/lstm_cell_781/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_781/lstm_cell_781/bias/m/Read/ReadVariableOp8Adam/lstm_782/lstm_cell_782/kernel/m/Read/ReadVariableOpBAdam/lstm_782/lstm_cell_782/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_782/lstm_cell_782/bias/m/Read/ReadVariableOp+Adam/dense_260/kernel/v/Read/ReadVariableOp)Adam/dense_260/bias/v/Read/ReadVariableOp8Adam/lstm_780/lstm_cell_780/kernel/v/Read/ReadVariableOpBAdam/lstm_780/lstm_cell_780/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_780/lstm_cell_780/bias/v/Read/ReadVariableOp8Adam/lstm_781/lstm_cell_781/kernel/v/Read/ReadVariableOpBAdam/lstm_781/lstm_cell_781/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_781/lstm_cell_781/bias/v/Read/ReadVariableOp8Adam/lstm_782/lstm_cell_782/kernel/v/Read/ReadVariableOpBAdam/lstm_782/lstm_cell_782/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_782/lstm_cell_782/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_4010951
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_260/kerneldense_260/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_780/lstm_cell_780/kernel'lstm_780/lstm_cell_780/recurrent_kernellstm_780/lstm_cell_780/biaslstm_781/lstm_cell_781/kernel'lstm_781/lstm_cell_781/recurrent_kernellstm_781/lstm_cell_781/biaslstm_782/lstm_cell_782/kernel'lstm_782/lstm_cell_782/recurrent_kernellstm_782/lstm_cell_782/biastotalcountAdam/dense_260/kernel/mAdam/dense_260/bias/m$Adam/lstm_780/lstm_cell_780/kernel/m.Adam/lstm_780/lstm_cell_780/recurrent_kernel/m"Adam/lstm_780/lstm_cell_780/bias/m$Adam/lstm_781/lstm_cell_781/kernel/m.Adam/lstm_781/lstm_cell_781/recurrent_kernel/m"Adam/lstm_781/lstm_cell_781/bias/m$Adam/lstm_782/lstm_cell_782/kernel/m.Adam/lstm_782/lstm_cell_782/recurrent_kernel/m"Adam/lstm_782/lstm_cell_782/bias/mAdam/dense_260/kernel/vAdam/dense_260/bias/v$Adam/lstm_780/lstm_cell_780/kernel/v.Adam/lstm_780/lstm_cell_780/recurrent_kernel/v"Adam/lstm_780/lstm_cell_780/bias/v$Adam/lstm_781/lstm_cell_781/kernel/v.Adam/lstm_781/lstm_cell_781/recurrent_kernel/v"Adam/lstm_781/lstm_cell_781/bias/v$Adam/lstm_782/lstm_cell_782/kernel/v.Adam/lstm_782/lstm_cell_782/recurrent_kernel/v"Adam/lstm_782/lstm_cell_782/bias/v*4
Tin-
+2)*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_4011081��+
�J
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4006678

inputs?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006594*
condR
while_cond_4006593*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008647

inputsH
5lstm_780_lstm_cell_660_matmul_readvariableop_resource:	�J
7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource:	d�E
6lstm_780_lstm_cell_660_biasadd_readvariableop_resource:	�H
5lstm_781_lstm_cell_661_matmul_readvariableop_resource:	d�J
7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource:	2�E
6lstm_781_lstm_cell_661_biasadd_readvariableop_resource:	�G
5lstm_782_lstm_cell_662_matmul_readvariableop_resource:2(I
7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource:
(D
6lstm_782_lstm_cell_662_biasadd_readvariableop_resource:(:
(dense_260_matmul_readvariableop_resource:
7
)dense_260_biasadd_readvariableop_resource:
identity�� dense_260/BiasAdd/ReadVariableOp�dense_260/MatMul/ReadVariableOp�-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp�,lstm_780/lstm_cell_660/MatMul/ReadVariableOp�.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp�lstm_780/while�-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp�,lstm_781/lstm_cell_661/MatMul/ReadVariableOp�.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp�lstm_781/while�-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp�,lstm_782/lstm_cell_662/MatMul/ReadVariableOp�.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp�lstm_782/whileD
lstm_780/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_780/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_780/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_780/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_sliceStridedSlicelstm_780/Shape:output:0%lstm_780/strided_slice/stack:output:0'lstm_780/strided_slice/stack_1:output:0'lstm_780/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_780/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_780/zeros/packedPacklstm_780/strided_slice:output:0 lstm_780/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_780/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_780/zerosFilllstm_780/zeros/packed:output:0lstm_780/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_780/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_780/zeros_1/packedPacklstm_780/strided_slice:output:0"lstm_780/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_780/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_780/zeros_1Fill lstm_780/zeros_1/packed:output:0lstm_780/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_780/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_780/transpose	Transposeinputs lstm_780/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_780/Shape_1Shapelstm_780/transpose:y:0*
T0*
_output_shapes
:h
lstm_780/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_780/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_1StridedSlicelstm_780/Shape_1:output:0'lstm_780/strided_slice_1/stack:output:0)lstm_780/strided_slice_1/stack_1:output:0)lstm_780/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_780/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_780/TensorArrayV2TensorListReserve-lstm_780/TensorArrayV2/element_shape:output:0!lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_780/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_780/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_780/transpose:y:0Glstm_780/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_780/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_780/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_2StridedSlicelstm_780/transpose:y:0'lstm_780/strided_slice_2/stack:output:0)lstm_780/strided_slice_2/stack_1:output:0)lstm_780/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_780/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp5lstm_780_lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_780/lstm_cell_660/MatMulMatMul!lstm_780/strided_slice_2:output:04lstm_780/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_780/lstm_cell_660/MatMul_1MatMullstm_780/zeros:output:06lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_780/lstm_cell_660/addAddV2'lstm_780/lstm_cell_660/MatMul:product:0)lstm_780/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp6lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_780/lstm_cell_660/BiasAddBiasAddlstm_780/lstm_cell_660/add:z:05lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_780/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_780/lstm_cell_660/splitSplit/lstm_780/lstm_cell_660/split/split_dim:output:0'lstm_780/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_780/lstm_cell_660/SigmoidSigmoid%lstm_780/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_780/lstm_cell_660/Sigmoid_1Sigmoid%lstm_780/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mulMul$lstm_780/lstm_cell_660/Sigmoid_1:y:0lstm_780/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_780/lstm_cell_660/ReluRelu%lstm_780/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mul_1Mul"lstm_780/lstm_cell_660/Sigmoid:y:0)lstm_780/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/add_1AddV2lstm_780/lstm_cell_660/mul:z:0 lstm_780/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_780/lstm_cell_660/Sigmoid_2Sigmoid%lstm_780/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_780/lstm_cell_660/Relu_1Relu lstm_780/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mul_2Mul$lstm_780/lstm_cell_660/Sigmoid_2:y:0+lstm_780/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_780/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_780/TensorArrayV2_1TensorListReserve/lstm_780/TensorArrayV2_1/element_shape:output:0!lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_780/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_780/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_780/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_780/whileWhile$lstm_780/while/loop_counter:output:0*lstm_780/while/maximum_iterations:output:0lstm_780/time:output:0!lstm_780/TensorArrayV2_1:handle:0lstm_780/zeros:output:0lstm_780/zeros_1:output:0!lstm_780/strided_slice_1:output:0@lstm_780/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_780_lstm_cell_660_matmul_readvariableop_resource7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource6lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_780_while_body_4008279*'
condR
lstm_780_while_cond_4008278*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_780/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_780/TensorArrayV2Stack/TensorListStackTensorListStacklstm_780/while:output:3Blstm_780/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_780/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_780/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_3StridedSlice4lstm_780/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_780/strided_slice_3/stack:output:0)lstm_780/strided_slice_3/stack_1:output:0)lstm_780/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_780/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_780/transpose_1	Transpose4lstm_780/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_780/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_780/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_781/ShapeShapelstm_780/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_781/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_781/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_781/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_sliceStridedSlicelstm_781/Shape:output:0%lstm_781/strided_slice/stack:output:0'lstm_781/strided_slice/stack_1:output:0'lstm_781/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_781/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_781/zeros/packedPacklstm_781/strided_slice:output:0 lstm_781/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_781/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_781/zerosFilllstm_781/zeros/packed:output:0lstm_781/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_781/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_781/zeros_1/packedPacklstm_781/strided_slice:output:0"lstm_781/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_781/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_781/zeros_1Fill lstm_781/zeros_1/packed:output:0lstm_781/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_781/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_781/transpose	Transposelstm_780/transpose_1:y:0 lstm_781/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_781/Shape_1Shapelstm_781/transpose:y:0*
T0*
_output_shapes
:h
lstm_781/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_781/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_1StridedSlicelstm_781/Shape_1:output:0'lstm_781/strided_slice_1/stack:output:0)lstm_781/strided_slice_1/stack_1:output:0)lstm_781/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_781/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_781/TensorArrayV2TensorListReserve-lstm_781/TensorArrayV2/element_shape:output:0!lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_781/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_781/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_781/transpose:y:0Glstm_781/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_781/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_781/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_2StridedSlicelstm_781/transpose:y:0'lstm_781/strided_slice_2/stack:output:0)lstm_781/strided_slice_2/stack_1:output:0)lstm_781/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_781/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp5lstm_781_lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_781/lstm_cell_661/MatMulMatMul!lstm_781/strided_slice_2:output:04lstm_781/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_781/lstm_cell_661/MatMul_1MatMullstm_781/zeros:output:06lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_781/lstm_cell_661/addAddV2'lstm_781/lstm_cell_661/MatMul:product:0)lstm_781/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp6lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_781/lstm_cell_661/BiasAddBiasAddlstm_781/lstm_cell_661/add:z:05lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_781/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_781/lstm_cell_661/splitSplit/lstm_781/lstm_cell_661/split/split_dim:output:0'lstm_781/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_781/lstm_cell_661/SigmoidSigmoid%lstm_781/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_781/lstm_cell_661/Sigmoid_1Sigmoid%lstm_781/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mulMul$lstm_781/lstm_cell_661/Sigmoid_1:y:0lstm_781/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_781/lstm_cell_661/ReluRelu%lstm_781/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mul_1Mul"lstm_781/lstm_cell_661/Sigmoid:y:0)lstm_781/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/add_1AddV2lstm_781/lstm_cell_661/mul:z:0 lstm_781/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_781/lstm_cell_661/Sigmoid_2Sigmoid%lstm_781/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_781/lstm_cell_661/Relu_1Relu lstm_781/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mul_2Mul$lstm_781/lstm_cell_661/Sigmoid_2:y:0+lstm_781/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_781/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_781/TensorArrayV2_1TensorListReserve/lstm_781/TensorArrayV2_1/element_shape:output:0!lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_781/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_781/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_781/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_781/whileWhile$lstm_781/while/loop_counter:output:0*lstm_781/while/maximum_iterations:output:0lstm_781/time:output:0!lstm_781/TensorArrayV2_1:handle:0lstm_781/zeros:output:0lstm_781/zeros_1:output:0!lstm_781/strided_slice_1:output:0@lstm_781/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_781_lstm_cell_661_matmul_readvariableop_resource7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource6lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_781_while_body_4008418*'
condR
lstm_781_while_cond_4008417*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_781/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_781/TensorArrayV2Stack/TensorListStackTensorListStacklstm_781/while:output:3Blstm_781/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_781/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_781/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_3StridedSlice4lstm_781/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_781/strided_slice_3/stack:output:0)lstm_781/strided_slice_3/stack_1:output:0)lstm_781/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_781/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_781/transpose_1	Transpose4lstm_781/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_781/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_781/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_782/ShapeShapelstm_781/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_782/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_782/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_782/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_sliceStridedSlicelstm_782/Shape:output:0%lstm_782/strided_slice/stack:output:0'lstm_782/strided_slice/stack_1:output:0'lstm_782/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_782/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_782/zeros/packedPacklstm_782/strided_slice:output:0 lstm_782/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_782/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_782/zerosFilllstm_782/zeros/packed:output:0lstm_782/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_782/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_782/zeros_1/packedPacklstm_782/strided_slice:output:0"lstm_782/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_782/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_782/zeros_1Fill lstm_782/zeros_1/packed:output:0lstm_782/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_782/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_782/transpose	Transposelstm_781/transpose_1:y:0 lstm_782/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_782/Shape_1Shapelstm_782/transpose:y:0*
T0*
_output_shapes
:h
lstm_782/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_782/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_1StridedSlicelstm_782/Shape_1:output:0'lstm_782/strided_slice_1/stack:output:0)lstm_782/strided_slice_1/stack_1:output:0)lstm_782/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_782/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_782/TensorArrayV2TensorListReserve-lstm_782/TensorArrayV2/element_shape:output:0!lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_782/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_782/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_782/transpose:y:0Glstm_782/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_782/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_782/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_2StridedSlicelstm_782/transpose:y:0'lstm_782/strided_slice_2/stack:output:0)lstm_782/strided_slice_2/stack_1:output:0)lstm_782/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_782/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp5lstm_782_lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_782/lstm_cell_662/MatMulMatMul!lstm_782/strided_slice_2:output:04lstm_782/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_782/lstm_cell_662/MatMul_1MatMullstm_782/zeros:output:06lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_782/lstm_cell_662/addAddV2'lstm_782/lstm_cell_662/MatMul:product:0)lstm_782/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp6lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_782/lstm_cell_662/BiasAddBiasAddlstm_782/lstm_cell_662/add:z:05lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_782/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_782/lstm_cell_662/splitSplit/lstm_782/lstm_cell_662/split/split_dim:output:0'lstm_782/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_782/lstm_cell_662/SigmoidSigmoid%lstm_782/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_782/lstm_cell_662/Sigmoid_1Sigmoid%lstm_782/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mulMul$lstm_782/lstm_cell_662/Sigmoid_1:y:0lstm_782/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_782/lstm_cell_662/ReluRelu%lstm_782/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mul_1Mul"lstm_782/lstm_cell_662/Sigmoid:y:0)lstm_782/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/add_1AddV2lstm_782/lstm_cell_662/mul:z:0 lstm_782/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_782/lstm_cell_662/Sigmoid_2Sigmoid%lstm_782/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_782/lstm_cell_662/Relu_1Relu lstm_782/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mul_2Mul$lstm_782/lstm_cell_662/Sigmoid_2:y:0+lstm_782/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_782/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_782/TensorArrayV2_1TensorListReserve/lstm_782/TensorArrayV2_1/element_shape:output:0!lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_782/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_782/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_782/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_782/whileWhile$lstm_782/while/loop_counter:output:0*lstm_782/while/maximum_iterations:output:0lstm_782/time:output:0!lstm_782/TensorArrayV2_1:handle:0lstm_782/zeros:output:0lstm_782/zeros_1:output:0!lstm_782/strided_slice_1:output:0@lstm_782/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_782_lstm_cell_662_matmul_readvariableop_resource7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource6lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_782_while_body_4008557*'
condR
lstm_782_while_cond_4008556*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_782/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_782/TensorArrayV2Stack/TensorListStackTensorListStacklstm_782/while:output:3Blstm_782/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_782/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_782/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_3StridedSlice4lstm_782/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_782/strided_slice_3/stack:output:0)lstm_782/strided_slice_3/stack_1:output:0)lstm_782/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_782/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_782/transpose_1	Transpose4lstm_782/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_782/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_782/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_260/MatMul/ReadVariableOpReadVariableOp(dense_260_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_260/MatMulMatMul!lstm_782/strided_slice_3:output:0'dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_260/BiasAdd/ReadVariableOpReadVariableOp)dense_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_260/BiasAddBiasAdddense_260/MatMul:product:0(dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_260/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_260/BiasAdd/ReadVariableOp ^dense_260/MatMul/ReadVariableOp.^lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp-^lstm_780/lstm_cell_660/MatMul/ReadVariableOp/^lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp^lstm_780/while.^lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp-^lstm_781/lstm_cell_661/MatMul/ReadVariableOp/^lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp^lstm_781/while.^lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp-^lstm_782/lstm_cell_662/MatMul/ReadVariableOp/^lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp^lstm_782/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_260/BiasAdd/ReadVariableOp dense_260/BiasAdd/ReadVariableOp2B
dense_260/MatMul/ReadVariableOpdense_260/MatMul/ReadVariableOp2^
-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp2\
,lstm_780/lstm_cell_660/MatMul/ReadVariableOp,lstm_780/lstm_cell_660/MatMul/ReadVariableOp2`
.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp2 
lstm_780/whilelstm_780/while2^
-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp2\
,lstm_781/lstm_cell_661/MatMul/ReadVariableOp,lstm_781/lstm_cell_661/MatMul/ReadVariableOp2`
.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp2 
lstm_781/whilelstm_781/while2^
-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp2\
,lstm_782/lstm_cell_662/MatMul/ReadVariableOp,lstm_782/lstm_cell_662/MatMul/ReadVariableOp2`
.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp2 
lstm_782/whilelstm_782/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4008749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4008749___redundant_placeholder05
1while_while_cond_4008749___redundant_placeholder15
1while_while_cond_4008749___redundant_placeholder25
1while_while_cond_4008749___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�

�
lstm_781_while_cond_4008417.
*lstm_781_while_lstm_781_while_loop_counter4
0lstm_781_while_lstm_781_while_maximum_iterations
lstm_781_while_placeholder 
lstm_781_while_placeholder_1 
lstm_781_while_placeholder_2 
lstm_781_while_placeholder_30
,lstm_781_while_less_lstm_781_strided_slice_1G
Clstm_781_while_lstm_781_while_cond_4008417___redundant_placeholder0G
Clstm_781_while_lstm_781_while_cond_4008417___redundant_placeholder1G
Clstm_781_while_lstm_781_while_cond_4008417___redundant_placeholder2G
Clstm_781_while_lstm_781_while_cond_4008417___redundant_placeholder3
lstm_781_while_identity
�
lstm_781/while/LessLesslstm_781_while_placeholder,lstm_781_while_less_lstm_781_strided_slice_1*
T0*
_output_shapes
: ]
lstm_781/while/IdentityIdentitylstm_781/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_781_while_identity lstm_781/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_4009178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009178___redundant_placeholder05
1while_while_cond_4009178___redundant_placeholder15
1while_while_cond_4009178___redundant_placeholder25
1while_while_cond_4009178___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_4005910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_661_4005934_0:	d�0
while_lstm_cell_661_4005936_0:	2�,
while_lstm_cell_661_4005938_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_661_4005934:	d�.
while_lstm_cell_661_4005936:	2�*
while_lstm_cell_661_4005938:	���+while/lstm_cell_661/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_661/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_661_4005934_0while_lstm_cell_661_4005936_0while_lstm_cell_661_4005938_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4005896�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_661/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_661/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_661/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_661/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_661_4005934while_lstm_cell_661_4005934_0"<
while_lstm_cell_661_4005936while_lstm_cell_661_4005936_0"<
while_lstm_cell_661_4005938while_lstm_cell_661_4005938_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_661/StatefulPartitionedCall+while/lstm_cell_661/StatefulPartitionedCall: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_4007275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�C
�

lstm_780_while_body_4007852.
*lstm_780_while_lstm_780_while_loop_counter4
0lstm_780_while_lstm_780_while_maximum_iterations
lstm_780_while_placeholder 
lstm_780_while_placeholder_1 
lstm_780_while_placeholder_2 
lstm_780_while_placeholder_3-
)lstm_780_while_lstm_780_strided_slice_1_0i
elstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0:	�R
?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�M
>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
lstm_780_while_identity
lstm_780_while_identity_1
lstm_780_while_identity_2
lstm_780_while_identity_3
lstm_780_while_identity_4
lstm_780_while_identity_5+
'lstm_780_while_lstm_780_strided_slice_1g
clstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensorN
;lstm_780_while_lstm_cell_660_matmul_readvariableop_resource:	�P
=lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource:	d�K
<lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource:	���3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp�2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp�4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp�
@lstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_780/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0lstm_780_while_placeholderIlstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_780/while/lstm_cell_660/MatMulMatMul9lstm_780/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_780/while/lstm_cell_660/MatMul_1MatMullstm_780_while_placeholder_2<lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_780/while/lstm_cell_660/addAddV2-lstm_780/while/lstm_cell_660/MatMul:product:0/lstm_780/while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_780/while/lstm_cell_660/BiasAddBiasAdd$lstm_780/while/lstm_cell_660/add:z:0;lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_780/while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_780/while/lstm_cell_660/splitSplit5lstm_780/while/lstm_cell_660/split/split_dim:output:0-lstm_780/while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_780/while/lstm_cell_660/SigmoidSigmoid+lstm_780/while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_780/while/lstm_cell_660/Sigmoid_1Sigmoid+lstm_780/while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_780/while/lstm_cell_660/mulMul*lstm_780/while/lstm_cell_660/Sigmoid_1:y:0lstm_780_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_780/while/lstm_cell_660/ReluRelu+lstm_780/while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/mul_1Mul(lstm_780/while/lstm_cell_660/Sigmoid:y:0/lstm_780/while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/add_1AddV2$lstm_780/while/lstm_cell_660/mul:z:0&lstm_780/while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_780/while/lstm_cell_660/Sigmoid_2Sigmoid+lstm_780/while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_780/while/lstm_cell_660/Relu_1Relu&lstm_780/while/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/mul_2Mul*lstm_780/while/lstm_cell_660/Sigmoid_2:y:01lstm_780/while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_780/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_780_while_placeholder_1lstm_780_while_placeholder&lstm_780/while/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_780/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_780/while/addAddV2lstm_780_while_placeholderlstm_780/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_780/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_780/while/add_1AddV2*lstm_780_while_lstm_780_while_loop_counterlstm_780/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_780/while/IdentityIdentitylstm_780/while/add_1:z:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_1Identity0lstm_780_while_lstm_780_while_maximum_iterations^lstm_780/while/NoOp*
T0*
_output_shapes
: t
lstm_780/while/Identity_2Identitylstm_780/while/add:z:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_3IdentityClstm_780/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_4Identity&lstm_780/while/lstm_cell_660/mul_2:z:0^lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_780/while/Identity_5Identity&lstm_780/while/lstm_cell_660/add_1:z:0^lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_780/while/NoOpNoOp4^lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp3^lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp5^lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_780_while_identity lstm_780/while/Identity:output:0"?
lstm_780_while_identity_1"lstm_780/while/Identity_1:output:0"?
lstm_780_while_identity_2"lstm_780/while/Identity_2:output:0"?
lstm_780_while_identity_3"lstm_780/while/Identity_3:output:0"?
lstm_780_while_identity_4"lstm_780/while/Identity_4:output:0"?
lstm_780_while_identity_5"lstm_780/while/Identity_5:output:0"T
'lstm_780_while_lstm_780_strided_slice_1)lstm_780_while_lstm_780_strided_slice_1_0"~
<lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0"�
=lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0"|
;lstm_780_while_lstm_cell_660_matmul_readvariableop_resource=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0"�
clstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensorelstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp2h
2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp2l
4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�

�
%__inference_signature_wrapper_4007739
lstm_780_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_780_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_4005479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�J
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4007194

inputs>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4007110*
condR
while_cond_4007109*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�K
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009450
inputs_0?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009366*
condR
while_cond_4009365*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�#
�
while_body_4006101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_661_4006125_0:	d�0
while_lstm_cell_661_4006127_0:	2�,
while_lstm_cell_661_4006129_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_661_4006125:	d�.
while_lstm_cell_661_4006127:	2�*
while_lstm_cell_661_4006129:	���+while/lstm_cell_661/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
+while/lstm_cell_661/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_661_4006125_0while_lstm_cell_661_4006127_0while_lstm_cell_661_4006129_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4006042�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_661/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_661/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2�
while/Identity_5Identity4while/lstm_cell_661/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������2z

while/NoOpNoOp,^while/lstm_cell_661/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_661_4006125while_lstm_cell_661_4006125_0"<
while_lstm_cell_661_4006127while_lstm_cell_661_4006127_0"<
while_lstm_cell_661_4006129while_lstm_cell_661_4006129_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2Z
+while/lstm_cell_661/StatefulPartitionedCall+while/lstm_cell_661/StatefulPartitionedCall: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_782_layer_call_fn_4009912

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*sequential_260_lstm_781_while_cond_4005249L
Hsequential_260_lstm_781_while_sequential_260_lstm_781_while_loop_counterR
Nsequential_260_lstm_781_while_sequential_260_lstm_781_while_maximum_iterations-
)sequential_260_lstm_781_while_placeholder/
+sequential_260_lstm_781_while_placeholder_1/
+sequential_260_lstm_781_while_placeholder_2/
+sequential_260_lstm_781_while_placeholder_3N
Jsequential_260_lstm_781_while_less_sequential_260_lstm_781_strided_slice_1e
asequential_260_lstm_781_while_sequential_260_lstm_781_while_cond_4005249___redundant_placeholder0e
asequential_260_lstm_781_while_sequential_260_lstm_781_while_cond_4005249___redundant_placeholder1e
asequential_260_lstm_781_while_sequential_260_lstm_781_while_cond_4005249___redundant_placeholder2e
asequential_260_lstm_781_while_sequential_260_lstm_781_while_cond_4005249___redundant_placeholder3*
&sequential_260_lstm_781_while_identity
�
"sequential_260/lstm_781/while/LessLess)sequential_260_lstm_781_while_placeholderJsequential_260_lstm_781_while_less_sequential_260_lstm_781_strided_slice_1*
T0*
_output_shapes
: {
&sequential_260/lstm_781/while/IdentityIdentity&sequential_260/lstm_781/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_260_lstm_781_while_identity/sequential_260/lstm_781/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_lstm_cell_662_layer_call_fn_4010727

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�C
�

lstm_782_while_body_4008557.
*lstm_782_while_lstm_782_while_loop_counter4
0lstm_782_while_lstm_782_while_maximum_iterations
lstm_782_while_placeholder 
lstm_782_while_placeholder_1 
lstm_782_while_placeholder_2 
lstm_782_while_placeholder_3-
)lstm_782_while_lstm_782_strided_slice_1_0i
elstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0:2(Q
?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(L
>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0:(
lstm_782_while_identity
lstm_782_while_identity_1
lstm_782_while_identity_2
lstm_782_while_identity_3
lstm_782_while_identity_4
lstm_782_while_identity_5+
'lstm_782_while_lstm_782_strided_slice_1g
clstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensorM
;lstm_782_while_lstm_cell_662_matmul_readvariableop_resource:2(O
=lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource:
(J
<lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource:(��3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp�2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp�4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp�
@lstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_782/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0lstm_782_while_placeholderIlstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_782/while/lstm_cell_662/MatMulMatMul9lstm_782/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_782/while/lstm_cell_662/MatMul_1MatMullstm_782_while_placeholder_2<lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_782/while/lstm_cell_662/addAddV2-lstm_782/while/lstm_cell_662/MatMul:product:0/lstm_782/while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_782/while/lstm_cell_662/BiasAddBiasAdd$lstm_782/while/lstm_cell_662/add:z:0;lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_782/while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_782/while/lstm_cell_662/splitSplit5lstm_782/while/lstm_cell_662/split/split_dim:output:0-lstm_782/while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_782/while/lstm_cell_662/SigmoidSigmoid+lstm_782/while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_782/while/lstm_cell_662/Sigmoid_1Sigmoid+lstm_782/while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_782/while/lstm_cell_662/mulMul*lstm_782/while/lstm_cell_662/Sigmoid_1:y:0lstm_782_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_782/while/lstm_cell_662/ReluRelu+lstm_782/while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/mul_1Mul(lstm_782/while/lstm_cell_662/Sigmoid:y:0/lstm_782/while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/add_1AddV2$lstm_782/while/lstm_cell_662/mul:z:0&lstm_782/while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_782/while/lstm_cell_662/Sigmoid_2Sigmoid+lstm_782/while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_782/while/lstm_cell_662/Relu_1Relu&lstm_782/while/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/mul_2Mul*lstm_782/while/lstm_cell_662/Sigmoid_2:y:01lstm_782/while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_782/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_782_while_placeholder_1lstm_782_while_placeholder&lstm_782/while/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_782/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_782/while/addAddV2lstm_782_while_placeholderlstm_782/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_782/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_782/while/add_1AddV2*lstm_782_while_lstm_782_while_loop_counterlstm_782/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_782/while/IdentityIdentitylstm_782/while/add_1:z:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_1Identity0lstm_782_while_lstm_782_while_maximum_iterations^lstm_782/while/NoOp*
T0*
_output_shapes
: t
lstm_782/while/Identity_2Identitylstm_782/while/add:z:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_3IdentityClstm_782/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_4Identity&lstm_782/while/lstm_cell_662/mul_2:z:0^lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_782/while/Identity_5Identity&lstm_782/while/lstm_cell_662/add_1:z:0^lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_782/while/NoOpNoOp4^lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp3^lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp5^lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_782_while_identity lstm_782/while/Identity:output:0"?
lstm_782_while_identity_1"lstm_782/while/Identity_1:output:0"?
lstm_782_while_identity_2"lstm_782/while/Identity_2:output:0"?
lstm_782_while_identity_3"lstm_782/while/Identity_3:output:0"?
lstm_782_while_identity_4"lstm_782/while/Identity_4:output:0"?
lstm_782_while_identity_5"lstm_782/while/Identity_5:output:0"T
'lstm_782_while_lstm_782_strided_slice_1)lstm_782_while_lstm_782_strided_slice_1_0"~
<lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0"�
=lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0"|
;lstm_782_while_lstm_cell_662_matmul_readvariableop_resource=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0"�
clstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensorelstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp2h
2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp2l
4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�T
�
*sequential_260_lstm_780_while_body_4005111L
Hsequential_260_lstm_780_while_sequential_260_lstm_780_while_loop_counterR
Nsequential_260_lstm_780_while_sequential_260_lstm_780_while_maximum_iterations-
)sequential_260_lstm_780_while_placeholder/
+sequential_260_lstm_780_while_placeholder_1/
+sequential_260_lstm_780_while_placeholder_2/
+sequential_260_lstm_780_while_placeholder_3K
Gsequential_260_lstm_780_while_sequential_260_lstm_780_strided_slice_1_0�
�sequential_260_lstm_780_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_780_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_260_lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0:	�a
Nsequential_260_lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�\
Msequential_260_lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0:	�*
&sequential_260_lstm_780_while_identity,
(sequential_260_lstm_780_while_identity_1,
(sequential_260_lstm_780_while_identity_2,
(sequential_260_lstm_780_while_identity_3,
(sequential_260_lstm_780_while_identity_4,
(sequential_260_lstm_780_while_identity_5I
Esequential_260_lstm_780_while_sequential_260_lstm_780_strided_slice_1�
�sequential_260_lstm_780_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_780_tensorarrayunstack_tensorlistfromtensor]
Jsequential_260_lstm_780_while_lstm_cell_660_matmul_readvariableop_resource:	�_
Lsequential_260_lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource:	d�Z
Ksequential_260_lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource:	���Bsequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp�Asequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp�Csequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp�
Osequential_260/lstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_260/lstm_780/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_260_lstm_780_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_780_tensorarrayunstack_tensorlistfromtensor_0)sequential_260_lstm_780_while_placeholderXsequential_260/lstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Asequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOpLsequential_260_lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
2sequential_260/lstm_780/while/lstm_cell_660/MatMulMatMulHsequential_260/lstm_780/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOpNsequential_260_lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
4sequential_260/lstm_780/while/lstm_cell_660/MatMul_1MatMul+sequential_260_lstm_780_while_placeholder_2Ksequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_260/lstm_780/while/lstm_cell_660/addAddV2<sequential_260/lstm_780/while/lstm_cell_660/MatMul:product:0>sequential_260/lstm_780/while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOpMsequential_260_lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_260/lstm_780/while/lstm_cell_660/BiasAddBiasAdd3sequential_260/lstm_780/while/lstm_cell_660/add:z:0Jsequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_260/lstm_780/while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_260/lstm_780/while/lstm_cell_660/splitSplitDsequential_260/lstm_780/while/lstm_cell_660/split/split_dim:output:0<sequential_260/lstm_780/while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
3sequential_260/lstm_780/while/lstm_cell_660/SigmoidSigmoid:sequential_260/lstm_780/while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
5sequential_260/lstm_780/while/lstm_cell_660/Sigmoid_1Sigmoid:sequential_260/lstm_780/while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
/sequential_260/lstm_780/while/lstm_cell_660/mulMul9sequential_260/lstm_780/while/lstm_cell_660/Sigmoid_1:y:0+sequential_260_lstm_780_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential_260/lstm_780/while/lstm_cell_660/ReluRelu:sequential_260/lstm_780/while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
1sequential_260/lstm_780/while/lstm_cell_660/mul_1Mul7sequential_260/lstm_780/while/lstm_cell_660/Sigmoid:y:0>sequential_260/lstm_780/while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
1sequential_260/lstm_780/while/lstm_cell_660/add_1AddV23sequential_260/lstm_780/while/lstm_cell_660/mul:z:05sequential_260/lstm_780/while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
5sequential_260/lstm_780/while/lstm_cell_660/Sigmoid_2Sigmoid:sequential_260/lstm_780/while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������d�
2sequential_260/lstm_780/while/lstm_cell_660/Relu_1Relu5sequential_260/lstm_780/while/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
1sequential_260/lstm_780/while/lstm_cell_660/mul_2Mul9sequential_260/lstm_780/while/lstm_cell_660/Sigmoid_2:y:0@sequential_260/lstm_780/while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
Bsequential_260/lstm_780/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_260_lstm_780_while_placeholder_1)sequential_260_lstm_780_while_placeholder5sequential_260/lstm_780/while/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_260/lstm_780/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_260/lstm_780/while/addAddV2)sequential_260_lstm_780_while_placeholder,sequential_260/lstm_780/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_260/lstm_780/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_260/lstm_780/while/add_1AddV2Hsequential_260_lstm_780_while_sequential_260_lstm_780_while_loop_counter.sequential_260/lstm_780/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_260/lstm_780/while/IdentityIdentity'sequential_260/lstm_780/while/add_1:z:0#^sequential_260/lstm_780/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_780/while/Identity_1IdentityNsequential_260_lstm_780_while_sequential_260_lstm_780_while_maximum_iterations#^sequential_260/lstm_780/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_780/while/Identity_2Identity%sequential_260/lstm_780/while/add:z:0#^sequential_260/lstm_780/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_780/while/Identity_3IdentityRsequential_260/lstm_780/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_260/lstm_780/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_780/while/Identity_4Identity5sequential_260/lstm_780/while/lstm_cell_660/mul_2:z:0#^sequential_260/lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
(sequential_260/lstm_780/while/Identity_5Identity5sequential_260/lstm_780/while/lstm_cell_660/add_1:z:0#^sequential_260/lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential_260/lstm_780/while/NoOpNoOpC^sequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOpB^sequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOpD^sequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_260_lstm_780_while_identity/sequential_260/lstm_780/while/Identity:output:0"]
(sequential_260_lstm_780_while_identity_11sequential_260/lstm_780/while/Identity_1:output:0"]
(sequential_260_lstm_780_while_identity_21sequential_260/lstm_780/while/Identity_2:output:0"]
(sequential_260_lstm_780_while_identity_31sequential_260/lstm_780/while/Identity_3:output:0"]
(sequential_260_lstm_780_while_identity_41sequential_260/lstm_780/while/Identity_4:output:0"]
(sequential_260_lstm_780_while_identity_51sequential_260/lstm_780/while/Identity_5:output:0"�
Ksequential_260_lstm_780_while_lstm_cell_660_biasadd_readvariableop_resourceMsequential_260_lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0"�
Lsequential_260_lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resourceNsequential_260_lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0"�
Jsequential_260_lstm_780_while_lstm_cell_660_matmul_readvariableop_resourceLsequential_260_lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0"�
Esequential_260_lstm_780_while_sequential_260_lstm_780_strided_slice_1Gsequential_260_lstm_780_while_sequential_260_lstm_780_strided_slice_1_0"�
�sequential_260_lstm_780_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_780_tensorarrayunstack_tensorlistfromtensor�sequential_260_lstm_780_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_780_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2�
Bsequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOpBsequential_260/lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp2�
Asequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOpAsequential_260/lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp2�
Csequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOpCsequential_260/lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4006893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006893___redundant_placeholder05
1while_while_cond_4006893___redundant_placeholder15
1while_while_cond_4006893___redundant_placeholder25
1while_while_cond_4006893___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4006894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4005820

inputs(
lstm_cell_660_4005738:	�(
lstm_cell_660_4005740:	d�$
lstm_cell_660_4005742:	�
identity��%lstm_cell_660/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_660/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_660_4005738lstm_cell_660_4005740lstm_cell_660_4005742*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005692n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_660_4005738lstm_cell_660_4005740lstm_cell_660_4005742*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4005751*
condR
while_cond_4005750*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_660/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_660/StatefulPartitionedCall%lstm_cell_660/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_662_layer_call_fn_4010744

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�
�
while_cond_4006100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006100___redundant_placeholder05
1while_while_cond_4006100___redundant_placeholder15
1while_while_cond_4006100___redundant_placeholder25
1while_while_cond_4006100___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4009652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4007439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4007439___redundant_placeholder05
1while_while_cond_4007439___redundant_placeholder15
1while_while_cond_4007439___redundant_placeholder25
1while_while_cond_4007439___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_lstm_cell_661_layer_call_fn_4010629

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4005896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�C
�

lstm_781_while_body_4008418.
*lstm_781_while_lstm_781_while_loop_counter4
0lstm_781_while_lstm_781_while_maximum_iterations
lstm_781_while_placeholder 
lstm_781_while_placeholder_1 
lstm_781_while_placeholder_2 
lstm_781_while_placeholder_3-
)lstm_781_while_lstm_781_strided_slice_1_0i
elstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0:	d�R
?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�M
>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
lstm_781_while_identity
lstm_781_while_identity_1
lstm_781_while_identity_2
lstm_781_while_identity_3
lstm_781_while_identity_4
lstm_781_while_identity_5+
'lstm_781_while_lstm_781_strided_slice_1g
clstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensorN
;lstm_781_while_lstm_cell_661_matmul_readvariableop_resource:	d�P
=lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource:	2�K
<lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource:	���3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp�2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp�4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp�
@lstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_781/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0lstm_781_while_placeholderIlstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_781/while/lstm_cell_661/MatMulMatMul9lstm_781/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_781/while/lstm_cell_661/MatMul_1MatMullstm_781_while_placeholder_2<lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_781/while/lstm_cell_661/addAddV2-lstm_781/while/lstm_cell_661/MatMul:product:0/lstm_781/while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_781/while/lstm_cell_661/BiasAddBiasAdd$lstm_781/while/lstm_cell_661/add:z:0;lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_781/while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_781/while/lstm_cell_661/splitSplit5lstm_781/while/lstm_cell_661/split/split_dim:output:0-lstm_781/while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_781/while/lstm_cell_661/SigmoidSigmoid+lstm_781/while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_781/while/lstm_cell_661/Sigmoid_1Sigmoid+lstm_781/while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_781/while/lstm_cell_661/mulMul*lstm_781/while/lstm_cell_661/Sigmoid_1:y:0lstm_781_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_781/while/lstm_cell_661/ReluRelu+lstm_781/while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/mul_1Mul(lstm_781/while/lstm_cell_661/Sigmoid:y:0/lstm_781/while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/add_1AddV2$lstm_781/while/lstm_cell_661/mul:z:0&lstm_781/while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_781/while/lstm_cell_661/Sigmoid_2Sigmoid+lstm_781/while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_781/while/lstm_cell_661/Relu_1Relu&lstm_781/while/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/mul_2Mul*lstm_781/while/lstm_cell_661/Sigmoid_2:y:01lstm_781/while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_781/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_781_while_placeholder_1lstm_781_while_placeholder&lstm_781/while/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_781/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_781/while/addAddV2lstm_781_while_placeholderlstm_781/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_781/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_781/while/add_1AddV2*lstm_781_while_lstm_781_while_loop_counterlstm_781/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_781/while/IdentityIdentitylstm_781/while/add_1:z:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_1Identity0lstm_781_while_lstm_781_while_maximum_iterations^lstm_781/while/NoOp*
T0*
_output_shapes
: t
lstm_781/while/Identity_2Identitylstm_781/while/add:z:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_3IdentityClstm_781/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_4Identity&lstm_781/while/lstm_cell_661/mul_2:z:0^lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_781/while/Identity_5Identity&lstm_781/while/lstm_cell_661/add_1:z:0^lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_781/while/NoOpNoOp4^lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp3^lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp5^lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_781_while_identity lstm_781/while/Identity:output:0"?
lstm_781_while_identity_1"lstm_781/while/Identity_1:output:0"?
lstm_781_while_identity_2"lstm_781/while/Identity_2:output:0"?
lstm_781_while_identity_3"lstm_781/while/Identity_3:output:0"?
lstm_781_while_identity_4"lstm_781/while/Identity_4:output:0"?
lstm_781_while_identity_5"lstm_781/while/Identity_5:output:0"T
'lstm_781_while_lstm_781_strided_slice_1)lstm_781_while_lstm_781_strided_slice_1_0"~
<lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0"�
=lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0"|
;lstm_781_while_lstm_cell_661_matmul_readvariableop_resource=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0"�
clstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensorelstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp2h
2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp2l
4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_780_layer_call_fn_4008669
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4005820|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
��
�
#__inference__traced_restore_4011081
file_prefix3
!assignvariableop_dense_260_kernel:
/
!assignvariableop_1_dense_260_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_780_lstm_cell_780_kernel:	�M
:assignvariableop_8_lstm_780_lstm_cell_780_recurrent_kernel:	d�=
.assignvariableop_9_lstm_780_lstm_cell_780_bias:	�D
1assignvariableop_10_lstm_781_lstm_cell_781_kernel:	d�N
;assignvariableop_11_lstm_781_lstm_cell_781_recurrent_kernel:	2�>
/assignvariableop_12_lstm_781_lstm_cell_781_bias:	�C
1assignvariableop_13_lstm_782_lstm_cell_782_kernel:2(M
;assignvariableop_14_lstm_782_lstm_cell_782_recurrent_kernel:
(=
/assignvariableop_15_lstm_782_lstm_cell_782_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_260_kernel_m:
7
)assignvariableop_19_adam_dense_260_bias_m:K
8assignvariableop_20_adam_lstm_780_lstm_cell_780_kernel_m:	�U
Bassignvariableop_21_adam_lstm_780_lstm_cell_780_recurrent_kernel_m:	d�E
6assignvariableop_22_adam_lstm_780_lstm_cell_780_bias_m:	�K
8assignvariableop_23_adam_lstm_781_lstm_cell_781_kernel_m:	d�U
Bassignvariableop_24_adam_lstm_781_lstm_cell_781_recurrent_kernel_m:	2�E
6assignvariableop_25_adam_lstm_781_lstm_cell_781_bias_m:	�J
8assignvariableop_26_adam_lstm_782_lstm_cell_782_kernel_m:2(T
Bassignvariableop_27_adam_lstm_782_lstm_cell_782_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_782_lstm_cell_782_bias_m:(=
+assignvariableop_29_adam_dense_260_kernel_v:
7
)assignvariableop_30_adam_dense_260_bias_v:K
8assignvariableop_31_adam_lstm_780_lstm_cell_780_kernel_v:	�U
Bassignvariableop_32_adam_lstm_780_lstm_cell_780_recurrent_kernel_v:	d�E
6assignvariableop_33_adam_lstm_780_lstm_cell_780_bias_v:	�K
8assignvariableop_34_adam_lstm_781_lstm_cell_781_kernel_v:	d�U
Bassignvariableop_35_adam_lstm_781_lstm_cell_781_recurrent_kernel_v:	2�E
6assignvariableop_36_adam_lstm_781_lstm_cell_781_bias_v:	�J
8assignvariableop_37_adam_lstm_782_lstm_cell_782_kernel_v:2(T
Bassignvariableop_38_adam_lstm_782_lstm_cell_782_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_782_lstm_cell_782_bias_v:(
identity_41��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_dense_260_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_260_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_780_lstm_cell_780_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_780_lstm_cell_780_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_780_lstm_cell_780_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_781_lstm_cell_781_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_781_lstm_cell_781_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_781_lstm_cell_781_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_782_lstm_cell_782_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_782_lstm_cell_782_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_782_lstm_cell_782_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_260_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_260_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_780_lstm_cell_780_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_780_lstm_cell_780_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_780_lstm_cell_780_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_781_lstm_cell_781_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_781_lstm_cell_781_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_781_lstm_cell_781_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_782_lstm_cell_782_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_782_lstm_cell_782_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_782_lstm_cell_782_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_260_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_260_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_780_lstm_cell_780_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_780_lstm_cell_780_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_780_lstm_cell_780_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_781_lstm_cell_781_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_781_lstm_cell_781_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_781_lstm_cell_781_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_782_lstm_cell_782_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_782_lstm_cell_782_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_782_lstm_cell_782_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
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
�

�
0__inference_sequential_260_layer_call_fn_4007028
lstm_780_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_780_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�
�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010776

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�
�
while_cond_4009651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009651___redundant_placeholder05
1while_while_cond_4009651___redundant_placeholder15
1while_while_cond_4009651___redundant_placeholder25
1while_while_cond_4009651___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_lstm_781_layer_call_fn_4009274
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4005979|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
*__inference_lstm_781_layer_call_fn_4009307

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4007359s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_4009509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005546

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�
�
*__inference_lstm_780_layer_call_fn_4008658
inputs_0
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4005629|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_4006743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006743___redundant_placeholder05
1while_while_cond_4006743___redundant_placeholder15
1while_while_cond_4006743___redundant_placeholder25
1while_while_cond_4006743___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�J
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009879

inputs?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009795*
condR
while_cond_4009794*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�K
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008834
inputs_0?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4008750*
condR
while_cond_4008749*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007704
lstm_780_input#
lstm_780_4007677:	�#
lstm_780_4007679:	d�
lstm_780_4007681:	�#
lstm_781_4007684:	d�#
lstm_781_4007686:	2�
lstm_781_4007688:	�"
lstm_782_4007691:2("
lstm_782_4007693:
(
lstm_782_4007695:(#
dense_260_4007698:

dense_260_4007700:
identity��!dense_260/StatefulPartitionedCall� lstm_780/StatefulPartitionedCall� lstm_781/StatefulPartitionedCall� lstm_782/StatefulPartitionedCall�
 lstm_780/StatefulPartitionedCallStatefulPartitionedCalllstm_780_inputlstm_780_4007677lstm_780_4007679lstm_780_4007681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4007524�
 lstm_781/StatefulPartitionedCallStatefulPartitionedCall)lstm_780/StatefulPartitionedCall:output:0lstm_781_4007684lstm_781_4007686lstm_781_4007688*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4007359�
 lstm_782/StatefulPartitionedCallStatefulPartitionedCall)lstm_781/StatefulPartitionedCall:output:0lstm_782_4007691lstm_782_4007693lstm_782_4007695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4007194�
!dense_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_782/StatefulPartitionedCall:output:0dense_260_4007698dense_260_4007700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996y
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_260/StatefulPartitionedCall!^lstm_780/StatefulPartitionedCall!^lstm_781/StatefulPartitionedCall!^lstm_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall2D
 lstm_780/StatefulPartitionedCall lstm_780/StatefulPartitionedCall2D
 lstm_781/StatefulPartitionedCall lstm_781/StatefulPartitionedCall2D
 lstm_782/StatefulPartitionedCall lstm_782/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�#
�
while_body_4006451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_662_4006475_0:2(/
while_lstm_cell_662_4006477_0:
(+
while_lstm_cell_662_4006479_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_662_4006475:2(-
while_lstm_cell_662_4006477:
()
while_lstm_cell_662_4006479:(��+while/lstm_cell_662/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_662/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_662_4006475_0while_lstm_cell_662_4006477_0while_lstm_cell_662_4006479_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006392�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_662/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_662/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_662/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_662_4006475while_lstm_cell_662_4006475_0"<
while_lstm_cell_662_4006477while_lstm_cell_662_4006477_0"<
while_lstm_cell_662_4006479while_lstm_cell_662_4006479_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_662/StatefulPartitionedCall+while/lstm_cell_662/StatefulPartitionedCall: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�K
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010066
inputs_0>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009982*
condR
while_cond_4009981*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
while_cond_4009035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009035___redundant_placeholder05
1while_while_cond_4009035___redundant_placeholder15
1while_while_cond_4009035___redundant_placeholder25
1while_while_cond_4009035___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_4010124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4010124___redundant_placeholder05
1while_while_cond_4010124___redundant_placeholder15
1while_while_cond_4010124___redundant_placeholder25
1while_while_cond_4010124___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4006594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_780_while_cond_4007851.
*lstm_780_while_lstm_780_while_loop_counter4
0lstm_780_while_lstm_780_while_maximum_iterations
lstm_780_while_placeholder 
lstm_780_while_placeholder_1 
lstm_780_while_placeholder_2 
lstm_780_while_placeholder_30
,lstm_780_while_less_lstm_780_strided_slice_1G
Clstm_780_while_lstm_780_while_cond_4007851___redundant_placeholder0G
Clstm_780_while_lstm_780_while_cond_4007851___redundant_placeholder1G
Clstm_780_while_lstm_780_while_cond_4007851___redundant_placeholder2G
Clstm_780_while_lstm_780_while_cond_4007851___redundant_placeholder3
lstm_780_while_identity
�
lstm_780/while/LessLesslstm_780_while_placeholder,lstm_780_while_less_lstm_780_strided_slice_1*
T0*
_output_shapes
: ]
lstm_780/while/IdentityIdentitylstm_780/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_780_while_identity lstm_780/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4009982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_4010268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_782_while_cond_4008129.
*lstm_782_while_lstm_782_while_loop_counter4
0lstm_782_while_lstm_782_while_maximum_iterations
lstm_782_while_placeholder 
lstm_782_while_placeholder_1 
lstm_782_while_placeholder_2 
lstm_782_while_placeholder_30
,lstm_782_while_less_lstm_782_strided_slice_1G
Clstm_782_while_lstm_782_while_cond_4008129___redundant_placeholder0G
Clstm_782_while_lstm_782_while_cond_4008129___redundant_placeholder1G
Clstm_782_while_lstm_782_while_cond_4008129___redundant_placeholder2G
Clstm_782_while_lstm_782_while_cond_4008129___redundant_placeholder3
lstm_782_while_identity
�
lstm_782/while/LessLesslstm_782_while_placeholder,lstm_782_while_less_lstm_782_strided_slice_1*
T0*
_output_shapes
: ]
lstm_782/while/IdentityIdentitylstm_782/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_782_while_identity lstm_782/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_4006260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_662_4006284_0:2(/
while_lstm_cell_662_4006286_0:
(+
while_lstm_cell_662_4006288_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_662_4006284:2(-
while_lstm_cell_662_4006286:
()
while_lstm_cell_662_4006288:(��+while/lstm_cell_662/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
+while/lstm_cell_662/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_662_4006284_0while_lstm_cell_662_4006286_0while_lstm_cell_662_4006288_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006246�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_662/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_662/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������
�
while/Identity_5Identity4while/lstm_cell_662/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������
z

while/NoOpNoOp,^while/lstm_cell_662/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_662_4006284while_lstm_cell_662_4006284_0"<
while_lstm_cell_662_4006286while_lstm_cell_662_4006286_0"<
while_lstm_cell_662_4006288while_lstm_cell_662_4006288_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2Z
+while/lstm_cell_662/StatefulPartitionedCall+while/lstm_cell_662/StatefulPartitionedCall: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_660_layer_call_fn_4010548

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005692o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�8
�
while_body_4008750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_4006744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
��
�
"__inference__wrapped_model_4005479
lstm_780_inputW
Dsequential_260_lstm_780_lstm_cell_660_matmul_readvariableop_resource:	�Y
Fsequential_260_lstm_780_lstm_cell_660_matmul_1_readvariableop_resource:	d�T
Esequential_260_lstm_780_lstm_cell_660_biasadd_readvariableop_resource:	�W
Dsequential_260_lstm_781_lstm_cell_661_matmul_readvariableop_resource:	d�Y
Fsequential_260_lstm_781_lstm_cell_661_matmul_1_readvariableop_resource:	2�T
Esequential_260_lstm_781_lstm_cell_661_biasadd_readvariableop_resource:	�V
Dsequential_260_lstm_782_lstm_cell_662_matmul_readvariableop_resource:2(X
Fsequential_260_lstm_782_lstm_cell_662_matmul_1_readvariableop_resource:
(S
Esequential_260_lstm_782_lstm_cell_662_biasadd_readvariableop_resource:(I
7sequential_260_dense_260_matmul_readvariableop_resource:
F
8sequential_260_dense_260_biasadd_readvariableop_resource:
identity��/sequential_260/dense_260/BiasAdd/ReadVariableOp�.sequential_260/dense_260/MatMul/ReadVariableOp�<sequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp�;sequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOp�=sequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp�sequential_260/lstm_780/while�<sequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp�;sequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOp�=sequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp�sequential_260/lstm_781/while�<sequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp�;sequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOp�=sequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp�sequential_260/lstm_782/while[
sequential_260/lstm_780/ShapeShapelstm_780_input*
T0*
_output_shapes
:u
+sequential_260/lstm_780/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_260/lstm_780/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_260/lstm_780/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_260/lstm_780/strided_sliceStridedSlice&sequential_260/lstm_780/Shape:output:04sequential_260/lstm_780/strided_slice/stack:output:06sequential_260/lstm_780/strided_slice/stack_1:output:06sequential_260/lstm_780/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_260/lstm_780/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
$sequential_260/lstm_780/zeros/packedPack.sequential_260/lstm_780/strided_slice:output:0/sequential_260/lstm_780/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_260/lstm_780/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_780/zerosFill-sequential_260/lstm_780/zeros/packed:output:0,sequential_260/lstm_780/zeros/Const:output:0*
T0*'
_output_shapes
:���������dj
(sequential_260/lstm_780/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
&sequential_260/lstm_780/zeros_1/packedPack.sequential_260/lstm_780/strided_slice:output:01sequential_260/lstm_780/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_260/lstm_780/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_780/zeros_1Fill/sequential_260/lstm_780/zeros_1/packed:output:0.sequential_260/lstm_780/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d{
&sequential_260/lstm_780/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_260/lstm_780/transpose	Transposelstm_780_input/sequential_260/lstm_780/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
sequential_260/lstm_780/Shape_1Shape%sequential_260/lstm_780/transpose:y:0*
T0*
_output_shapes
:w
-sequential_260/lstm_780/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_780/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_780/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_780/strided_slice_1StridedSlice(sequential_260/lstm_780/Shape_1:output:06sequential_260/lstm_780/strided_slice_1/stack:output:08sequential_260/lstm_780/strided_slice_1/stack_1:output:08sequential_260/lstm_780/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_260/lstm_780/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_260/lstm_780/TensorArrayV2TensorListReserve<sequential_260/lstm_780/TensorArrayV2/element_shape:output:00sequential_260/lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_260/lstm_780/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_260/lstm_780/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_260/lstm_780/transpose:y:0Vsequential_260/lstm_780/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_260/lstm_780/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_780/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_780/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_780/strided_slice_2StridedSlice%sequential_260/lstm_780/transpose:y:06sequential_260/lstm_780/strided_slice_2/stack:output:08sequential_260/lstm_780/strided_slice_2/stack_1:output:08sequential_260/lstm_780/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
;sequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOpReadVariableOpDsequential_260_lstm_780_lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,sequential_260/lstm_780/lstm_cell_660/MatMulMatMul0sequential_260/lstm_780/strided_slice_2:output:0Csequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOpFsequential_260_lstm_780_lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
.sequential_260/lstm_780/lstm_cell_660/MatMul_1MatMul&sequential_260/lstm_780/zeros:output:0Esequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_260/lstm_780/lstm_cell_660/addAddV26sequential_260/lstm_780/lstm_cell_660/MatMul:product:08sequential_260/lstm_780/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOpEsequential_260_lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_260/lstm_780/lstm_cell_660/BiasAddBiasAdd-sequential_260/lstm_780/lstm_cell_660/add:z:0Dsequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_260/lstm_780/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_260/lstm_780/lstm_cell_660/splitSplit>sequential_260/lstm_780/lstm_cell_660/split/split_dim:output:06sequential_260/lstm_780/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
-sequential_260/lstm_780/lstm_cell_660/SigmoidSigmoid4sequential_260/lstm_780/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
/sequential_260/lstm_780/lstm_cell_660/Sigmoid_1Sigmoid4sequential_260/lstm_780/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
)sequential_260/lstm_780/lstm_cell_660/mulMul3sequential_260/lstm_780/lstm_cell_660/Sigmoid_1:y:0(sequential_260/lstm_780/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential_260/lstm_780/lstm_cell_660/ReluRelu4sequential_260/lstm_780/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
+sequential_260/lstm_780/lstm_cell_660/mul_1Mul1sequential_260/lstm_780/lstm_cell_660/Sigmoid:y:08sequential_260/lstm_780/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
+sequential_260/lstm_780/lstm_cell_660/add_1AddV2-sequential_260/lstm_780/lstm_cell_660/mul:z:0/sequential_260/lstm_780/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
/sequential_260/lstm_780/lstm_cell_660/Sigmoid_2Sigmoid4sequential_260/lstm_780/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������d�
,sequential_260/lstm_780/lstm_cell_660/Relu_1Relu/sequential_260/lstm_780/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
+sequential_260/lstm_780/lstm_cell_660/mul_2Mul3sequential_260/lstm_780/lstm_cell_660/Sigmoid_2:y:0:sequential_260/lstm_780/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
5sequential_260/lstm_780/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'sequential_260/lstm_780/TensorArrayV2_1TensorListReserve>sequential_260/lstm_780/TensorArrayV2_1/element_shape:output:00sequential_260/lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_260/lstm_780/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_260/lstm_780/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_260/lstm_780/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_260/lstm_780/whileWhile3sequential_260/lstm_780/while/loop_counter:output:09sequential_260/lstm_780/while/maximum_iterations:output:0%sequential_260/lstm_780/time:output:00sequential_260/lstm_780/TensorArrayV2_1:handle:0&sequential_260/lstm_780/zeros:output:0(sequential_260/lstm_780/zeros_1:output:00sequential_260/lstm_780/strided_slice_1:output:0Osequential_260/lstm_780/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_260_lstm_780_lstm_cell_660_matmul_readvariableop_resourceFsequential_260_lstm_780_lstm_cell_660_matmul_1_readvariableop_resourceEsequential_260_lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_260_lstm_780_while_body_4005111*6
cond.R,
*sequential_260_lstm_780_while_cond_4005110*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Hsequential_260/lstm_780/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
:sequential_260/lstm_780/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_260/lstm_780/while:output:3Qsequential_260/lstm_780/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0�
-sequential_260/lstm_780/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_260/lstm_780/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_780/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_780/strided_slice_3StridedSliceCsequential_260/lstm_780/TensorArrayV2Stack/TensorListStack:tensor:06sequential_260/lstm_780/strided_slice_3/stack:output:08sequential_260/lstm_780/strided_slice_3/stack_1:output:08sequential_260/lstm_780/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask}
(sequential_260/lstm_780/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_260/lstm_780/transpose_1	TransposeCsequential_260/lstm_780/TensorArrayV2Stack/TensorListStack:tensor:01sequential_260/lstm_780/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ds
sequential_260/lstm_780/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_260/lstm_781/ShapeShape'sequential_260/lstm_780/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_260/lstm_781/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_260/lstm_781/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_260/lstm_781/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_260/lstm_781/strided_sliceStridedSlice&sequential_260/lstm_781/Shape:output:04sequential_260/lstm_781/strided_slice/stack:output:06sequential_260/lstm_781/strided_slice/stack_1:output:06sequential_260/lstm_781/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_260/lstm_781/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
$sequential_260/lstm_781/zeros/packedPack.sequential_260/lstm_781/strided_slice:output:0/sequential_260/lstm_781/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_260/lstm_781/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_781/zerosFill-sequential_260/lstm_781/zeros/packed:output:0,sequential_260/lstm_781/zeros/Const:output:0*
T0*'
_output_shapes
:���������2j
(sequential_260/lstm_781/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
&sequential_260/lstm_781/zeros_1/packedPack.sequential_260/lstm_781/strided_slice:output:01sequential_260/lstm_781/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_260/lstm_781/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_781/zeros_1Fill/sequential_260/lstm_781/zeros_1/packed:output:0.sequential_260/lstm_781/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2{
&sequential_260/lstm_781/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_260/lstm_781/transpose	Transpose'sequential_260/lstm_780/transpose_1:y:0/sequential_260/lstm_781/transpose/perm:output:0*
T0*+
_output_shapes
:���������dt
sequential_260/lstm_781/Shape_1Shape%sequential_260/lstm_781/transpose:y:0*
T0*
_output_shapes
:w
-sequential_260/lstm_781/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_781/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_781/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_781/strided_slice_1StridedSlice(sequential_260/lstm_781/Shape_1:output:06sequential_260/lstm_781/strided_slice_1/stack:output:08sequential_260/lstm_781/strided_slice_1/stack_1:output:08sequential_260/lstm_781/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_260/lstm_781/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_260/lstm_781/TensorArrayV2TensorListReserve<sequential_260/lstm_781/TensorArrayV2/element_shape:output:00sequential_260/lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_260/lstm_781/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
?sequential_260/lstm_781/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_260/lstm_781/transpose:y:0Vsequential_260/lstm_781/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_260/lstm_781/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_781/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_781/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_781/strided_slice_2StridedSlice%sequential_260/lstm_781/transpose:y:06sequential_260/lstm_781/strided_slice_2/stack:output:08sequential_260/lstm_781/strided_slice_2/stack_1:output:08sequential_260/lstm_781/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
;sequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOpReadVariableOpDsequential_260_lstm_781_lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
,sequential_260/lstm_781/lstm_cell_661/MatMulMatMul0sequential_260/lstm_781/strided_slice_2:output:0Csequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOpFsequential_260_lstm_781_lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
.sequential_260/lstm_781/lstm_cell_661/MatMul_1MatMul&sequential_260/lstm_781/zeros:output:0Esequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential_260/lstm_781/lstm_cell_661/addAddV26sequential_260/lstm_781/lstm_cell_661/MatMul:product:08sequential_260/lstm_781/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
<sequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOpEsequential_260_lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_260/lstm_781/lstm_cell_661/BiasAddBiasAdd-sequential_260/lstm_781/lstm_cell_661/add:z:0Dsequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
5sequential_260/lstm_781/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_260/lstm_781/lstm_cell_661/splitSplit>sequential_260/lstm_781/lstm_cell_661/split/split_dim:output:06sequential_260/lstm_781/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
-sequential_260/lstm_781/lstm_cell_661/SigmoidSigmoid4sequential_260/lstm_781/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
/sequential_260/lstm_781/lstm_cell_661/Sigmoid_1Sigmoid4sequential_260/lstm_781/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
)sequential_260/lstm_781/lstm_cell_661/mulMul3sequential_260/lstm_781/lstm_cell_661/Sigmoid_1:y:0(sequential_260/lstm_781/zeros_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential_260/lstm_781/lstm_cell_661/ReluRelu4sequential_260/lstm_781/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
+sequential_260/lstm_781/lstm_cell_661/mul_1Mul1sequential_260/lstm_781/lstm_cell_661/Sigmoid:y:08sequential_260/lstm_781/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
+sequential_260/lstm_781/lstm_cell_661/add_1AddV2-sequential_260/lstm_781/lstm_cell_661/mul:z:0/sequential_260/lstm_781/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
/sequential_260/lstm_781/lstm_cell_661/Sigmoid_2Sigmoid4sequential_260/lstm_781/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2�
,sequential_260/lstm_781/lstm_cell_661/Relu_1Relu/sequential_260/lstm_781/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
+sequential_260/lstm_781/lstm_cell_661/mul_2Mul3sequential_260/lstm_781/lstm_cell_661/Sigmoid_2:y:0:sequential_260/lstm_781/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
5sequential_260/lstm_781/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'sequential_260/lstm_781/TensorArrayV2_1TensorListReserve>sequential_260/lstm_781/TensorArrayV2_1/element_shape:output:00sequential_260/lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_260/lstm_781/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_260/lstm_781/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_260/lstm_781/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_260/lstm_781/whileWhile3sequential_260/lstm_781/while/loop_counter:output:09sequential_260/lstm_781/while/maximum_iterations:output:0%sequential_260/lstm_781/time:output:00sequential_260/lstm_781/TensorArrayV2_1:handle:0&sequential_260/lstm_781/zeros:output:0(sequential_260/lstm_781/zeros_1:output:00sequential_260/lstm_781/strided_slice_1:output:0Osequential_260/lstm_781/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_260_lstm_781_lstm_cell_661_matmul_readvariableop_resourceFsequential_260_lstm_781_lstm_cell_661_matmul_1_readvariableop_resourceEsequential_260_lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_260_lstm_781_while_body_4005250*6
cond.R,
*sequential_260_lstm_781_while_cond_4005249*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
Hsequential_260/lstm_781/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
:sequential_260/lstm_781/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_260/lstm_781/while:output:3Qsequential_260/lstm_781/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0�
-sequential_260/lstm_781/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_260/lstm_781/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_781/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_781/strided_slice_3StridedSliceCsequential_260/lstm_781/TensorArrayV2Stack/TensorListStack:tensor:06sequential_260/lstm_781/strided_slice_3/stack:output:08sequential_260/lstm_781/strided_slice_3/stack_1:output:08sequential_260/lstm_781/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask}
(sequential_260/lstm_781/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_260/lstm_781/transpose_1	TransposeCsequential_260/lstm_781/TensorArrayV2Stack/TensorListStack:tensor:01sequential_260/lstm_781/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2s
sequential_260/lstm_781/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_260/lstm_782/ShapeShape'sequential_260/lstm_781/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_260/lstm_782/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_260/lstm_782/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_260/lstm_782/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_260/lstm_782/strided_sliceStridedSlice&sequential_260/lstm_782/Shape:output:04sequential_260/lstm_782/strided_slice/stack:output:06sequential_260/lstm_782/strided_slice/stack_1:output:06sequential_260/lstm_782/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_260/lstm_782/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
$sequential_260/lstm_782/zeros/packedPack.sequential_260/lstm_782/strided_slice:output:0/sequential_260/lstm_782/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_260/lstm_782/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_782/zerosFill-sequential_260/lstm_782/zeros/packed:output:0,sequential_260/lstm_782/zeros/Const:output:0*
T0*'
_output_shapes
:���������
j
(sequential_260/lstm_782/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&sequential_260/lstm_782/zeros_1/packedPack.sequential_260/lstm_782/strided_slice:output:01sequential_260/lstm_782/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_260/lstm_782/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_260/lstm_782/zeros_1Fill/sequential_260/lstm_782/zeros_1/packed:output:0.sequential_260/lstm_782/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
{
&sequential_260/lstm_782/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_260/lstm_782/transpose	Transpose'sequential_260/lstm_781/transpose_1:y:0/sequential_260/lstm_782/transpose/perm:output:0*
T0*+
_output_shapes
:���������2t
sequential_260/lstm_782/Shape_1Shape%sequential_260/lstm_782/transpose:y:0*
T0*
_output_shapes
:w
-sequential_260/lstm_782/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_782/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_782/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_782/strided_slice_1StridedSlice(sequential_260/lstm_782/Shape_1:output:06sequential_260/lstm_782/strided_slice_1/stack:output:08sequential_260/lstm_782/strided_slice_1/stack_1:output:08sequential_260/lstm_782/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_260/lstm_782/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_260/lstm_782/TensorArrayV2TensorListReserve<sequential_260/lstm_782/TensorArrayV2/element_shape:output:00sequential_260/lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Msequential_260/lstm_782/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
?sequential_260/lstm_782/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_260/lstm_782/transpose:y:0Vsequential_260/lstm_782/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���w
-sequential_260/lstm_782/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_782/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_260/lstm_782/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_782/strided_slice_2StridedSlice%sequential_260/lstm_782/transpose:y:06sequential_260/lstm_782/strided_slice_2/stack:output:08sequential_260/lstm_782/strided_slice_2/stack_1:output:08sequential_260/lstm_782/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
;sequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOpReadVariableOpDsequential_260_lstm_782_lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
,sequential_260/lstm_782/lstm_cell_662/MatMulMatMul0sequential_260/lstm_782/strided_slice_2:output:0Csequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
=sequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOpFsequential_260_lstm_782_lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
.sequential_260/lstm_782/lstm_cell_662/MatMul_1MatMul&sequential_260/lstm_782/zeros:output:0Esequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)sequential_260/lstm_782/lstm_cell_662/addAddV26sequential_260/lstm_782/lstm_cell_662/MatMul:product:08sequential_260/lstm_782/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
<sequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOpEsequential_260_lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
-sequential_260/lstm_782/lstm_cell_662/BiasAddBiasAdd-sequential_260/lstm_782/lstm_cell_662/add:z:0Dsequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(w
5sequential_260/lstm_782/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_260/lstm_782/lstm_cell_662/splitSplit>sequential_260/lstm_782/lstm_cell_662/split/split_dim:output:06sequential_260/lstm_782/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
-sequential_260/lstm_782/lstm_cell_662/SigmoidSigmoid4sequential_260/lstm_782/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
/sequential_260/lstm_782/lstm_cell_662/Sigmoid_1Sigmoid4sequential_260/lstm_782/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
)sequential_260/lstm_782/lstm_cell_662/mulMul3sequential_260/lstm_782/lstm_cell_662/Sigmoid_1:y:0(sequential_260/lstm_782/zeros_1:output:0*
T0*'
_output_shapes
:���������
�
*sequential_260/lstm_782/lstm_cell_662/ReluRelu4sequential_260/lstm_782/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
+sequential_260/lstm_782/lstm_cell_662/mul_1Mul1sequential_260/lstm_782/lstm_cell_662/Sigmoid:y:08sequential_260/lstm_782/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
+sequential_260/lstm_782/lstm_cell_662/add_1AddV2-sequential_260/lstm_782/lstm_cell_662/mul:z:0/sequential_260/lstm_782/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
/sequential_260/lstm_782/lstm_cell_662/Sigmoid_2Sigmoid4sequential_260/lstm_782/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
�
,sequential_260/lstm_782/lstm_cell_662/Relu_1Relu/sequential_260/lstm_782/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
+sequential_260/lstm_782/lstm_cell_662/mul_2Mul3sequential_260/lstm_782/lstm_cell_662/Sigmoid_2:y:0:sequential_260/lstm_782/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
5sequential_260/lstm_782/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
'sequential_260/lstm_782/TensorArrayV2_1TensorListReserve>sequential_260/lstm_782/TensorArrayV2_1/element_shape:output:00sequential_260/lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���^
sequential_260/lstm_782/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_260/lstm_782/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������l
*sequential_260/lstm_782/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_260/lstm_782/whileWhile3sequential_260/lstm_782/while/loop_counter:output:09sequential_260/lstm_782/while/maximum_iterations:output:0%sequential_260/lstm_782/time:output:00sequential_260/lstm_782/TensorArrayV2_1:handle:0&sequential_260/lstm_782/zeros:output:0(sequential_260/lstm_782/zeros_1:output:00sequential_260/lstm_782/strided_slice_1:output:0Osequential_260/lstm_782/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_260_lstm_782_lstm_cell_662_matmul_readvariableop_resourceFsequential_260_lstm_782_lstm_cell_662_matmul_1_readvariableop_resourceEsequential_260_lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_260_lstm_782_while_body_4005389*6
cond.R,
*sequential_260_lstm_782_while_cond_4005388*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
Hsequential_260/lstm_782/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
:sequential_260/lstm_782/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_260/lstm_782/while:output:3Qsequential_260/lstm_782/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0�
-sequential_260/lstm_782/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������y
/sequential_260/lstm_782/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_260/lstm_782/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_260/lstm_782/strided_slice_3StridedSliceCsequential_260/lstm_782/TensorArrayV2Stack/TensorListStack:tensor:06sequential_260/lstm_782/strided_slice_3/stack:output:08sequential_260/lstm_782/strided_slice_3/stack_1:output:08sequential_260/lstm_782/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_mask}
(sequential_260/lstm_782/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_260/lstm_782/transpose_1	TransposeCsequential_260/lstm_782/TensorArrayV2Stack/TensorListStack:tensor:01sequential_260/lstm_782/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
s
sequential_260/lstm_782/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
.sequential_260/dense_260/MatMul/ReadVariableOpReadVariableOp7sequential_260_dense_260_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_260/dense_260/MatMulMatMul0sequential_260/lstm_782/strided_slice_3:output:06sequential_260/dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_260/dense_260/BiasAdd/ReadVariableOpReadVariableOp8sequential_260_dense_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_260/dense_260/BiasAddBiasAdd)sequential_260/dense_260/MatMul:product:07sequential_260/dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
IdentityIdentity)sequential_260/dense_260/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^sequential_260/dense_260/BiasAdd/ReadVariableOp/^sequential_260/dense_260/MatMul/ReadVariableOp=^sequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp<^sequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOp>^sequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp^sequential_260/lstm_780/while=^sequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp<^sequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOp>^sequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp^sequential_260/lstm_781/while=^sequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp<^sequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOp>^sequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp^sequential_260/lstm_782/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_260/dense_260/BiasAdd/ReadVariableOp/sequential_260/dense_260/BiasAdd/ReadVariableOp2`
.sequential_260/dense_260/MatMul/ReadVariableOp.sequential_260/dense_260/MatMul/ReadVariableOp2|
<sequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp<sequential_260/lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp2z
;sequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOp;sequential_260/lstm_780/lstm_cell_660/MatMul/ReadVariableOp2~
=sequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp=sequential_260/lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp2>
sequential_260/lstm_780/whilesequential_260/lstm_780/while2|
<sequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp<sequential_260/lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp2z
;sequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOp;sequential_260/lstm_781/lstm_cell_661/MatMul/ReadVariableOp2~
=sequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp=sequential_260/lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp2>
sequential_260/lstm_781/whilesequential_260/lstm_781/while2|
<sequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp<sequential_260/lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp2z
;sequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOp;sequential_260/lstm_782/lstm_cell_662/MatMul/ReadVariableOp2~
=sequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp=sequential_260/lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp2>
sequential_260/lstm_782/whilesequential_260/lstm_782/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�C
�

lstm_782_while_body_4008130.
*lstm_782_while_lstm_782_while_loop_counter4
0lstm_782_while_lstm_782_while_maximum_iterations
lstm_782_while_placeholder 
lstm_782_while_placeholder_1 
lstm_782_while_placeholder_2 
lstm_782_while_placeholder_3-
)lstm_782_while_lstm_782_strided_slice_1_0i
elstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0:2(Q
?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(L
>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0:(
lstm_782_while_identity
lstm_782_while_identity_1
lstm_782_while_identity_2
lstm_782_while_identity_3
lstm_782_while_identity_4
lstm_782_while_identity_5+
'lstm_782_while_lstm_782_strided_slice_1g
clstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensorM
;lstm_782_while_lstm_cell_662_matmul_readvariableop_resource:2(O
=lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource:
(J
<lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource:(��3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp�2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp�4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp�
@lstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
2lstm_782/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0lstm_782_while_placeholderIlstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
#lstm_782/while/lstm_cell_662/MatMulMatMul9lstm_782/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
%lstm_782/while/lstm_cell_662/MatMul_1MatMullstm_782_while_placeholder_2<lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
 lstm_782/while/lstm_cell_662/addAddV2-lstm_782/while/lstm_cell_662/MatMul:product:0/lstm_782/while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
$lstm_782/while/lstm_cell_662/BiasAddBiasAdd$lstm_782/while/lstm_cell_662/add:z:0;lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(n
,lstm_782/while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_782/while/lstm_cell_662/splitSplit5lstm_782/while/lstm_cell_662/split/split_dim:output:0-lstm_782/while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
$lstm_782/while/lstm_cell_662/SigmoidSigmoid+lstm_782/while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
&lstm_782/while/lstm_cell_662/Sigmoid_1Sigmoid+lstm_782/while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
 lstm_782/while/lstm_cell_662/mulMul*lstm_782/while/lstm_cell_662/Sigmoid_1:y:0lstm_782_while_placeholder_3*
T0*'
_output_shapes
:���������
�
!lstm_782/while/lstm_cell_662/ReluRelu+lstm_782/while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/mul_1Mul(lstm_782/while/lstm_cell_662/Sigmoid:y:0/lstm_782/while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/add_1AddV2$lstm_782/while/lstm_cell_662/mul:z:0&lstm_782/while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
&lstm_782/while/lstm_cell_662/Sigmoid_2Sigmoid+lstm_782/while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
�
#lstm_782/while/lstm_cell_662/Relu_1Relu&lstm_782/while/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
"lstm_782/while/lstm_cell_662/mul_2Mul*lstm_782/while/lstm_cell_662/Sigmoid_2:y:01lstm_782/while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
3lstm_782/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_782_while_placeholder_1lstm_782_while_placeholder&lstm_782/while/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_782/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_782/while/addAddV2lstm_782_while_placeholderlstm_782/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_782/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_782/while/add_1AddV2*lstm_782_while_lstm_782_while_loop_counterlstm_782/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_782/while/IdentityIdentitylstm_782/while/add_1:z:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_1Identity0lstm_782_while_lstm_782_while_maximum_iterations^lstm_782/while/NoOp*
T0*
_output_shapes
: t
lstm_782/while/Identity_2Identitylstm_782/while/add:z:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_3IdentityClstm_782/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_782/while/NoOp*
T0*
_output_shapes
: �
lstm_782/while/Identity_4Identity&lstm_782/while/lstm_cell_662/mul_2:z:0^lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_782/while/Identity_5Identity&lstm_782/while/lstm_cell_662/add_1:z:0^lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
lstm_782/while/NoOpNoOp4^lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp3^lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp5^lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_782_while_identity lstm_782/while/Identity:output:0"?
lstm_782_while_identity_1"lstm_782/while/Identity_1:output:0"?
lstm_782_while_identity_2"lstm_782/while/Identity_2:output:0"?
lstm_782_while_identity_3"lstm_782/while/Identity_3:output:0"?
lstm_782_while_identity_4"lstm_782/while/Identity_4:output:0"?
lstm_782_while_identity_5"lstm_782/while/Identity_5:output:0"T
'lstm_782_while_lstm_782_strided_slice_1)lstm_782_while_lstm_782_strided_slice_1_0"~
<lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource>lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0"�
=lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource?lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0"|
;lstm_782_while_lstm_cell_662_matmul_readvariableop_resource=lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0"�
clstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensorelstm_782_while_tensorarrayv2read_tensorlistgetitem_lstm_782_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2j
3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp3lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp2h
2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp2lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp2l
4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp4lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�T
�
*sequential_260_lstm_782_while_body_4005389L
Hsequential_260_lstm_782_while_sequential_260_lstm_782_while_loop_counterR
Nsequential_260_lstm_782_while_sequential_260_lstm_782_while_maximum_iterations-
)sequential_260_lstm_782_while_placeholder/
+sequential_260_lstm_782_while_placeholder_1/
+sequential_260_lstm_782_while_placeholder_2/
+sequential_260_lstm_782_while_placeholder_3K
Gsequential_260_lstm_782_while_sequential_260_lstm_782_strided_slice_1_0�
�sequential_260_lstm_782_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_782_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_260_lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0:2(`
Nsequential_260_lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0:
([
Msequential_260_lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0:(*
&sequential_260_lstm_782_while_identity,
(sequential_260_lstm_782_while_identity_1,
(sequential_260_lstm_782_while_identity_2,
(sequential_260_lstm_782_while_identity_3,
(sequential_260_lstm_782_while_identity_4,
(sequential_260_lstm_782_while_identity_5I
Esequential_260_lstm_782_while_sequential_260_lstm_782_strided_slice_1�
�sequential_260_lstm_782_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_782_tensorarrayunstack_tensorlistfromtensor\
Jsequential_260_lstm_782_while_lstm_cell_662_matmul_readvariableop_resource:2(^
Lsequential_260_lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource:
(Y
Ksequential_260_lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource:(��Bsequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp�Asequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp�Csequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp�
Osequential_260/lstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Asequential_260/lstm_782/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_260_lstm_782_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_782_tensorarrayunstack_tensorlistfromtensor_0)sequential_260_lstm_782_while_placeholderXsequential_260/lstm_782/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Asequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOpLsequential_260_lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
2sequential_260/lstm_782/while/lstm_cell_662/MatMulMatMulHsequential_260/lstm_782/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOpNsequential_260_lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
4sequential_260/lstm_782/while/lstm_cell_662/MatMul_1MatMul+sequential_260_lstm_782_while_placeholder_2Ksequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_260/lstm_782/while/lstm_cell_662/addAddV2<sequential_260/lstm_782/while/lstm_cell_662/MatMul:product:0>sequential_260/lstm_782/while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
Bsequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOpMsequential_260_lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
3sequential_260/lstm_782/while/lstm_cell_662/BiasAddBiasAdd3sequential_260/lstm_782/while/lstm_cell_662/add:z:0Jsequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(}
;sequential_260/lstm_782/while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_260/lstm_782/while/lstm_cell_662/splitSplitDsequential_260/lstm_782/while/lstm_cell_662/split/split_dim:output:0<sequential_260/lstm_782/while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
3sequential_260/lstm_782/while/lstm_cell_662/SigmoidSigmoid:sequential_260/lstm_782/while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
5sequential_260/lstm_782/while/lstm_cell_662/Sigmoid_1Sigmoid:sequential_260/lstm_782/while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
/sequential_260/lstm_782/while/lstm_cell_662/mulMul9sequential_260/lstm_782/while/lstm_cell_662/Sigmoid_1:y:0+sequential_260_lstm_782_while_placeholder_3*
T0*'
_output_shapes
:���������
�
0sequential_260/lstm_782/while/lstm_cell_662/ReluRelu:sequential_260/lstm_782/while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
1sequential_260/lstm_782/while/lstm_cell_662/mul_1Mul7sequential_260/lstm_782/while/lstm_cell_662/Sigmoid:y:0>sequential_260/lstm_782/while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
1sequential_260/lstm_782/while/lstm_cell_662/add_1AddV23sequential_260/lstm_782/while/lstm_cell_662/mul:z:05sequential_260/lstm_782/while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
5sequential_260/lstm_782/while/lstm_cell_662/Sigmoid_2Sigmoid:sequential_260/lstm_782/while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
�
2sequential_260/lstm_782/while/lstm_cell_662/Relu_1Relu5sequential_260/lstm_782/while/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
1sequential_260/lstm_782/while/lstm_cell_662/mul_2Mul9sequential_260/lstm_782/while/lstm_cell_662/Sigmoid_2:y:0@sequential_260/lstm_782/while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
Bsequential_260/lstm_782/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_260_lstm_782_while_placeholder_1)sequential_260_lstm_782_while_placeholder5sequential_260/lstm_782/while/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_260/lstm_782/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_260/lstm_782/while/addAddV2)sequential_260_lstm_782_while_placeholder,sequential_260/lstm_782/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_260/lstm_782/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_260/lstm_782/while/add_1AddV2Hsequential_260_lstm_782_while_sequential_260_lstm_782_while_loop_counter.sequential_260/lstm_782/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_260/lstm_782/while/IdentityIdentity'sequential_260/lstm_782/while/add_1:z:0#^sequential_260/lstm_782/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_782/while/Identity_1IdentityNsequential_260_lstm_782_while_sequential_260_lstm_782_while_maximum_iterations#^sequential_260/lstm_782/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_782/while/Identity_2Identity%sequential_260/lstm_782/while/add:z:0#^sequential_260/lstm_782/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_782/while/Identity_3IdentityRsequential_260/lstm_782/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_260/lstm_782/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_782/while/Identity_4Identity5sequential_260/lstm_782/while/lstm_cell_662/mul_2:z:0#^sequential_260/lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
(sequential_260/lstm_782/while/Identity_5Identity5sequential_260/lstm_782/while/lstm_cell_662/add_1:z:0#^sequential_260/lstm_782/while/NoOp*
T0*'
_output_shapes
:���������
�
"sequential_260/lstm_782/while/NoOpNoOpC^sequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOpB^sequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOpD^sequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_260_lstm_782_while_identity/sequential_260/lstm_782/while/Identity:output:0"]
(sequential_260_lstm_782_while_identity_11sequential_260/lstm_782/while/Identity_1:output:0"]
(sequential_260_lstm_782_while_identity_21sequential_260/lstm_782/while/Identity_2:output:0"]
(sequential_260_lstm_782_while_identity_31sequential_260/lstm_782/while/Identity_3:output:0"]
(sequential_260_lstm_782_while_identity_41sequential_260/lstm_782/while/Identity_4:output:0"]
(sequential_260_lstm_782_while_identity_51sequential_260/lstm_782/while/Identity_5:output:0"�
Ksequential_260_lstm_782_while_lstm_cell_662_biasadd_readvariableop_resourceMsequential_260_lstm_782_while_lstm_cell_662_biasadd_readvariableop_resource_0"�
Lsequential_260_lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resourceNsequential_260_lstm_782_while_lstm_cell_662_matmul_1_readvariableop_resource_0"�
Jsequential_260_lstm_782_while_lstm_cell_662_matmul_readvariableop_resourceLsequential_260_lstm_782_while_lstm_cell_662_matmul_readvariableop_resource_0"�
Esequential_260_lstm_782_while_sequential_260_lstm_782_strided_slice_1Gsequential_260_lstm_782_while_sequential_260_lstm_782_strided_slice_1_0"�
�sequential_260_lstm_782_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_782_tensorarrayunstack_tensorlistfromtensor�sequential_260_lstm_782_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_782_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2�
Bsequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOpBsequential_260/lstm_782/while/lstm_cell_662/BiasAdd/ReadVariableOp2�
Asequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOpAsequential_260/lstm_782/while/lstm_cell_662/MatMul/ReadVariableOp2�
Csequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOpCsequential_260/lstm_782/while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�8
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006520

inputs'
lstm_cell_662_4006438:2('
lstm_cell_662_4006440:
(#
lstm_cell_662_4006442:(
identity��%lstm_cell_662/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_662/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_662_4006438lstm_cell_662_4006440lstm_cell_662_4006442*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006392n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_662_4006438lstm_cell_662_4006440lstm_cell_662_4006442*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006451*
condR
while_cond_4006450*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
v
NoOpNoOp&^lstm_cell_662/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_662/StatefulPartitionedCall%lstm_cell_662/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
while_cond_4005909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4005909___redundant_placeholder05
1while_while_cond_4005909___redundant_placeholder15
1while_while_cond_4005909___redundant_placeholder25
1while_while_cond_4005909___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4008893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_4009179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�C
�

lstm_781_while_body_4007991.
*lstm_781_while_lstm_781_while_loop_counter4
0lstm_781_while_lstm_781_while_maximum_iterations
lstm_781_while_placeholder 
lstm_781_while_placeholder_1 
lstm_781_while_placeholder_2 
lstm_781_while_placeholder_3-
)lstm_781_while_lstm_781_strided_slice_1_0i
elstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0:	d�R
?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�M
>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
lstm_781_while_identity
lstm_781_while_identity_1
lstm_781_while_identity_2
lstm_781_while_identity_3
lstm_781_while_identity_4
lstm_781_while_identity_5+
'lstm_781_while_lstm_781_strided_slice_1g
clstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensorN
;lstm_781_while_lstm_cell_661_matmul_readvariableop_resource:	d�P
=lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource:	2�K
<lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource:	���3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp�2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp�4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp�
@lstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2lstm_781/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0lstm_781_while_placeholderIlstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
#lstm_781/while/lstm_cell_661/MatMulMatMul9lstm_781/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
%lstm_781/while/lstm_cell_661/MatMul_1MatMullstm_781_while_placeholder_2<lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_781/while/lstm_cell_661/addAddV2-lstm_781/while/lstm_cell_661/MatMul:product:0/lstm_781/while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_781/while/lstm_cell_661/BiasAddBiasAdd$lstm_781/while/lstm_cell_661/add:z:0;lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_781/while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_781/while/lstm_cell_661/splitSplit5lstm_781/while/lstm_cell_661/split/split_dim:output:0-lstm_781/while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
$lstm_781/while/lstm_cell_661/SigmoidSigmoid+lstm_781/while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
&lstm_781/while/lstm_cell_661/Sigmoid_1Sigmoid+lstm_781/while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
 lstm_781/while/lstm_cell_661/mulMul*lstm_781/while/lstm_cell_661/Sigmoid_1:y:0lstm_781_while_placeholder_3*
T0*'
_output_shapes
:���������2�
!lstm_781/while/lstm_cell_661/ReluRelu+lstm_781/while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/mul_1Mul(lstm_781/while/lstm_cell_661/Sigmoid:y:0/lstm_781/while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/add_1AddV2$lstm_781/while/lstm_cell_661/mul:z:0&lstm_781/while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
&lstm_781/while/lstm_cell_661/Sigmoid_2Sigmoid+lstm_781/while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2�
#lstm_781/while/lstm_cell_661/Relu_1Relu&lstm_781/while/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
"lstm_781/while/lstm_cell_661/mul_2Mul*lstm_781/while/lstm_cell_661/Sigmoid_2:y:01lstm_781/while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
3lstm_781/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_781_while_placeholder_1lstm_781_while_placeholder&lstm_781/while/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_781/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_781/while/addAddV2lstm_781_while_placeholderlstm_781/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_781/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_781/while/add_1AddV2*lstm_781_while_lstm_781_while_loop_counterlstm_781/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_781/while/IdentityIdentitylstm_781/while/add_1:z:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_1Identity0lstm_781_while_lstm_781_while_maximum_iterations^lstm_781/while/NoOp*
T0*
_output_shapes
: t
lstm_781/while/Identity_2Identitylstm_781/while/add:z:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_3IdentityClstm_781/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_781/while/NoOp*
T0*
_output_shapes
: �
lstm_781/while/Identity_4Identity&lstm_781/while/lstm_cell_661/mul_2:z:0^lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_781/while/Identity_5Identity&lstm_781/while/lstm_cell_661/add_1:z:0^lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
lstm_781/while/NoOpNoOp4^lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp3^lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp5^lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_781_while_identity lstm_781/while/Identity:output:0"?
lstm_781_while_identity_1"lstm_781/while/Identity_1:output:0"?
lstm_781_while_identity_2"lstm_781/while/Identity_2:output:0"?
lstm_781_while_identity_3"lstm_781/while/Identity_3:output:0"?
lstm_781_while_identity_4"lstm_781/while/Identity_4:output:0"?
lstm_781_while_identity_5"lstm_781/while/Identity_5:output:0"T
'lstm_781_while_lstm_781_strided_slice_1)lstm_781_while_lstm_781_strided_slice_1_0"~
<lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource>lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0"�
=lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource?lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0"|
;lstm_781_while_lstm_cell_661_matmul_readvariableop_resource=lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0"�
clstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensorelstm_781_while_tensorarrayv2read_tensorlistgetitem_lstm_781_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2j
3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp3lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp2h
2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp2lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp2l
4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp4lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_4009036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4009365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009365___redundant_placeholder05
1while_while_cond_4009365___redundant_placeholder15
1while_while_cond_4009365___redundant_placeholder25
1while_while_cond_4009365___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�J
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009736

inputs?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009652*
condR
while_cond_4009651*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
while_body_4009366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4005750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4005750___redundant_placeholder05
1while_while_cond_4005750___redundant_placeholder15
1while_while_cond_4005750___redundant_placeholder25
1while_while_cond_4005750___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_4009508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009508___redundant_placeholder05
1while_while_cond_4009508___redundant_placeholder15
1while_while_cond_4009508___redundant_placeholder25
1while_while_cond_4009508___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_lstm_780_layer_call_fn_4008691

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4007524s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_4010411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4005896

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
while_cond_4008892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4008892___redundant_placeholder05
1while_while_cond_4008892___redundant_placeholder15
1while_while_cond_4008892___redundant_placeholder25
1while_while_cond_4008892___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�J
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4007524

inputs?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4007440*
condR
while_cond_4007439*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_4010410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4010410___redundant_placeholder05
1while_while_cond_4010410___redundant_placeholder15
1while_while_cond_4010410___redundant_placeholder25
1while_while_cond_4010410___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010808

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������

"
_user_specified_name
states/0:QM
'
_output_shapes
:���������

"
_user_specified_name
states/1
�J
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4007359

inputs?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4007275*
condR
while_cond_4007274*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�8
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4005629

inputs(
lstm_cell_660_4005547:	�(
lstm_cell_660_4005549:	d�$
lstm_cell_660_4005551:	�
identity��%lstm_cell_660/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%lstm_cell_660/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_660_4005547lstm_cell_660_4005549lstm_cell_660_4005551*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005546n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_660_4005547lstm_cell_660_4005549lstm_cell_660_4005551*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4005560*
condR
while_cond_4005559*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dv
NoOpNoOp&^lstm_cell_660/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_660/StatefulPartitionedCall%lstm_cell_660/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_4009795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_661_matmul_readvariableop_resource_0:	d�I
6while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�D
5while_lstm_cell_661_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_661_matmul_readvariableop_resource:	d�G
4while_lstm_cell_661_matmul_1_readvariableop_resource:	2�B
3while_lstm_cell_661_biasadd_readvariableop_resource:	���*while/lstm_cell_661/BiasAdd/ReadVariableOp�)while/lstm_cell_661/MatMul/ReadVariableOp�+while/lstm_cell_661/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_661/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
while/lstm_cell_661/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_661/addAddV2$while/lstm_cell_661/MatMul:product:0&while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_661/BiasAddBiasAddwhile/lstm_cell_661/add:z:02while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_661/splitSplit,while/lstm_cell_661/split/split_dim:output:0$while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split|
while/lstm_cell_661/SigmoidSigmoid"while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_1Sigmoid"while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mulMul!while/lstm_cell_661/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������2v
while/lstm_cell_661/ReluRelu"while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_1Mulwhile/lstm_cell_661/Sigmoid:y:0&while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/add_1AddV2while/lstm_cell_661/mul:z:0while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2~
while/lstm_cell_661/Sigmoid_2Sigmoid"while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2s
while/lstm_cell_661/Relu_1Reluwhile/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
while/lstm_cell_661/mul_2Mul!while/lstm_cell_661/Sigmoid_2:y:0(while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_661/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������2z
while/Identity_5Identitywhile/lstm_cell_661/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp+^while/lstm_cell_661/BiasAdd/ReadVariableOp*^while/lstm_cell_661/MatMul/ReadVariableOp,^while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_661_biasadd_readvariableop_resource5while_lstm_cell_661_biasadd_readvariableop_resource_0"n
4while_lstm_cell_661_matmul_1_readvariableop_resource6while_lstm_cell_661_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_661_matmul_readvariableop_resource4while_lstm_cell_661_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2X
*while/lstm_cell_661/BiasAdd/ReadVariableOp*while/lstm_cell_661/BiasAdd/ReadVariableOp2V
)while/lstm_cell_661/MatMul/ReadVariableOp)while/lstm_cell_661/MatMul/ReadVariableOp2Z
+while/lstm_cell_661/MatMul_1/ReadVariableOp+while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007003

inputs#
lstm_780_4006679:	�#
lstm_780_4006681:	d�
lstm_780_4006683:	�#
lstm_781_4006829:	d�#
lstm_781_4006831:	2�
lstm_781_4006833:	�"
lstm_782_4006979:2("
lstm_782_4006981:
(
lstm_782_4006983:(#
dense_260_4006997:

dense_260_4006999:
identity��!dense_260/StatefulPartitionedCall� lstm_780/StatefulPartitionedCall� lstm_781/StatefulPartitionedCall� lstm_782/StatefulPartitionedCall�
 lstm_780/StatefulPartitionedCallStatefulPartitionedCallinputslstm_780_4006679lstm_780_4006681lstm_780_4006683*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4006678�
 lstm_781/StatefulPartitionedCallStatefulPartitionedCall)lstm_780/StatefulPartitionedCall:output:0lstm_781_4006829lstm_781_4006831lstm_781_4006833*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006828�
 lstm_782/StatefulPartitionedCallStatefulPartitionedCall)lstm_781/StatefulPartitionedCall:output:0lstm_782_4006979lstm_782_4006981lstm_782_4006983*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006978�
!dense_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_782/StatefulPartitionedCall:output:0dense_260_4006997dense_260_4006999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996y
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_260/StatefulPartitionedCall!^lstm_780/StatefulPartitionedCall!^lstm_781/StatefulPartitionedCall!^lstm_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall2D
 lstm_780/StatefulPartitionedCall lstm_780/StatefulPartitionedCall2D
 lstm_781/StatefulPartitionedCall lstm_781/StatefulPartitionedCall2D
 lstm_782/StatefulPartitionedCall lstm_782/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_782_layer_call_fn_4009901
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�J
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010495

inputs>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4010411*
condR
while_cond_4010410*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006170

inputs(
lstm_cell_661_4006088:	d�(
lstm_cell_661_4006090:	2�$
lstm_cell_661_4006092:	�
identity��%lstm_cell_661/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_661/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_661_4006088lstm_cell_661_4006090lstm_cell_661_4006092*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4006042n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_661_4006088lstm_cell_661_4006090lstm_cell_661_4006092*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006101*
condR
while_cond_4006100*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_661/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_661/StatefulPartitionedCall%lstm_cell_661/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�K
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010209
inputs_0>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4010125*
condR
while_cond_4010124*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�	
�
F__inference_dense_260_layer_call_and_return_conditional_losses_4010514

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_4005559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4005559___redundant_placeholder05
1while_while_cond_4005559___redundant_placeholder15
1while_while_cond_4005559___redundant_placeholder25
1while_while_cond_4005559___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007674
lstm_780_input#
lstm_780_4007647:	�#
lstm_780_4007649:	d�
lstm_780_4007651:	�#
lstm_781_4007654:	d�#
lstm_781_4007656:	2�
lstm_781_4007658:	�"
lstm_782_4007661:2("
lstm_782_4007663:
(
lstm_782_4007665:(#
dense_260_4007668:

dense_260_4007670:
identity��!dense_260/StatefulPartitionedCall� lstm_780/StatefulPartitionedCall� lstm_781/StatefulPartitionedCall� lstm_782/StatefulPartitionedCall�
 lstm_780/StatefulPartitionedCallStatefulPartitionedCalllstm_780_inputlstm_780_4007647lstm_780_4007649lstm_780_4007651*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4006678�
 lstm_781/StatefulPartitionedCallStatefulPartitionedCall)lstm_780/StatefulPartitionedCall:output:0lstm_781_4007654lstm_781_4007656lstm_781_4007658*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006828�
 lstm_782/StatefulPartitionedCallStatefulPartitionedCall)lstm_781/StatefulPartitionedCall:output:0lstm_782_4007661lstm_782_4007663lstm_782_4007665*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006978�
!dense_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_782/StatefulPartitionedCall:output:0dense_260_4007668dense_260_4007670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996y
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_260/StatefulPartitionedCall!^lstm_780/StatefulPartitionedCall!^lstm_781/StatefulPartitionedCall!^lstm_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall2D
 lstm_780/StatefulPartitionedCall lstm_780/StatefulPartitionedCall2D
 lstm_781/StatefulPartitionedCall lstm_781/StatefulPartitionedCall2D
 lstm_782/StatefulPartitionedCall lstm_782/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�8
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006329

inputs'
lstm_cell_662_4006247:2('
lstm_cell_662_4006249:
(#
lstm_cell_662_4006251:(
identity��%lstm_cell_662/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
%lstm_cell_662/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_662_4006247lstm_cell_662_4006249lstm_cell_662_4006251*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������
:���������
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006246n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_662_4006247lstm_cell_662_4006249lstm_cell_662_4006251*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006260*
condR
while_cond_4006259*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
v
NoOpNoOp&^lstm_cell_662/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2N
%lstm_cell_662/StatefulPartitionedCall%lstm_cell_662/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_660_layer_call_fn_4010531

inputs
states_0
states_1
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005546o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�K
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008977
inputs_0?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4008893*
condR
while_cond_4008892*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010580

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
while_cond_4006450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006450___redundant_placeholder05
1while_while_cond_4006450___redundant_placeholder15
1while_while_cond_4006450___redundant_placeholder25
1while_while_cond_4006450___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�

�
0__inference_sequential_260_layer_call_fn_4007766

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_4005560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_660_4005584_0:	�0
while_lstm_cell_660_4005586_0:	d�,
while_lstm_cell_660_4005588_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_660_4005584:	�.
while_lstm_cell_660_4005586:	d�*
while_lstm_cell_660_4005588:	���+while/lstm_cell_660/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_660/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_660_4005584_0while_lstm_cell_660_4005586_0while_lstm_cell_660_4005588_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005546�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_660/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_660/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_660/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_660/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_660_4005584while_lstm_cell_660_4005584_0"<
while_lstm_cell_660_4005586while_lstm_cell_660_4005586_0"<
while_lstm_cell_660_4005588while_lstm_cell_660_4005588_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_660/StatefulPartitionedCall+while/lstm_cell_660/StatefulPartitionedCall: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010612

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�	
�
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
lstm_782_while_cond_4008556.
*lstm_782_while_lstm_782_while_loop_counter4
0lstm_782_while_lstm_782_while_maximum_iterations
lstm_782_while_placeholder 
lstm_782_while_placeholder_1 
lstm_782_while_placeholder_2 
lstm_782_while_placeholder_30
,lstm_782_while_less_lstm_782_strided_slice_1G
Clstm_782_while_lstm_782_while_cond_4008556___redundant_placeholder0G
Clstm_782_while_lstm_782_while_cond_4008556___redundant_placeholder1G
Clstm_782_while_lstm_782_while_cond_4008556___redundant_placeholder2G
Clstm_782_while_lstm_782_while_cond_4008556___redundant_placeholder3
lstm_782_while_identity
�
lstm_782/while/LessLesslstm_782_while_placeholder,lstm_782_while_less_lstm_782_strided_slice_1*
T0*
_output_shapes
: ]
lstm_782/while/IdentityIdentitylstm_782/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_782_while_identity lstm_782/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�

�
0__inference_sequential_260_layer_call_fn_4007793

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008220

inputsH
5lstm_780_lstm_cell_660_matmul_readvariableop_resource:	�J
7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource:	d�E
6lstm_780_lstm_cell_660_biasadd_readvariableop_resource:	�H
5lstm_781_lstm_cell_661_matmul_readvariableop_resource:	d�J
7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource:	2�E
6lstm_781_lstm_cell_661_biasadd_readvariableop_resource:	�G
5lstm_782_lstm_cell_662_matmul_readvariableop_resource:2(I
7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource:
(D
6lstm_782_lstm_cell_662_biasadd_readvariableop_resource:(:
(dense_260_matmul_readvariableop_resource:
7
)dense_260_biasadd_readvariableop_resource:
identity�� dense_260/BiasAdd/ReadVariableOp�dense_260/MatMul/ReadVariableOp�-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp�,lstm_780/lstm_cell_660/MatMul/ReadVariableOp�.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp�lstm_780/while�-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp�,lstm_781/lstm_cell_661/MatMul/ReadVariableOp�.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp�lstm_781/while�-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp�,lstm_782/lstm_cell_662/MatMul/ReadVariableOp�.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp�lstm_782/whileD
lstm_780/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_780/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_780/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_780/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_sliceStridedSlicelstm_780/Shape:output:0%lstm_780/strided_slice/stack:output:0'lstm_780/strided_slice/stack_1:output:0'lstm_780/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_780/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_780/zeros/packedPacklstm_780/strided_slice:output:0 lstm_780/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_780/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_780/zerosFilllstm_780/zeros/packed:output:0lstm_780/zeros/Const:output:0*
T0*'
_output_shapes
:���������d[
lstm_780/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_780/zeros_1/packedPacklstm_780/strided_slice:output:0"lstm_780/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_780/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_780/zeros_1Fill lstm_780/zeros_1/packed:output:0lstm_780/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dl
lstm_780/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_780/transpose	Transposeinputs lstm_780/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
lstm_780/Shape_1Shapelstm_780/transpose:y:0*
T0*
_output_shapes
:h
lstm_780/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_780/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_1StridedSlicelstm_780/Shape_1:output:0'lstm_780/strided_slice_1/stack:output:0)lstm_780/strided_slice_1/stack_1:output:0)lstm_780/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_780/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_780/TensorArrayV2TensorListReserve-lstm_780/TensorArrayV2/element_shape:output:0!lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_780/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0lstm_780/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_780/transpose:y:0Glstm_780/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_780/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_780/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_2StridedSlicelstm_780/transpose:y:0'lstm_780/strided_slice_2/stack:output:0)lstm_780/strided_slice_2/stack_1:output:0)lstm_780/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
,lstm_780/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp5lstm_780_lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_780/lstm_cell_660/MatMulMatMul!lstm_780/strided_slice_2:output:04lstm_780/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_780/lstm_cell_660/MatMul_1MatMullstm_780/zeros:output:06lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_780/lstm_cell_660/addAddV2'lstm_780/lstm_cell_660/MatMul:product:0)lstm_780/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp6lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_780/lstm_cell_660/BiasAddBiasAddlstm_780/lstm_cell_660/add:z:05lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_780/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_780/lstm_cell_660/splitSplit/lstm_780/lstm_cell_660/split/split_dim:output:0'lstm_780/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
lstm_780/lstm_cell_660/SigmoidSigmoid%lstm_780/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
 lstm_780/lstm_cell_660/Sigmoid_1Sigmoid%lstm_780/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mulMul$lstm_780/lstm_cell_660/Sigmoid_1:y:0lstm_780/zeros_1:output:0*
T0*'
_output_shapes
:���������d|
lstm_780/lstm_cell_660/ReluRelu%lstm_780/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mul_1Mul"lstm_780/lstm_cell_660/Sigmoid:y:0)lstm_780/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/add_1AddV2lstm_780/lstm_cell_660/mul:z:0 lstm_780/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
 lstm_780/lstm_cell_660/Sigmoid_2Sigmoid%lstm_780/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dy
lstm_780/lstm_cell_660/Relu_1Relu lstm_780/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_780/lstm_cell_660/mul_2Mul$lstm_780/lstm_cell_660/Sigmoid_2:y:0+lstm_780/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dw
&lstm_780/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_780/TensorArrayV2_1TensorListReserve/lstm_780/TensorArrayV2_1/element_shape:output:0!lstm_780/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_780/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_780/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_780/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_780/whileWhile$lstm_780/while/loop_counter:output:0*lstm_780/while/maximum_iterations:output:0lstm_780/time:output:0!lstm_780/TensorArrayV2_1:handle:0lstm_780/zeros:output:0lstm_780/zeros_1:output:0!lstm_780/strided_slice_1:output:0@lstm_780/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_780_lstm_cell_660_matmul_readvariableop_resource7lstm_780_lstm_cell_660_matmul_1_readvariableop_resource6lstm_780_lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_780_while_body_4007852*'
condR
lstm_780_while_cond_4007851*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
9lstm_780/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
+lstm_780/TensorArrayV2Stack/TensorListStackTensorListStacklstm_780/while:output:3Blstm_780/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0q
lstm_780/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_780/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_780/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_780/strided_slice_3StridedSlice4lstm_780/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_780/strided_slice_3/stack:output:0)lstm_780/strided_slice_3/stack_1:output:0)lstm_780/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskn
lstm_780/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_780/transpose_1	Transpose4lstm_780/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_780/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dd
lstm_780/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_781/ShapeShapelstm_780/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_781/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_781/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_781/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_sliceStridedSlicelstm_781/Shape:output:0%lstm_781/strided_slice/stack:output:0'lstm_781/strided_slice/stack_1:output:0'lstm_781/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_781/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_781/zeros/packedPacklstm_781/strided_slice:output:0 lstm_781/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_781/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_781/zerosFilllstm_781/zeros/packed:output:0lstm_781/zeros/Const:output:0*
T0*'
_output_shapes
:���������2[
lstm_781/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
lstm_781/zeros_1/packedPacklstm_781/strided_slice:output:0"lstm_781/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_781/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_781/zeros_1Fill lstm_781/zeros_1/packed:output:0lstm_781/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2l
lstm_781/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_781/transpose	Transposelstm_780/transpose_1:y:0 lstm_781/transpose/perm:output:0*
T0*+
_output_shapes
:���������dV
lstm_781/Shape_1Shapelstm_781/transpose:y:0*
T0*
_output_shapes
:h
lstm_781/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_781/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_1StridedSlicelstm_781/Shape_1:output:0'lstm_781/strided_slice_1/stack:output:0)lstm_781/strided_slice_1/stack_1:output:0)lstm_781/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_781/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_781/TensorArrayV2TensorListReserve-lstm_781/TensorArrayV2/element_shape:output:0!lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_781/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_781/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_781/transpose:y:0Glstm_781/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_781/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_781/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_2StridedSlicelstm_781/transpose:y:0'lstm_781/strided_slice_2/stack:output:0)lstm_781/strided_slice_2/stack_1:output:0)lstm_781/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
,lstm_781/lstm_cell_661/MatMul/ReadVariableOpReadVariableOp5lstm_781_lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_781/lstm_cell_661/MatMulMatMul!lstm_781/strided_slice_2:output:04lstm_781/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_781/lstm_cell_661/MatMul_1MatMullstm_781/zeros:output:06lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_781/lstm_cell_661/addAddV2'lstm_781/lstm_cell_661/MatMul:product:0)lstm_781/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp6lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_781/lstm_cell_661/BiasAddBiasAddlstm_781/lstm_cell_661/add:z:05lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������h
&lstm_781/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_781/lstm_cell_661/splitSplit/lstm_781/lstm_cell_661/split/split_dim:output:0'lstm_781/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
lstm_781/lstm_cell_661/SigmoidSigmoid%lstm_781/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
 lstm_781/lstm_cell_661/Sigmoid_1Sigmoid%lstm_781/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mulMul$lstm_781/lstm_cell_661/Sigmoid_1:y:0lstm_781/zeros_1:output:0*
T0*'
_output_shapes
:���������2|
lstm_781/lstm_cell_661/ReluRelu%lstm_781/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mul_1Mul"lstm_781/lstm_cell_661/Sigmoid:y:0)lstm_781/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/add_1AddV2lstm_781/lstm_cell_661/mul:z:0 lstm_781/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
 lstm_781/lstm_cell_661/Sigmoid_2Sigmoid%lstm_781/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2y
lstm_781/lstm_cell_661/Relu_1Relu lstm_781/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_781/lstm_cell_661/mul_2Mul$lstm_781/lstm_cell_661/Sigmoid_2:y:0+lstm_781/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2w
&lstm_781/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
lstm_781/TensorArrayV2_1TensorListReserve/lstm_781/TensorArrayV2_1/element_shape:output:0!lstm_781/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_781/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_781/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_781/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_781/whileWhile$lstm_781/while/loop_counter:output:0*lstm_781/while/maximum_iterations:output:0lstm_781/time:output:0!lstm_781/TensorArrayV2_1:handle:0lstm_781/zeros:output:0lstm_781/zeros_1:output:0!lstm_781/strided_slice_1:output:0@lstm_781/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_781_lstm_cell_661_matmul_readvariableop_resource7lstm_781_lstm_cell_661_matmul_1_readvariableop_resource6lstm_781_lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_781_while_body_4007991*'
condR
lstm_781_while_cond_4007990*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
9lstm_781/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
+lstm_781/TensorArrayV2Stack/TensorListStackTensorListStacklstm_781/while:output:3Blstm_781/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0q
lstm_781/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_781/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_781/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_781/strided_slice_3StridedSlice4lstm_781/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_781/strided_slice_3/stack:output:0)lstm_781/strided_slice_3/stack_1:output:0)lstm_781/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskn
lstm_781/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_781/transpose_1	Transpose4lstm_781/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_781/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2d
lstm_781/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_782/ShapeShapelstm_781/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_782/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_782/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_782/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_sliceStridedSlicelstm_782/Shape:output:0%lstm_782/strided_slice/stack:output:0'lstm_782/strided_slice/stack_1:output:0'lstm_782/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_782/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_782/zeros/packedPacklstm_782/strided_slice:output:0 lstm_782/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_782/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_782/zerosFilllstm_782/zeros/packed:output:0lstm_782/zeros/Const:output:0*
T0*'
_output_shapes
:���������
[
lstm_782/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
�
lstm_782/zeros_1/packedPacklstm_782/strided_slice:output:0"lstm_782/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_782/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_782/zeros_1Fill lstm_782/zeros_1/packed:output:0lstm_782/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
l
lstm_782/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_782/transpose	Transposelstm_781/transpose_1:y:0 lstm_782/transpose/perm:output:0*
T0*+
_output_shapes
:���������2V
lstm_782/Shape_1Shapelstm_782/transpose:y:0*
T0*
_output_shapes
:h
lstm_782/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_782/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_1StridedSlicelstm_782/Shape_1:output:0'lstm_782/strided_slice_1/stack:output:0)lstm_782/strided_slice_1/stack_1:output:0)lstm_782/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_782/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_782/TensorArrayV2TensorListReserve-lstm_782/TensorArrayV2/element_shape:output:0!lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>lstm_782/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0lstm_782/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_782/transpose:y:0Glstm_782/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
lstm_782/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_782/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_2StridedSlicelstm_782/transpose:y:0'lstm_782/strided_slice_2/stack:output:0)lstm_782/strided_slice_2/stack_1:output:0)lstm_782/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,lstm_782/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp5lstm_782_lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_782/lstm_cell_662/MatMulMatMul!lstm_782/strided_slice_2:output:04lstm_782/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_782/lstm_cell_662/MatMul_1MatMullstm_782/zeros:output:06lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_782/lstm_cell_662/addAddV2'lstm_782/lstm_cell_662/MatMul:product:0)lstm_782/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp6lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_782/lstm_cell_662/BiasAddBiasAddlstm_782/lstm_cell_662/add:z:05lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(h
&lstm_782/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_782/lstm_cell_662/splitSplit/lstm_782/lstm_cell_662/split/split_dim:output:0'lstm_782/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split�
lstm_782/lstm_cell_662/SigmoidSigmoid%lstm_782/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
�
 lstm_782/lstm_cell_662/Sigmoid_1Sigmoid%lstm_782/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mulMul$lstm_782/lstm_cell_662/Sigmoid_1:y:0lstm_782/zeros_1:output:0*
T0*'
_output_shapes
:���������
|
lstm_782/lstm_cell_662/ReluRelu%lstm_782/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mul_1Mul"lstm_782/lstm_cell_662/Sigmoid:y:0)lstm_782/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/add_1AddV2lstm_782/lstm_cell_662/mul:z:0 lstm_782/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
�
 lstm_782/lstm_cell_662/Sigmoid_2Sigmoid%lstm_782/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
y
lstm_782/lstm_cell_662/Relu_1Relu lstm_782/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_782/lstm_cell_662/mul_2Mul$lstm_782/lstm_cell_662/Sigmoid_2:y:0+lstm_782/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
w
&lstm_782/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
lstm_782/TensorArrayV2_1TensorListReserve/lstm_782/TensorArrayV2_1/element_shape:output:0!lstm_782/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
lstm_782/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_782/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
lstm_782/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_782/whileWhile$lstm_782/while/loop_counter:output:0*lstm_782/while/maximum_iterations:output:0lstm_782/time:output:0!lstm_782/TensorArrayV2_1:handle:0lstm_782/zeros:output:0lstm_782/zeros_1:output:0!lstm_782/strided_slice_1:output:0@lstm_782/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_782_lstm_cell_662_matmul_readvariableop_resource7lstm_782_lstm_cell_662_matmul_1_readvariableop_resource6lstm_782_lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_782_while_body_4008130*'
condR
lstm_782_while_cond_4008129*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
9lstm_782/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
+lstm_782/TensorArrayV2Stack/TensorListStackTensorListStacklstm_782/while:output:3Blstm_782/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0q
lstm_782/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 lstm_782/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_782/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_782/strided_slice_3StridedSlice4lstm_782/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_782/strided_slice_3/stack:output:0)lstm_782/strided_slice_3/stack_1:output:0)lstm_782/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maskn
lstm_782/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_782/transpose_1	Transpose4lstm_782/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_782/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
d
lstm_782/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
dense_260/MatMul/ReadVariableOpReadVariableOp(dense_260_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_260/MatMulMatMul!lstm_782/strided_slice_3:output:0'dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_260/BiasAdd/ReadVariableOpReadVariableOp)dense_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_260/BiasAddBiasAdddense_260/MatMul:product:0(dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_260/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_260/BiasAdd/ReadVariableOp ^dense_260/MatMul/ReadVariableOp.^lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp-^lstm_780/lstm_cell_660/MatMul/ReadVariableOp/^lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp^lstm_780/while.^lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp-^lstm_781/lstm_cell_661/MatMul/ReadVariableOp/^lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp^lstm_781/while.^lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp-^lstm_782/lstm_cell_662/MatMul/ReadVariableOp/^lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp^lstm_782/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_260/BiasAdd/ReadVariableOp dense_260/BiasAdd/ReadVariableOp2B
dense_260/MatMul/ReadVariableOpdense_260/MatMul/ReadVariableOp2^
-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp-lstm_780/lstm_cell_660/BiasAdd/ReadVariableOp2\
,lstm_780/lstm_cell_660/MatMul/ReadVariableOp,lstm_780/lstm_cell_660/MatMul/ReadVariableOp2`
.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp.lstm_780/lstm_cell_660/MatMul_1/ReadVariableOp2 
lstm_780/whilelstm_780/while2^
-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp-lstm_781/lstm_cell_661/BiasAdd/ReadVariableOp2\
,lstm_781/lstm_cell_661/MatMul/ReadVariableOp,lstm_781/lstm_cell_661/MatMul/ReadVariableOp2`
.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp.lstm_781/lstm_cell_661/MatMul_1/ReadVariableOp2 
lstm_781/whilelstm_781/while2^
-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp-lstm_782/lstm_cell_662/BiasAdd/ReadVariableOp2\
,lstm_782/lstm_cell_662/MatMul/ReadVariableOp,lstm_782/lstm_cell_662/MatMul/ReadVariableOp2`
.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp.lstm_782/lstm_cell_662/MatMul_1/ReadVariableOp2 
lstm_782/whilelstm_782/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
0__inference_sequential_260_layer_call_fn_4007644
lstm_780_input
unknown:	�
	unknown_0:	d�
	unknown_1:	�
	unknown_2:	d�
	unknown_3:	2�
	unknown_4:	�
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_780_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_780_input
�
�
while_cond_4010267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4010267___redundant_placeholder05
1while_while_cond_4010267___redundant_placeholder15
1while_while_cond_4010267___redundant_placeholder25
1while_while_cond_4010267___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_4007440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_660_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�D
5while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_660_matmul_readvariableop_resource:	�G
4while_lstm_cell_660_matmul_1_readvariableop_resource:	d�B
3while_lstm_cell_660_biasadd_readvariableop_resource:	���*while/lstm_cell_660/BiasAdd/ReadVariableOp�)while/lstm_cell_660/MatMul/ReadVariableOp�+while/lstm_cell_660/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
)while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_660/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_660/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_660/addAddV2$while/lstm_cell_660/MatMul:product:0&while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_660/BiasAddBiasAddwhile/lstm_cell_660/add:z:02while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
#while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_660/splitSplit,while/lstm_cell_660/split/split_dim:output:0$while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split|
while/lstm_cell_660/SigmoidSigmoid"while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_1Sigmoid"while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mulMul!while/lstm_cell_660/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������dv
while/lstm_cell_660/ReluRelu"while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_1Mulwhile/lstm_cell_660/Sigmoid:y:0&while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/add_1AddV2while/lstm_cell_660/mul:z:0while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d~
while/lstm_cell_660/Sigmoid_2Sigmoid"while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������ds
while/lstm_cell_660/Relu_1Reluwhile/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_660/mul_2Mul!while/lstm_cell_660/Sigmoid_2:y:0(while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_660/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������dz
while/Identity_5Identitywhile/lstm_cell_660/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp+^while/lstm_cell_660/BiasAdd/ReadVariableOp*^while/lstm_cell_660/MatMul/ReadVariableOp,^while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_660_biasadd_readvariableop_resource5while_lstm_cell_660_biasadd_readvariableop_resource_0"n
4while_lstm_cell_660_matmul_1_readvariableop_resource6while_lstm_cell_660_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_660_matmul_readvariableop_resource4while_lstm_cell_660_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2X
*while/lstm_cell_660/BiasAdd/ReadVariableOp*while/lstm_cell_660/BiasAdd/ReadVariableOp2V
)while/lstm_cell_660/MatMul/ReadVariableOp)while/lstm_cell_660/MatMul/ReadVariableOp2Z
+while/lstm_cell_660/MatMul_1/ReadVariableOp+while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�J
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009263

inputs?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009179*
condR
while_cond_4009178*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4005979

inputs(
lstm_cell_661_4005897:	d�(
lstm_cell_661_4005899:	2�$
lstm_cell_661_4005901:	�
identity��%lstm_cell_661/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
%lstm_cell_661/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_661_4005897lstm_cell_661_4005899lstm_cell_661_4005901*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4005896n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_661_4005897lstm_cell_661_4005899lstm_cell_661_4005901*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4005910*
condR
while_cond_4005909*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2v
NoOpNoOp&^lstm_cell_661/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2N
%lstm_cell_661/StatefulPartitionedCall%lstm_cell_661/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009120

inputs?
,lstm_cell_660_matmul_readvariableop_resource:	�A
.lstm_cell_660_matmul_1_readvariableop_resource:	d�<
-lstm_cell_660_biasadd_readvariableop_resource:	�
identity��$lstm_cell_660/BiasAdd/ReadVariableOp�#lstm_cell_660/MatMul/ReadVariableOp�%lstm_cell_660/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
#lstm_cell_660/MatMul/ReadVariableOpReadVariableOp,lstm_cell_660_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_660/MatMulMatMulstrided_slice_2:output:0+lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_660_matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_660/MatMul_1MatMulzeros:output:0-lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_660/addAddV2lstm_cell_660/MatMul:product:0 lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_660_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_660/BiasAddBiasAddlstm_cell_660/add:z:0,lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_660/splitSplit&lstm_cell_660/split/split_dim:output:0lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitp
lstm_cell_660/SigmoidSigmoidlstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_1Sigmoidlstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������dy
lstm_cell_660/mulMullstm_cell_660/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������dj
lstm_cell_660/ReluRelulstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_1Mullstm_cell_660/Sigmoid:y:0 lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d~
lstm_cell_660/add_1AddV2lstm_cell_660/mul:z:0lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������dr
lstm_cell_660/Sigmoid_2Sigmoidlstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������dg
lstm_cell_660/Relu_1Relulstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_660/mul_2Mullstm_cell_660/Sigmoid_2:y:0"lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_660_matmul_readvariableop_resource.lstm_cell_660_matmul_1_readvariableop_resource-lstm_cell_660_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009036*
condR
while_cond_4009035*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp%^lstm_cell_660/BiasAdd/ReadVariableOp$^lstm_cell_660/MatMul/ReadVariableOp&^lstm_cell_660/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_660/BiasAdd/ReadVariableOp$lstm_cell_660/BiasAdd/ReadVariableOp2J
#lstm_cell_660/MatMul/ReadVariableOp#lstm_cell_660/MatMul/ReadVariableOp2N
%lstm_cell_660/MatMul_1/ReadVariableOp%lstm_cell_660/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4006042

inputs

states
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
*__inference_lstm_781_layer_call_fn_4009296

inputs
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006828s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�K
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009593
inputs_0?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4009509*
condR
while_cond_4009508*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�8
�
while_body_4007110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4007274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4007274___redundant_placeholder05
1while_while_cond_4007274___redundant_placeholder15
1while_while_cond_4007274___redundant_placeholder25
1while_while_cond_4007274___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006392

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�
�
*__inference_lstm_781_layer_call_fn_4009285
inputs_0
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006170|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�J
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010352

inputs>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4010268*
condR
while_cond_4010267*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_4006593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006593___redundant_placeholder05
1while_while_cond_4006593___redundant_placeholder15
1while_while_cond_4006593___redundant_placeholder25
1while_while_cond_4006593___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_4007109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4007109___redundant_placeholder05
1while_while_cond_4007109___redundant_placeholder15
1while_while_cond_4007109___redundant_placeholder25
1while_while_cond_4007109___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_lstm_782_layer_call_fn_4009890
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006329o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�W
�
 __inference__traced_save_4010951
file_prefix/
+savev2_dense_260_kernel_read_readvariableop-
)savev2_dense_260_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_780_lstm_cell_780_kernel_read_readvariableopF
Bsavev2_lstm_780_lstm_cell_780_recurrent_kernel_read_readvariableop:
6savev2_lstm_780_lstm_cell_780_bias_read_readvariableop<
8savev2_lstm_781_lstm_cell_781_kernel_read_readvariableopF
Bsavev2_lstm_781_lstm_cell_781_recurrent_kernel_read_readvariableop:
6savev2_lstm_781_lstm_cell_781_bias_read_readvariableop<
8savev2_lstm_782_lstm_cell_782_kernel_read_readvariableopF
Bsavev2_lstm_782_lstm_cell_782_recurrent_kernel_read_readvariableop:
6savev2_lstm_782_lstm_cell_782_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_260_kernel_m_read_readvariableop4
0savev2_adam_dense_260_bias_m_read_readvariableopC
?savev2_adam_lstm_780_lstm_cell_780_kernel_m_read_readvariableopM
Isavev2_adam_lstm_780_lstm_cell_780_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_780_lstm_cell_780_bias_m_read_readvariableopC
?savev2_adam_lstm_781_lstm_cell_781_kernel_m_read_readvariableopM
Isavev2_adam_lstm_781_lstm_cell_781_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_781_lstm_cell_781_bias_m_read_readvariableopC
?savev2_adam_lstm_782_lstm_cell_782_kernel_m_read_readvariableopM
Isavev2_adam_lstm_782_lstm_cell_782_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_782_lstm_cell_782_bias_m_read_readvariableop6
2savev2_adam_dense_260_kernel_v_read_readvariableop4
0savev2_adam_dense_260_bias_v_read_readvariableopC
?savev2_adam_lstm_780_lstm_cell_780_kernel_v_read_readvariableopM
Isavev2_adam_lstm_780_lstm_cell_780_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_780_lstm_cell_780_bias_v_read_readvariableopC
?savev2_adam_lstm_781_lstm_cell_781_kernel_v_read_readvariableopM
Isavev2_adam_lstm_781_lstm_cell_781_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_781_lstm_cell_781_bias_v_read_readvariableopC
?savev2_adam_lstm_782_lstm_cell_782_kernel_v_read_readvariableopM
Isavev2_adam_lstm_782_lstm_cell_782_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_782_lstm_cell_782_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*�
value�B�)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_260_kernel_read_readvariableop)savev2_dense_260_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_780_lstm_cell_780_kernel_read_readvariableopBsavev2_lstm_780_lstm_cell_780_recurrent_kernel_read_readvariableop6savev2_lstm_780_lstm_cell_780_bias_read_readvariableop8savev2_lstm_781_lstm_cell_781_kernel_read_readvariableopBsavev2_lstm_781_lstm_cell_781_recurrent_kernel_read_readvariableop6savev2_lstm_781_lstm_cell_781_bias_read_readvariableop8savev2_lstm_782_lstm_cell_782_kernel_read_readvariableopBsavev2_lstm_782_lstm_cell_782_recurrent_kernel_read_readvariableop6savev2_lstm_782_lstm_cell_782_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_260_kernel_m_read_readvariableop0savev2_adam_dense_260_bias_m_read_readvariableop?savev2_adam_lstm_780_lstm_cell_780_kernel_m_read_readvariableopIsavev2_adam_lstm_780_lstm_cell_780_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_780_lstm_cell_780_bias_m_read_readvariableop?savev2_adam_lstm_781_lstm_cell_781_kernel_m_read_readvariableopIsavev2_adam_lstm_781_lstm_cell_781_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_781_lstm_cell_781_bias_m_read_readvariableop?savev2_adam_lstm_782_lstm_cell_782_kernel_m_read_readvariableopIsavev2_adam_lstm_782_lstm_cell_782_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_782_lstm_cell_782_bias_m_read_readvariableop2savev2_adam_dense_260_kernel_v_read_readvariableop0savev2_adam_dense_260_bias_v_read_readvariableop?savev2_adam_lstm_780_lstm_cell_780_kernel_v_read_readvariableopIsavev2_adam_lstm_780_lstm_cell_780_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_780_lstm_cell_780_bias_v_read_readvariableop?savev2_adam_lstm_781_lstm_cell_781_kernel_v_read_readvariableopIsavev2_adam_lstm_781_lstm_cell_781_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_781_lstm_cell_781_bias_v_read_readvariableop?savev2_adam_lstm_782_lstm_cell_782_kernel_v_read_readvariableopIsavev2_adam_lstm_782_lstm_cell_782_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_782_lstm_cell_782_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
:: : : : : :	�:	d�:�:	d�:	2�:�:2(:
(:(: : :
::	�:	d�:�:	d�:	2�:�:2(:
(:(:
::	�:	d�:�:	d�:	2�:�:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :
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
: :%!

_output_shapes
:	�:%	!

_output_shapes
:	d�:!


_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	2�:!

_output_shapes	
:�:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	�:%!!

_output_shapes
:	d�:!"

_output_shapes	
:�:%#!

_output_shapes
:	d�:%$!

_output_shapes
:	2�:!%

_output_shapes	
:�:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
�8
�
while_body_4010125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_662_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_662_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_662_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_662_matmul_readvariableop_resource:2(F
4while_lstm_cell_662_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_662_biasadd_readvariableop_resource:(��*while/lstm_cell_662/BiasAdd/ReadVariableOp�)while/lstm_cell_662/MatMul/ReadVariableOp�+while/lstm_cell_662/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
)while/lstm_cell_662/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_662_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0�
while/lstm_cell_662/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
+while/lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_662_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0�
while/lstm_cell_662/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/lstm_cell_662/addAddV2$while/lstm_cell_662/MatMul:product:0&while/lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
*while/lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_662_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/lstm_cell_662/BiasAddBiasAddwhile/lstm_cell_662/add:z:02while/lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(e
#while/lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_662/splitSplit,while/lstm_cell_662/split/split_dim:output:0$while/lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_split|
while/lstm_cell_662/SigmoidSigmoid"while/lstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_1Sigmoid"while/lstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mulMul!while/lstm_cell_662/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������
v
while/lstm_cell_662/ReluRelu"while/lstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_1Mulwhile/lstm_cell_662/Sigmoid:y:0&while/lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/add_1AddV2while/lstm_cell_662/mul:z:0while/lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
~
while/lstm_cell_662/Sigmoid_2Sigmoid"while/lstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
s
while/lstm_cell_662/Relu_1Reluwhile/lstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
while/lstm_cell_662/mul_2Mul!while/lstm_cell_662/Sigmoid_2:y:0(while/lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_662/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_662/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������
z
while/Identity_5Identitywhile/lstm_cell_662/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������
�

while/NoOpNoOp+^while/lstm_cell_662/BiasAdd/ReadVariableOp*^while/lstm_cell_662/MatMul/ReadVariableOp,^while/lstm_cell_662/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_662_biasadd_readvariableop_resource5while_lstm_cell_662_biasadd_readvariableop_resource_0"n
4while_lstm_cell_662_matmul_1_readvariableop_resource6while_lstm_cell_662_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_662_matmul_readvariableop_resource4while_lstm_cell_662_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������
:���������
: : : : : 2X
*while/lstm_cell_662/BiasAdd/ReadVariableOp*while/lstm_cell_662/BiasAdd/ReadVariableOp2V
)while/lstm_cell_662/MatMul/ReadVariableOp)while/lstm_cell_662/MatMul/ReadVariableOp2Z
+while/lstm_cell_662/MatMul_1/ReadVariableOp+while/lstm_cell_662/MatMul_1/ReadVariableOp: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_780_while_cond_4008278.
*lstm_780_while_lstm_780_while_loop_counter4
0lstm_780_while_lstm_780_while_maximum_iterations
lstm_780_while_placeholder 
lstm_780_while_placeholder_1 
lstm_780_while_placeholder_2 
lstm_780_while_placeholder_30
,lstm_780_while_less_lstm_780_strided_slice_1G
Clstm_780_while_lstm_780_while_cond_4008278___redundant_placeholder0G
Clstm_780_while_lstm_780_while_cond_4008278___redundant_placeholder1G
Clstm_780_while_lstm_780_while_cond_4008278___redundant_placeholder2G
Clstm_780_while_lstm_780_while_cond_4008278___redundant_placeholder3
lstm_780_while_identity
�
lstm_780/while/LessLesslstm_780_while_placeholder,lstm_780_while_less_lstm_780_strided_slice_1*
T0*
_output_shapes
: ]
lstm_780/while/IdentityIdentitylstm_780/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_780_while_identity lstm_780/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�J
�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4006828

inputs?
,lstm_cell_661_matmul_readvariableop_resource:	d�A
.lstm_cell_661_matmul_1_readvariableop_resource:	2�<
-lstm_cell_661_biasadd_readvariableop_resource:	�
identity��$lstm_cell_661/BiasAdd/ReadVariableOp�#lstm_cell_661/MatMul/ReadVariableOp�%lstm_cell_661/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_661/MatMul/ReadVariableOpReadVariableOp,lstm_cell_661_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_661/MatMulMatMulstrided_slice_2:output:0+lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_661_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0�
lstm_cell_661/MatMul_1MatMulzeros:output:0-lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_661/addAddV2lstm_cell_661/MatMul:product:0 lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
$lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_661_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_661/BiasAddBiasAddlstm_cell_661/add:z:0,lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_661/splitSplit&lstm_cell_661/split/split_dim:output:0lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitp
lstm_cell_661/SigmoidSigmoidlstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_1Sigmoidlstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2y
lstm_cell_661/mulMullstm_cell_661/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������2j
lstm_cell_661/ReluRelulstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_1Mullstm_cell_661/Sigmoid:y:0 lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2~
lstm_cell_661/add_1AddV2lstm_cell_661/mul:z:0lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2r
lstm_cell_661/Sigmoid_2Sigmoidlstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2g
lstm_cell_661/Relu_1Relulstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
lstm_cell_661/mul_2Mullstm_cell_661/Sigmoid_2:y:0"lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_661_matmul_readvariableop_resource.lstm_cell_661_matmul_1_readvariableop_resource-lstm_cell_661_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������2:���������2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006744*
condR
while_cond_4006743*K
output_shapes:
8: : : : :���������2:���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp%^lstm_cell_661/BiasAdd/ReadVariableOp$^lstm_cell_661/MatMul/ReadVariableOp&^lstm_cell_661/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2L
$lstm_cell_661/BiasAdd/ReadVariableOp$lstm_cell_661/BiasAdd/ReadVariableOp2J
#lstm_cell_661/MatMul/ReadVariableOp#lstm_cell_661/MatMul/ReadVariableOp2N
%lstm_cell_661/MatMul_1/ReadVariableOp%lstm_cell_661/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�C
�

lstm_780_while_body_4008279.
*lstm_780_while_lstm_780_while_loop_counter4
0lstm_780_while_lstm_780_while_maximum_iterations
lstm_780_while_placeholder 
lstm_780_while_placeholder_1 
lstm_780_while_placeholder_2 
lstm_780_while_placeholder_3-
)lstm_780_while_lstm_780_strided_slice_1_0i
elstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0:	�R
?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0:	d�M
>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0:	�
lstm_780_while_identity
lstm_780_while_identity_1
lstm_780_while_identity_2
lstm_780_while_identity_3
lstm_780_while_identity_4
lstm_780_while_identity_5+
'lstm_780_while_lstm_780_strided_slice_1g
clstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensorN
;lstm_780_while_lstm_cell_660_matmul_readvariableop_resource:	�P
=lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource:	d�K
<lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource:	���3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp�2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp�4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp�
@lstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2lstm_780/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0lstm_780_while_placeholderIlstm_780/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOpReadVariableOp=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
#lstm_780/while/lstm_cell_660/MatMulMatMul9lstm_780/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOpReadVariableOp?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
%lstm_780/while/lstm_cell_660/MatMul_1MatMullstm_780_while_placeholder_2<lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 lstm_780/while/lstm_cell_660/addAddV2-lstm_780/while/lstm_cell_660/MatMul:product:0/lstm_780/while/lstm_cell_660/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOpReadVariableOp>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
$lstm_780/while/lstm_cell_660/BiasAddBiasAdd$lstm_780/while/lstm_cell_660/add:z:0;lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,lstm_780/while/lstm_cell_660/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"lstm_780/while/lstm_cell_660/splitSplit5lstm_780/while/lstm_cell_660/split/split_dim:output:0-lstm_780/while/lstm_cell_660/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_split�
$lstm_780/while/lstm_cell_660/SigmoidSigmoid+lstm_780/while/lstm_cell_660/split:output:0*
T0*'
_output_shapes
:���������d�
&lstm_780/while/lstm_cell_660/Sigmoid_1Sigmoid+lstm_780/while/lstm_cell_660/split:output:1*
T0*'
_output_shapes
:���������d�
 lstm_780/while/lstm_cell_660/mulMul*lstm_780/while/lstm_cell_660/Sigmoid_1:y:0lstm_780_while_placeholder_3*
T0*'
_output_shapes
:���������d�
!lstm_780/while/lstm_cell_660/ReluRelu+lstm_780/while/lstm_cell_660/split:output:2*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/mul_1Mul(lstm_780/while/lstm_cell_660/Sigmoid:y:0/lstm_780/while/lstm_cell_660/Relu:activations:0*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/add_1AddV2$lstm_780/while/lstm_cell_660/mul:z:0&lstm_780/while/lstm_cell_660/mul_1:z:0*
T0*'
_output_shapes
:���������d�
&lstm_780/while/lstm_cell_660/Sigmoid_2Sigmoid+lstm_780/while/lstm_cell_660/split:output:3*
T0*'
_output_shapes
:���������d�
#lstm_780/while/lstm_cell_660/Relu_1Relu&lstm_780/while/lstm_cell_660/add_1:z:0*
T0*'
_output_shapes
:���������d�
"lstm_780/while/lstm_cell_660/mul_2Mul*lstm_780/while/lstm_cell_660/Sigmoid_2:y:01lstm_780/while/lstm_cell_660/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
3lstm_780/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_780_while_placeholder_1lstm_780_while_placeholder&lstm_780/while/lstm_cell_660/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
lstm_780/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_780/while/addAddV2lstm_780_while_placeholderlstm_780/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_780/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_780/while/add_1AddV2*lstm_780_while_lstm_780_while_loop_counterlstm_780/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_780/while/IdentityIdentitylstm_780/while/add_1:z:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_1Identity0lstm_780_while_lstm_780_while_maximum_iterations^lstm_780/while/NoOp*
T0*
_output_shapes
: t
lstm_780/while/Identity_2Identitylstm_780/while/add:z:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_3IdentityClstm_780/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_780/while/NoOp*
T0*
_output_shapes
: �
lstm_780/while/Identity_4Identity&lstm_780/while/lstm_cell_660/mul_2:z:0^lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_780/while/Identity_5Identity&lstm_780/while/lstm_cell_660/add_1:z:0^lstm_780/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_780/while/NoOpNoOp4^lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp3^lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp5^lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_780_while_identity lstm_780/while/Identity:output:0"?
lstm_780_while_identity_1"lstm_780/while/Identity_1:output:0"?
lstm_780_while_identity_2"lstm_780/while/Identity_2:output:0"?
lstm_780_while_identity_3"lstm_780/while/Identity_3:output:0"?
lstm_780_while_identity_4"lstm_780/while/Identity_4:output:0"?
lstm_780_while_identity_5"lstm_780/while/Identity_5:output:0"T
'lstm_780_while_lstm_780_strided_slice_1)lstm_780_while_lstm_780_strided_slice_1_0"~
<lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource>lstm_780_while_lstm_cell_660_biasadd_readvariableop_resource_0"�
=lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource?lstm_780_while_lstm_cell_660_matmul_1_readvariableop_resource_0"|
;lstm_780_while_lstm_cell_660_matmul_readvariableop_resource=lstm_780_while_lstm_cell_660_matmul_readvariableop_resource_0"�
clstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensorelstm_780_while_tensorarrayv2read_tensorlistgetitem_lstm_780_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2j
3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp3lstm_780/while/lstm_cell_660/BiasAdd/ReadVariableOp2h
2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp2lstm_780/while/lstm_cell_660/MatMul/ReadVariableOp2l
4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp4lstm_780/while/lstm_cell_660/MatMul_1/ReadVariableOp: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_661_layer_call_fn_4010646

inputs
states_0
states_1
unknown:	d�
	unknown_0:	2�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������2:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4006042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�T
�
*sequential_260_lstm_781_while_body_4005250L
Hsequential_260_lstm_781_while_sequential_260_lstm_781_while_loop_counterR
Nsequential_260_lstm_781_while_sequential_260_lstm_781_while_maximum_iterations-
)sequential_260_lstm_781_while_placeholder/
+sequential_260_lstm_781_while_placeholder_1/
+sequential_260_lstm_781_while_placeholder_2/
+sequential_260_lstm_781_while_placeholder_3K
Gsequential_260_lstm_781_while_sequential_260_lstm_781_strided_slice_1_0�
�sequential_260_lstm_781_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_781_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_260_lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0:	d�a
Nsequential_260_lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0:	2�\
Msequential_260_lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0:	�*
&sequential_260_lstm_781_while_identity,
(sequential_260_lstm_781_while_identity_1,
(sequential_260_lstm_781_while_identity_2,
(sequential_260_lstm_781_while_identity_3,
(sequential_260_lstm_781_while_identity_4,
(sequential_260_lstm_781_while_identity_5I
Esequential_260_lstm_781_while_sequential_260_lstm_781_strided_slice_1�
�sequential_260_lstm_781_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_781_tensorarrayunstack_tensorlistfromtensor]
Jsequential_260_lstm_781_while_lstm_cell_661_matmul_readvariableop_resource:	d�_
Lsequential_260_lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource:	2�Z
Ksequential_260_lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource:	���Bsequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp�Asequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp�Csequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp�
Osequential_260/lstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
Asequential_260/lstm_781/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_260_lstm_781_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_781_tensorarrayunstack_tensorlistfromtensor_0)sequential_260_lstm_781_while_placeholderXsequential_260/lstm_781/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
Asequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOpReadVariableOpLsequential_260_lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
2sequential_260/lstm_781/while/lstm_cell_661/MatMulMatMulHsequential_260/lstm_781/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Csequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOpReadVariableOpNsequential_260_lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype0�
4sequential_260/lstm_781/while/lstm_cell_661/MatMul_1MatMul+sequential_260_lstm_781_while_placeholder_2Ksequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_260/lstm_781/while/lstm_cell_661/addAddV2<sequential_260/lstm_781/while/lstm_cell_661/MatMul:product:0>sequential_260/lstm_781/while/lstm_cell_661/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Bsequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOpReadVariableOpMsequential_260_lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential_260/lstm_781/while/lstm_cell_661/BiasAddBiasAdd3sequential_260/lstm_781/while/lstm_cell_661/add:z:0Jsequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
;sequential_260/lstm_781/while/lstm_cell_661/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential_260/lstm_781/while/lstm_cell_661/splitSplitDsequential_260/lstm_781/while/lstm_cell_661/split/split_dim:output:0<sequential_260/lstm_781/while/lstm_cell_661/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_split�
3sequential_260/lstm_781/while/lstm_cell_661/SigmoidSigmoid:sequential_260/lstm_781/while/lstm_cell_661/split:output:0*
T0*'
_output_shapes
:���������2�
5sequential_260/lstm_781/while/lstm_cell_661/Sigmoid_1Sigmoid:sequential_260/lstm_781/while/lstm_cell_661/split:output:1*
T0*'
_output_shapes
:���������2�
/sequential_260/lstm_781/while/lstm_cell_661/mulMul9sequential_260/lstm_781/while/lstm_cell_661/Sigmoid_1:y:0+sequential_260_lstm_781_while_placeholder_3*
T0*'
_output_shapes
:���������2�
0sequential_260/lstm_781/while/lstm_cell_661/ReluRelu:sequential_260/lstm_781/while/lstm_cell_661/split:output:2*
T0*'
_output_shapes
:���������2�
1sequential_260/lstm_781/while/lstm_cell_661/mul_1Mul7sequential_260/lstm_781/while/lstm_cell_661/Sigmoid:y:0>sequential_260/lstm_781/while/lstm_cell_661/Relu:activations:0*
T0*'
_output_shapes
:���������2�
1sequential_260/lstm_781/while/lstm_cell_661/add_1AddV23sequential_260/lstm_781/while/lstm_cell_661/mul:z:05sequential_260/lstm_781/while/lstm_cell_661/mul_1:z:0*
T0*'
_output_shapes
:���������2�
5sequential_260/lstm_781/while/lstm_cell_661/Sigmoid_2Sigmoid:sequential_260/lstm_781/while/lstm_cell_661/split:output:3*
T0*'
_output_shapes
:���������2�
2sequential_260/lstm_781/while/lstm_cell_661/Relu_1Relu5sequential_260/lstm_781/while/lstm_cell_661/add_1:z:0*
T0*'
_output_shapes
:���������2�
1sequential_260/lstm_781/while/lstm_cell_661/mul_2Mul9sequential_260/lstm_781/while/lstm_cell_661/Sigmoid_2:y:0@sequential_260/lstm_781/while/lstm_cell_661/Relu_1:activations:0*
T0*'
_output_shapes
:���������2�
Bsequential_260/lstm_781/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_260_lstm_781_while_placeholder_1)sequential_260_lstm_781_while_placeholder5sequential_260/lstm_781/while/lstm_cell_661/mul_2:z:0*
_output_shapes
: *
element_dtype0:���e
#sequential_260/lstm_781/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_260/lstm_781/while/addAddV2)sequential_260_lstm_781_while_placeholder,sequential_260/lstm_781/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_260/lstm_781/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_260/lstm_781/while/add_1AddV2Hsequential_260_lstm_781_while_sequential_260_lstm_781_while_loop_counter.sequential_260/lstm_781/while/add_1/y:output:0*
T0*
_output_shapes
: �
&sequential_260/lstm_781/while/IdentityIdentity'sequential_260/lstm_781/while/add_1:z:0#^sequential_260/lstm_781/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_781/while/Identity_1IdentityNsequential_260_lstm_781_while_sequential_260_lstm_781_while_maximum_iterations#^sequential_260/lstm_781/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_781/while/Identity_2Identity%sequential_260/lstm_781/while/add:z:0#^sequential_260/lstm_781/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_781/while/Identity_3IdentityRsequential_260/lstm_781/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_260/lstm_781/while/NoOp*
T0*
_output_shapes
: �
(sequential_260/lstm_781/while/Identity_4Identity5sequential_260/lstm_781/while/lstm_cell_661/mul_2:z:0#^sequential_260/lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_260/lstm_781/while/Identity_5Identity5sequential_260/lstm_781/while/lstm_cell_661/add_1:z:0#^sequential_260/lstm_781/while/NoOp*
T0*'
_output_shapes
:���������2�
"sequential_260/lstm_781/while/NoOpNoOpC^sequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOpB^sequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOpD^sequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_260_lstm_781_while_identity/sequential_260/lstm_781/while/Identity:output:0"]
(sequential_260_lstm_781_while_identity_11sequential_260/lstm_781/while/Identity_1:output:0"]
(sequential_260_lstm_781_while_identity_21sequential_260/lstm_781/while/Identity_2:output:0"]
(sequential_260_lstm_781_while_identity_31sequential_260/lstm_781/while/Identity_3:output:0"]
(sequential_260_lstm_781_while_identity_41sequential_260/lstm_781/while/Identity_4:output:0"]
(sequential_260_lstm_781_while_identity_51sequential_260/lstm_781/while/Identity_5:output:0"�
Ksequential_260_lstm_781_while_lstm_cell_661_biasadd_readvariableop_resourceMsequential_260_lstm_781_while_lstm_cell_661_biasadd_readvariableop_resource_0"�
Lsequential_260_lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resourceNsequential_260_lstm_781_while_lstm_cell_661_matmul_1_readvariableop_resource_0"�
Jsequential_260_lstm_781_while_lstm_cell_661_matmul_readvariableop_resourceLsequential_260_lstm_781_while_lstm_cell_661_matmul_readvariableop_resource_0"�
Esequential_260_lstm_781_while_sequential_260_lstm_781_strided_slice_1Gsequential_260_lstm_781_while_sequential_260_lstm_781_strided_slice_1_0"�
�sequential_260_lstm_781_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_781_tensorarrayunstack_tensorlistfromtensor�sequential_260_lstm_781_while_tensorarrayv2read_tensorlistgetitem_sequential_260_lstm_781_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������2:���������2: : : : : 2�
Bsequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOpBsequential_260/lstm_781/while/lstm_cell_661/BiasAdd/ReadVariableOp2�
Asequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOpAsequential_260/lstm_781/while/lstm_cell_661/MatMul/ReadVariableOp2�
Csequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOpCsequential_260/lstm_781/while/lstm_cell_661/MatMul_1/ReadVariableOp: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_4009794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009794___redundant_placeholder05
1while_while_cond_4009794___redundant_placeholder15
1while_while_cond_4009794___redundant_placeholder25
1while_while_cond_4009794___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
+__inference_dense_260_layer_call_fn_4010504

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
*sequential_260_lstm_782_while_cond_4005388L
Hsequential_260_lstm_782_while_sequential_260_lstm_782_while_loop_counterR
Nsequential_260_lstm_782_while_sequential_260_lstm_782_while_maximum_iterations-
)sequential_260_lstm_782_while_placeholder/
+sequential_260_lstm_782_while_placeholder_1/
+sequential_260_lstm_782_while_placeholder_2/
+sequential_260_lstm_782_while_placeholder_3N
Jsequential_260_lstm_782_while_less_sequential_260_lstm_782_strided_slice_1e
asequential_260_lstm_782_while_sequential_260_lstm_782_while_cond_4005388___redundant_placeholder0e
asequential_260_lstm_782_while_sequential_260_lstm_782_while_cond_4005388___redundant_placeholder1e
asequential_260_lstm_782_while_sequential_260_lstm_782_while_cond_4005388___redundant_placeholder2e
asequential_260_lstm_782_while_sequential_260_lstm_782_while_cond_4005388___redundant_placeholder3*
&sequential_260_lstm_782_while_identity
�
"sequential_260/lstm_782/while/LessLess)sequential_260_lstm_782_while_placeholderJsequential_260_lstm_782_while_less_sequential_260_lstm_782_strided_slice_1*
T0*
_output_shapes
: {
&sequential_260/lstm_782/while/IdentityIdentity&sequential_260/lstm_782/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_260_lstm_782_while_identity/sequential_260/lstm_782/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007592

inputs#
lstm_780_4007565:	�#
lstm_780_4007567:	d�
lstm_780_4007569:	�#
lstm_781_4007572:	d�#
lstm_781_4007574:	2�
lstm_781_4007576:	�"
lstm_782_4007579:2("
lstm_782_4007581:
(
lstm_782_4007583:(#
dense_260_4007586:

dense_260_4007588:
identity��!dense_260/StatefulPartitionedCall� lstm_780/StatefulPartitionedCall� lstm_781/StatefulPartitionedCall� lstm_782/StatefulPartitionedCall�
 lstm_780/StatefulPartitionedCallStatefulPartitionedCallinputslstm_780_4007565lstm_780_4007567lstm_780_4007569*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4007524�
 lstm_781/StatefulPartitionedCallStatefulPartitionedCall)lstm_780/StatefulPartitionedCall:output:0lstm_781_4007572lstm_781_4007574lstm_781_4007576*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_781_layer_call_and_return_conditional_losses_4007359�
 lstm_782/StatefulPartitionedCallStatefulPartitionedCall)lstm_781/StatefulPartitionedCall:output:0lstm_782_4007579lstm_782_4007581lstm_782_4007583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4007194�
!dense_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_782/StatefulPartitionedCall:output:0dense_260_4007586dense_260_4007588*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_260_layer_call_and_return_conditional_losses_4006996y
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_260/StatefulPartitionedCall!^lstm_780/StatefulPartitionedCall!^lstm_781/StatefulPartitionedCall!^lstm_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall2D
 lstm_780/StatefulPartitionedCall lstm_780/StatefulPartitionedCall2D
 lstm_781/StatefulPartitionedCall lstm_781/StatefulPartitionedCall2D
 lstm_782/StatefulPartitionedCall lstm_782/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_780_layer_call_fn_4008680

inputs
unknown:	�
	unknown_0:	d�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_780_layer_call_and_return_conditional_losses_4006678s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_782_layer_call_fn_4009923

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_782_layer_call_and_return_conditional_losses_4007194o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4006978

inputs>
,lstm_cell_662_matmul_readvariableop_resource:2(@
.lstm_cell_662_matmul_1_readvariableop_resource:
(;
-lstm_cell_662_biasadd_readvariableop_resource:(
identity��$lstm_cell_662/BiasAdd/ReadVariableOp�#lstm_cell_662/MatMul/ReadVariableOp�%lstm_cell_662/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
#lstm_cell_662/MatMul/ReadVariableOpReadVariableOp,lstm_cell_662_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0�
lstm_cell_662/MatMulMatMulstrided_slice_2:output:0+lstm_cell_662/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
%lstm_cell_662/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_662_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0�
lstm_cell_662/MatMul_1MatMulzeros:output:0-lstm_cell_662/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
lstm_cell_662/addAddV2lstm_cell_662/MatMul:product:0 lstm_cell_662/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
$lstm_cell_662/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_662_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
lstm_cell_662/BiasAddBiasAddlstm_cell_662/add:z:0,lstm_cell_662/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(_
lstm_cell_662/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_662/splitSplit&lstm_cell_662/split/split_dim:output:0lstm_cell_662/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitp
lstm_cell_662/SigmoidSigmoidlstm_cell_662/split:output:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_1Sigmoidlstm_cell_662/split:output:1*
T0*'
_output_shapes
:���������
y
lstm_cell_662/mulMullstm_cell_662/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������
j
lstm_cell_662/ReluRelulstm_cell_662/split:output:2*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_1Mullstm_cell_662/Sigmoid:y:0 lstm_cell_662/Relu:activations:0*
T0*'
_output_shapes
:���������
~
lstm_cell_662/add_1AddV2lstm_cell_662/mul:z:0lstm_cell_662/mul_1:z:0*
T0*'
_output_shapes
:���������
r
lstm_cell_662/Sigmoid_2Sigmoidlstm_cell_662/split:output:3*
T0*'
_output_shapes
:���������
g
lstm_cell_662/Relu_1Relulstm_cell_662/add_1:z:0*
T0*'
_output_shapes
:���������
�
lstm_cell_662/mul_2Mullstm_cell_662/Sigmoid_2:y:0"lstm_cell_662/Relu_1:activations:0*
T0*'
_output_shapes
:���������
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_662_matmul_readvariableop_resource.lstm_cell_662_matmul_1_readvariableop_resource-lstm_cell_662_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������
:���������
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4006894*
condR
while_cond_4006893*K
output_shapes:
8: : : : :���������
:���������
: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp%^lstm_cell_662/BiasAdd/ReadVariableOp$^lstm_cell_662/MatMul/ReadVariableOp&^lstm_cell_662/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2L
$lstm_cell_662/BiasAdd/ReadVariableOp$lstm_cell_662/BiasAdd/ReadVariableOp2J
#lstm_cell_662/MatMul/ReadVariableOp#lstm_cell_662/MatMul/ReadVariableOp2N
%lstm_cell_662/MatMul_1/ReadVariableOp%lstm_cell_662/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005692

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������d:���������d:���������d:���������d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�
�
*sequential_260_lstm_780_while_cond_4005110L
Hsequential_260_lstm_780_while_sequential_260_lstm_780_while_loop_counterR
Nsequential_260_lstm_780_while_sequential_260_lstm_780_while_maximum_iterations-
)sequential_260_lstm_780_while_placeholder/
+sequential_260_lstm_780_while_placeholder_1/
+sequential_260_lstm_780_while_placeholder_2/
+sequential_260_lstm_780_while_placeholder_3N
Jsequential_260_lstm_780_while_less_sequential_260_lstm_780_strided_slice_1e
asequential_260_lstm_780_while_sequential_260_lstm_780_while_cond_4005110___redundant_placeholder0e
asequential_260_lstm_780_while_sequential_260_lstm_780_while_cond_4005110___redundant_placeholder1e
asequential_260_lstm_780_while_sequential_260_lstm_780_while_cond_4005110___redundant_placeholder2e
asequential_260_lstm_780_while_sequential_260_lstm_780_while_cond_4005110___redundant_placeholder3*
&sequential_260_lstm_780_while_identity
�
"sequential_260/lstm_780/while/LessLess)sequential_260_lstm_780_while_placeholderJsequential_260_lstm_780_while_less_sequential_260_lstm_780_strided_slice_1*
T0*
_output_shapes
: {
&sequential_260/lstm_780/while/IdentityIdentity&sequential_260/lstm_780/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_260_lstm_780_while_identity/sequential_260/lstm_780/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�

�
lstm_781_while_cond_4007990.
*lstm_781_while_lstm_781_while_loop_counter4
0lstm_781_while_lstm_781_while_maximum_iterations
lstm_781_while_placeholder 
lstm_781_while_placeholder_1 
lstm_781_while_placeholder_2 
lstm_781_while_placeholder_30
,lstm_781_while_less_lstm_781_strided_slice_1G
Clstm_781_while_lstm_781_while_cond_4007990___redundant_placeholder0G
Clstm_781_while_lstm_781_while_cond_4007990___redundant_placeholder1G
Clstm_781_while_lstm_781_while_cond_4007990___redundant_placeholder2G
Clstm_781_while_lstm_781_while_cond_4007990___redundant_placeholder3
lstm_781_while_identity
�
lstm_781/while/LessLesslstm_781_while_placeholder,lstm_781_while_less_lstm_781_strided_slice_1*
T0*
_output_shapes
: ]
lstm_781/while/IdentityIdentitylstm_781/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_781_while_identity lstm_781/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������2:���������2: ::::: 
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
:���������2:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_4005751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_660_4005775_0:	�0
while_lstm_cell_660_4005777_0:	d�,
while_lstm_cell_660_4005779_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_660_4005775:	�.
while_lstm_cell_660_4005777:	d�*
while_lstm_cell_660_4005779:	���+while/lstm_cell_660/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/lstm_cell_660/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_660_4005775_0while_lstm_cell_660_4005777_0while_lstm_cell_660_4005779_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4005692�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_660/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity4while/lstm_cell_660/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity4while/lstm_cell_660/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dz

while/NoOpNoOp,^while/lstm_cell_660/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_660_4005775while_lstm_cell_660_4005775_0"<
while_lstm_cell_660_4005777while_lstm_cell_660_4005777_0"<
while_lstm_cell_660_4005779while_lstm_cell_660_4005779_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2Z
+while/lstm_cell_660/StatefulPartitionedCall+while/lstm_cell_660/StatefulPartitionedCall: 
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
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4006246

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������
:���������
:���������
:���������
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������2:���������
:���������
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������

 
_user_specified_namestates:OK
'
_output_shapes
:���������

 
_user_specified_namestates
�
�
while_cond_4006259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4006259___redundant_placeholder05
1while_while_cond_4006259___redundant_placeholder15
1while_while_cond_4006259___redundant_placeholder25
1while_while_cond_4006259___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_4009981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4009981___redundant_placeholder05
1while_while_cond_4009981___redundant_placeholder15
1while_while_cond_4009981___redundant_placeholder25
1while_while_cond_4009981___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������
:���������
: ::::: 
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
:���������
:-)
'
_output_shapes
:���������
:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010678

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1
�
�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010710

inputs
states_0
states_11
matmul_readvariableop_resource:	d�3
 matmul_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������2:���������2:���������2:���������2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_780_input;
 serving_default_lstm_780_input:0���������=
	dense_2600
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m�4m�5m�!v�"v�-v�.v�/v�0v�1v�2v�3v�4v�5v�"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_260/kernel
:2dense_260/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	�2lstm_780/lstm_cell_780/kernel
::8	d�2'lstm_780/lstm_cell_780/recurrent_kernel
*:(�2lstm_780/lstm_cell_780/bias
0:.	d�2lstm_781/lstm_cell_781/kernel
::8	2�2'lstm_781/lstm_cell_781/recurrent_kernel
*:(�2lstm_781/lstm_cell_781/bias
/:-2(2lstm_782/lstm_cell_782/kernel
9:7
(2'lstm_782/lstm_cell_782/recurrent_kernel
):'(2lstm_782/lstm_cell_782/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
':%
2Adam/dense_260/kernel/m
!:2Adam/dense_260/bias/m
5:3	�2$Adam/lstm_780/lstm_cell_780/kernel/m
?:=	d�2.Adam/lstm_780/lstm_cell_780/recurrent_kernel/m
/:-�2"Adam/lstm_780/lstm_cell_780/bias/m
5:3	d�2$Adam/lstm_781/lstm_cell_781/kernel/m
?:=	2�2.Adam/lstm_781/lstm_cell_781/recurrent_kernel/m
/:-�2"Adam/lstm_781/lstm_cell_781/bias/m
4:22(2$Adam/lstm_782/lstm_cell_782/kernel/m
>:<
(2.Adam/lstm_782/lstm_cell_782/recurrent_kernel/m
.:,(2"Adam/lstm_782/lstm_cell_782/bias/m
':%
2Adam/dense_260/kernel/v
!:2Adam/dense_260/bias/v
5:3	�2$Adam/lstm_780/lstm_cell_780/kernel/v
?:=	d�2.Adam/lstm_780/lstm_cell_780/recurrent_kernel/v
/:-�2"Adam/lstm_780/lstm_cell_780/bias/v
5:3	d�2$Adam/lstm_781/lstm_cell_781/kernel/v
?:=	2�2.Adam/lstm_781/lstm_cell_781/recurrent_kernel/v
/:-�2"Adam/lstm_781/lstm_cell_781/bias/v
4:22(2$Adam/lstm_782/lstm_cell_782/kernel/v
>:<
(2.Adam/lstm_782/lstm_cell_782/recurrent_kernel/v
.:,(2"Adam/lstm_782/lstm_cell_782/bias/v
�2�
0__inference_sequential_260_layer_call_fn_4007028
0__inference_sequential_260_layer_call_fn_4007766
0__inference_sequential_260_layer_call_fn_4007793
0__inference_sequential_260_layer_call_fn_4007644�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008220
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008647
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007674
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007704�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_4005479lstm_780_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_lstm_780_layer_call_fn_4008658
*__inference_lstm_780_layer_call_fn_4008669
*__inference_lstm_780_layer_call_fn_4008680
*__inference_lstm_780_layer_call_fn_4008691�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008834
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008977
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009120
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009263�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_lstm_781_layer_call_fn_4009274
*__inference_lstm_781_layer_call_fn_4009285
*__inference_lstm_781_layer_call_fn_4009296
*__inference_lstm_781_layer_call_fn_4009307�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009450
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009593
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009736
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009879�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_lstm_782_layer_call_fn_4009890
*__inference_lstm_782_layer_call_fn_4009901
*__inference_lstm_782_layer_call_fn_4009912
*__inference_lstm_782_layer_call_fn_4009923�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010066
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010209
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010352
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010495�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_dense_260_layer_call_fn_4010504�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dense_260_layer_call_and_return_conditional_losses_4010514�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_4007739lstm_780_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_lstm_cell_660_layer_call_fn_4010531
/__inference_lstm_cell_660_layer_call_fn_4010548�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010580
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010612�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_661_layer_call_fn_4010629
/__inference_lstm_cell_661_layer_call_fn_4010646�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010678
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010710�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_662_layer_call_fn_4010727
/__inference_lstm_cell_662_layer_call_fn_4010744�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010776
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010808�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_4005479�-./012345!";�8
1�.
,�)
lstm_780_input���������
� "5�2
0
	dense_260#� 
	dense_260����������
F__inference_dense_260_layer_call_and_return_conditional_losses_4010514\!"/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
+__inference_dense_260_layer_call_fn_4010504O!"/�,
%�"
 �
inputs���������

� "�����������
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008834�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������d
� �
E__inference_lstm_780_layer_call_and_return_conditional_losses_4008977�-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������d
� �
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009120q-./?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������d
� �
E__inference_lstm_780_layer_call_and_return_conditional_losses_4009263q-./?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������d
� �
*__inference_lstm_780_layer_call_fn_4008658}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������d�
*__inference_lstm_780_layer_call_fn_4008669}-./O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������d�
*__inference_lstm_780_layer_call_fn_4008680d-./?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
*__inference_lstm_780_layer_call_fn_4008691d-./?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009450�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "2�/
(�%
0������������������2
� �
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009593�012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "2�/
(�%
0������������������2
� �
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009736q012?�<
5�2
$�!
inputs���������d

 
p 

 
� ")�&
�
0���������2
� �
E__inference_lstm_781_layer_call_and_return_conditional_losses_4009879q012?�<
5�2
$�!
inputs���������d

 
p

 
� ")�&
�
0���������2
� �
*__inference_lstm_781_layer_call_fn_4009274}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "%�"������������������2�
*__inference_lstm_781_layer_call_fn_4009285}012O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "%�"������������������2�
*__inference_lstm_781_layer_call_fn_4009296d012?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������2�
*__inference_lstm_781_layer_call_fn_4009307d012?�<
5�2
$�!
inputs���������d

 
p

 
� "����������2�
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010066}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "%�"
�
0���������

� �
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010209}345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "%�"
�
0���������

� �
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010352m345?�<
5�2
$�!
inputs���������2

 
p 

 
� "%�"
�
0���������

� �
E__inference_lstm_782_layer_call_and_return_conditional_losses_4010495m345?�<
5�2
$�!
inputs���������2

 
p

 
� "%�"
�
0���������

� �
*__inference_lstm_782_layer_call_fn_4009890p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "����������
�
*__inference_lstm_782_layer_call_fn_4009901p345O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "����������
�
*__inference_lstm_782_layer_call_fn_4009912`345?�<
5�2
$�!
inputs���������2

 
p 

 
� "����������
�
*__inference_lstm_782_layer_call_fn_4009923`345?�<
5�2
$�!
inputs���������2

 
p

 
� "����������
�
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010580�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
J__inference_lstm_cell_660_layer_call_and_return_conditional_losses_4010612�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
/__inference_lstm_cell_660_layer_call_fn_4010531�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
/__inference_lstm_cell_660_layer_call_fn_4010548�-./��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010678�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
J__inference_lstm_cell_661_layer_call_and_return_conditional_losses_4010710�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "s�p
i�f
�
0/0���������2
E�B
�
0/1/0���������2
�
0/1/1���������2
� �
/__inference_lstm_cell_661_layer_call_fn_4010629�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p 
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
/__inference_lstm_cell_661_layer_call_fn_4010646�012��}
v�s
 �
inputs���������d
K�H
"�
states/0���������2
"�
states/1���������2
p
� "c�`
�
0���������2
A�>
�
1/0���������2
�
1/1���������2�
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010776�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
J__inference_lstm_cell_662_layer_call_and_return_conditional_losses_4010808�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "s�p
i�f
�
0/0���������

E�B
�
0/1/0���������

�
0/1/1���������

� �
/__inference_lstm_cell_662_layer_call_fn_4010727�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p 
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
/__inference_lstm_cell_662_layer_call_fn_4010744�345��}
v�s
 �
inputs���������2
K�H
"�
states/0���������

"�
states/1���������

p
� "c�`
�
0���������

A�>
�
1/0���������

�
1/1���������
�
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007674y-./012345!"C�@
9�6
,�)
lstm_780_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_260_layer_call_and_return_conditional_losses_4007704y-./012345!"C�@
9�6
,�)
lstm_780_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008220q-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_260_layer_call_and_return_conditional_losses_4008647q-./012345!";�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
0__inference_sequential_260_layer_call_fn_4007028l-./012345!"C�@
9�6
,�)
lstm_780_input���������
p 

 
� "�����������
0__inference_sequential_260_layer_call_fn_4007644l-./012345!"C�@
9�6
,�)
lstm_780_input���������
p

 
� "�����������
0__inference_sequential_260_layer_call_fn_4007766d-./012345!";�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_260_layer_call_fn_4007793d-./012345!";�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_4007739�-./012345!"M�J
� 
C�@
>
lstm_780_input,�)
lstm_780_input���������"5�2
0
	dense_260#� 
	dense_260���������