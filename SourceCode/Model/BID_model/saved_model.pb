Ѓ§.
Е
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
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
executor_typestring Ј
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
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28-
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:
*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
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

lstm_15/lstm_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_15/lstm_cell_15/kernel

/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/kernel*
_output_shapes
:	*
dtype0
Ї
%lstm_15/lstm_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_15/lstm_cell_15/recurrent_kernel
 
9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_15/lstm_cell_15/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_15/lstm_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_15/lstm_cell_15/bias

-lstm_15/lstm_cell_15/bias/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/bias*
_output_shapes	
:*
dtype0

lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*,
shared_namelstm_16/lstm_cell_16/kernel

/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel*
_output_shapes
:	dШ*
dtype0
Ї
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel
 
9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш**
shared_namelstm_16/lstm_cell_16/bias

-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes	
:Ш*
dtype0

lstm_17/lstm_cell_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_17/lstm_cell_17/kernel

/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/kernel*
_output_shapes

:2(*
dtype0
І
%lstm_17/lstm_cell_17/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_17/lstm_cell_17/recurrent_kernel

9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_17/lstm_cell_17/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_17/lstm_cell_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_17/lstm_cell_17/bias

-lstm_17/lstm_cell_17/bias/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/bias*
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

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_15/lstm_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_15/lstm_cell_15/kernel/m

6Adam/lstm_15/lstm_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_15/lstm_cell_15/kernel/m*
_output_shapes
:	*
dtype0
Е
,Adam/lstm_15/lstm_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m
Ў
@Adam/lstm_15/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_15/lstm_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_15/lstm_cell_15/bias/m

4Adam/lstm_15/lstm_cell_15/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_15/lstm_cell_15/bias/m*
_output_shapes	
:*
dtype0
Ё
"Adam/lstm_16/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/m

6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/m*
_output_shapes
:	dШ*
dtype0
Е
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
Ў
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m*
_output_shapes
:	2Ш*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/m

4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/m*
_output_shapes	
:Ш*
dtype0
 
"Adam/lstm_17/lstm_cell_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/m

6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/m*
_output_shapes

:2(*
dtype0
Д
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
­
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_17/lstm_cell_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/m

4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
Ё
"Adam/lstm_15/lstm_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_15/lstm_cell_15/kernel/v

6Adam/lstm_15/lstm_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_15/lstm_cell_15/kernel/v*
_output_shapes
:	*
dtype0
Е
,Adam/lstm_15/lstm_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v
Ў
@Adam/lstm_15/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_15/lstm_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_15/lstm_cell_15/bias/v

4Adam/lstm_15/lstm_cell_15/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_15/lstm_cell_15/bias/v*
_output_shapes	
:*
dtype0
Ё
"Adam/lstm_16/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/v

6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/v*
_output_shapes
:	dШ*
dtype0
Е
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
Ў
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v*
_output_shapes
:	2Ш*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/v

4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/v*
_output_shapes	
:Ш*
dtype0
 
"Adam/lstm_17/lstm_cell_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/v

6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/v*
_output_shapes

:2(*
dtype0
Д
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
­
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_17/lstm_cell_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/v

4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ЃA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*о@
valueд@Bб@ BЪ@
В
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

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
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
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
Г
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
Й

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
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
WU
VARIABLE_VALUElstm_15/lstm_cell_15/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_15/lstm_cell_15/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_15/lstm_cell_15/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_16/lstm_cell_16/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_16/lstm_cell_16/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_16/lstm_cell_16/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_17/lstm_cell_17/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_17/lstm_cell_17/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_17/lstm_cell_17/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_15/lstm_cell_15/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_15/lstm_cell_15/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_15/lstm_cell_15/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_15/lstm_cell_15/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_15/lstm_cell_15/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_15/lstm_cell_15/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_15_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_15_inputlstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1067131
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOp9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOp-lstm_15/lstm_cell_15/bias/Read/ReadVariableOp/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp-lstm_16/lstm_cell_16/bias/Read/ReadVariableOp/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOp9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOp-lstm_17/lstm_cell_17/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp6Adam/lstm_15/lstm_cell_15/kernel/m/Read/ReadVariableOp@Adam/lstm_15/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_15/lstm_cell_15/bias/m/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp6Adam/lstm_15/lstm_cell_15/kernel/v/Read/ReadVariableOp@Adam/lstm_15/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_15/lstm_cell_15/bias/v/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1070343
н
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biastotalcountAdam/dense_5/kernel/mAdam/dense_5/bias/m"Adam/lstm_15/lstm_cell_15/kernel/m,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m Adam/lstm_15/lstm_cell_15/bias/m"Adam/lstm_16/lstm_cell_16/kernel/m,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m Adam/lstm_16/lstm_cell_16/bias/m"Adam/lstm_17/lstm_cell_17/kernel/m,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m Adam/lstm_17/lstm_cell_17/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/v"Adam/lstm_15/lstm_cell_15/kernel/v,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v Adam/lstm_15/lstm_cell_15/bias/v"Adam/lstm_16/lstm_cell_16/kernel/v,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v Adam/lstm_16/lstm_cell_16/bias/v"Adam/lstm_17/lstm_cell_17/kernel/v,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v Adam/lstm_17/lstm_cell_17/bias/v*4
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1070473іа+
і
Г
)__inference_lstm_17_layer_call_fn_1069304

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
е

J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070200

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
К
Ш
while_cond_1066666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1066666___redundant_placeholder05
1while_while_cond_1066666___redundant_placeholder15
1while_while_cond_1066666___redundant_placeholder25
1while_while_cond_1066666___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
я
ј
/__inference_lstm_cell_175_layer_call_fn_1070038

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
сJ
Ђ
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066916

inputs?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1066832*
condR
while_cond_1066831*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Э

J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065784

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
я
ј
/__inference_lstm_cell_174_layer_call_fn_1069923

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1064938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
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
K
Є
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068226
inputs_0?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068142*
condR
while_cond_1068141*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
K
Є
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068842
inputs_0?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068758*
condR
while_cond_1068757*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
K
Ё
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069601
inputs_0>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069517*
condR
while_cond_1069516*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0


ш
lstm_16_while_cond_1067382,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_1067382___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_1067382___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_1067382___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_1067382___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
я
ј
/__inference_lstm_cell_174_layer_call_fn_1069940

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1065084o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
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
мJ

D__inference_lstm_17_layer_call_and_return_conditional_losses_1066586

inputs>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1066502*
condR
while_cond_1066501*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
B
к

lstm_16_while_body_1067810,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0:	dШQ
>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШL
=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorM
:lstm_16_while_lstm_cell_175_matmul_readvariableop_resource:	dШO
<lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШJ
;lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpЂ1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpЂ3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ю
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0д
"lstm_16/while/lstm_cell_175/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Л
$lstm_16/while/lstm_cell_175/MatMul_1MatMullstm_16_while_placeholder_2;lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_16/while/lstm_cell_175/addAddV2,lstm_16/while/lstm_cell_175/MatMul:product:0.lstm_16/while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_16/while/lstm_cell_175/BiasAddBiasAdd#lstm_16/while/lstm_cell_175/add:z:0:lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_16/while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_16/while/lstm_cell_175/splitSplit4lstm_16/while/lstm_cell_175/split/split_dim:output:0,lstm_16/while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_16/while/lstm_cell_175/SigmoidSigmoid*lstm_16/while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_16/while/lstm_cell_175/Sigmoid_1Sigmoid*lstm_16/while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_16/while/lstm_cell_175/mulMul)lstm_16/while/lstm_cell_175/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_16/while/lstm_cell_175/ReluRelu*lstm_16/while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_16/while/lstm_cell_175/mul_1Mul'lstm_16/while/lstm_cell_175/Sigmoid:y:0.lstm_16/while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_16/while/lstm_cell_175/add_1AddV2#lstm_16/while/lstm_cell_175/mul:z:0%lstm_16/while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_16/while/lstm_cell_175/Sigmoid_2Sigmoid*lstm_16/while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_16/while/lstm_cell_175/Relu_1Relu%lstm_16/while/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_16/while/lstm_cell_175/mul_2Mul)lstm_16/while/lstm_cell_175/Sigmoid_2:y:00lstm_16/while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2ц
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder%lstm_16/while/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity%lstm_16/while/lstm_cell_175/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/while/Identity_5Identity%lstm_16/while/lstm_cell_175/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2ѓ
lstm_16/while/NoOpNoOp3^lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2^lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp4^lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"|
;lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0"~
<lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0"z
:lstm_16_while_lstm_cell_175_matmul_readvariableop_resource<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2f
1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp2j
3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 


ш
lstm_15_while_cond_1067243,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1E
Alstm_15_while_lstm_15_while_cond_1067243___redundant_placeholder0E
Alstm_15_while_lstm_15_while_cond_1067243___redundant_placeholder1E
Alstm_15_while_lstm_15_while_cond_1067243___redundant_placeholder2E
Alstm_15_while_lstm_15_while_cond_1067243___redundant_placeholder3
lstm_15_while_identity

lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: [
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
сJ
Ђ
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069271

inputs?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069187*
condR
while_cond_1069186*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
К
Ш
while_cond_1066285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1066285___redundant_placeholder05
1while_while_cond_1066285___redundant_placeholder15
1while_while_cond_1066285___redundant_placeholder25
1while_while_cond_1066285___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:


ш
lstm_17_while_cond_1067521,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1E
Alstm_17_while_lstm_17_while_cond_1067521___redundant_placeholder0E
Alstm_17_while_lstm_17_while_cond_1067521___redundant_placeholder1E
Alstm_17_while_lstm_17_while_cond_1067521___redundant_placeholder2E
Alstm_17_while_lstm_17_while_cond_1067521___redundant_placeholder3
lstm_17_while_identity

lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: [
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_1069516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069516___redundant_placeholder05
1while_while_cond_1069516___redundant_placeholder15
1while_while_cond_1069516___redundant_placeholder25
1while_while_cond_1069516___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_1069043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069043___redundant_placeholder05
1while_while_cond_1069043___redundant_placeholder15
1while_while_cond_1069043___redundant_placeholder25
1while_while_cond_1069043___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
п

J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070102

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
К
Ш
while_cond_1065985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065985___redundant_placeholder05
1while_while_cond_1065985___redundant_placeholder15
1while_while_cond_1065985___redundant_placeholder25
1while_while_cond_1065985___redundant_placeholder3
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
B
к

lstm_15_while_body_1067671,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0:	Q
>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dL
=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0:	
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorM
:lstm_15_while_lstm_cell_174_matmul_readvariableop_resource:	O
<lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource:	dJ
;lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpЂ1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpЂ3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0д
"lstm_15/while/lstm_cell_174/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Л
$lstm_15/while/lstm_cell_174/MatMul_1MatMullstm_15_while_placeholder_2;lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_15/while/lstm_cell_174/addAddV2,lstm_15/while/lstm_cell_174/MatMul:product:0.lstm_15/while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_15/while/lstm_cell_174/BiasAddBiasAdd#lstm_15/while/lstm_cell_174/add:z:0:lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_15/while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_15/while/lstm_cell_174/splitSplit4lstm_15/while/lstm_cell_174/split/split_dim:output:0,lstm_15/while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_15/while/lstm_cell_174/SigmoidSigmoid*lstm_15/while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_15/while/lstm_cell_174/Sigmoid_1Sigmoid*lstm_15/while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd 
lstm_15/while/lstm_cell_174/mulMul)lstm_15/while/lstm_cell_174/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_15/while/lstm_cell_174/ReluRelu*lstm_15/while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_15/while/lstm_cell_174/mul_1Mul'lstm_15/while/lstm_cell_174/Sigmoid:y:0.lstm_15/while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_15/while/lstm_cell_174/add_1AddV2#lstm_15/while/lstm_cell_174/mul:z:0%lstm_15/while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_15/while/lstm_cell_174/Sigmoid_2Sigmoid*lstm_15/while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_15/while/lstm_cell_174/Relu_1Relu%lstm_15/while/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_15/while/lstm_cell_174/mul_2Mul)lstm_15/while/lstm_cell_174/Sigmoid_2:y:00lstm_15/while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdц
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1lstm_15_while_placeholder%lstm_15/while/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations^lstm_15/while/NoOp*
T0*
_output_shapes
: q
lstm_15/while/Identity_2Identitylstm_15/while/add:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_4Identity%lstm_15/while/lstm_cell_174/mul_2:z:0^lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/while/Identity_5Identity%lstm_15/while/lstm_cell_174/add_1:z:0^lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdѓ
lstm_15/while/NoOpNoOp3^lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2^lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp4^lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"|
;lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0"~
<lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0"z
:lstm_15_while_lstm_cell_174_matmul_readvariableop_resource<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0"Ш
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2f
1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp2j
3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
K
Є
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068985
inputs_0?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068901*
condR
while_cond_1068900*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
К
Ш
while_cond_1068570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068570___redundant_placeholder05
1while_while_cond_1068570___redundant_placeholder15
1while_while_cond_1068570___redundant_placeholder25
1while_while_cond_1068570___redundant_placeholder3
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

Е
)__inference_lstm_17_layer_call_fn_1069282
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1065721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
Ў8

D__inference_lstm_15_layer_call_and_return_conditional_losses_1065212

inputs(
lstm_cell_174_1065130:	(
lstm_cell_174_1065132:	d$
lstm_cell_174_1065134:	
identityЂ%lstm_cell_174/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskў
%lstm_cell_174/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_174_1065130lstm_cell_174_1065132lstm_cell_174_1065134*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1065084n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_174_1065130lstm_cell_174_1065132lstm_cell_174_1065134*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065143*
condR
while_cond_1065142*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdv
NoOpNoOp&^lstm_cell_174/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2N
%lstm_cell_174/StatefulPartitionedCall%lstm_cell_174/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Т

)__inference_dense_5_layer_call_fn_1069896

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
K
Ё
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069458
inputs_0>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069374*
condR
while_cond_1069373*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
#
ё
while_body_1065493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_175_1065517_0:	dШ0
while_lstm_cell_175_1065519_0:	2Ш,
while_lstm_cell_175_1065521_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_175_1065517:	dШ.
while_lstm_cell_175_1065519:	2Ш*
while_lstm_cell_175_1065521:	ШЂ+while/lstm_cell_175/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0М
+while/lstm_cell_175/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_175_1065517_0while_lstm_cell_175_1065519_0while_lstm_cell_175_1065521_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065434н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_175/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_175/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity4while/lstm_cell_175/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z

while/NoOpNoOp,^while/lstm_cell_175/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_175_1065517while_lstm_cell_175_1065517_0"<
while_lstm_cell_175_1065519while_lstm_cell_175_1065519_0"<
while_lstm_cell_175_1065521while_lstm_cell_175_1065521_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2Z
+while/lstm_cell_175/StatefulPartitionedCall+while/lstm_cell_175/StatefulPartitionedCall: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_1065651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065651___redundant_placeholder05
1while_while_cond_1065651___redundant_placeholder15
1while_while_cond_1065651___redundant_placeholder25
1while_while_cond_1065651___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ў§
ќ

I__inference_sequential_5_layer_call_and_return_conditional_losses_1068039

inputsG
4lstm_15_lstm_cell_174_matmul_readvariableop_resource:	I
6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource:	dD
5lstm_15_lstm_cell_174_biasadd_readvariableop_resource:	G
4lstm_16_lstm_cell_175_matmul_readvariableop_resource:	dШI
6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource:	2ШD
5lstm_16_lstm_cell_175_biasadd_readvariableop_resource:	ШF
4lstm_17_lstm_cell_176_matmul_readvariableop_resource:2(H
6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource:
(C
5lstm_17_lstm_cell_176_biasadd_readvariableop_resource:(8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:
identityЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂ,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpЂ+lstm_15/lstm_cell_174/MatMul/ReadVariableOpЂ-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpЂlstm_15/whileЂ,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpЂ+lstm_16/lstm_cell_175/MatMul/ReadVariableOpЂ-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpЂlstm_16/whileЂ,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpЂ+lstm_17/lstm_cell_176/MatMul/ReadVariableOpЂ-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpЂlstm_17/whileC
lstm_15/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_15/transpose	Transposeinputslstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:g
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_15/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0А
lstm_15/lstm_cell_174/MatMulMatMul lstm_15/strided_slice_2:output:03lstm_15/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Њ
lstm_15/lstm_cell_174/MatMul_1MatMullstm_15/zeros:output:05lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_15/lstm_cell_174/addAddV2&lstm_15/lstm_cell_174/MatMul:product:0(lstm_15/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_15/lstm_cell_174/BiasAddBiasAddlstm_15/lstm_cell_174/add:z:04lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_15/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_15/lstm_cell_174/splitSplit.lstm_15/lstm_cell_174/split/split_dim:output:0&lstm_15/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_15/lstm_cell_174/SigmoidSigmoid$lstm_15/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/Sigmoid_1Sigmoid$lstm_15/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/mulMul#lstm_15/lstm_cell_174/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_15/lstm_cell_174/ReluRelu$lstm_15/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_15/lstm_cell_174/mul_1Mul!lstm_15/lstm_cell_174/Sigmoid:y:0(lstm_15/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/add_1AddV2lstm_15/lstm_cell_174/mul:z:0lstm_15/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/Sigmoid_2Sigmoid$lstm_15/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_15/lstm_cell_174/Relu_1Relulstm_15/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_15/lstm_cell_174/mul_2Mul#lstm_15/lstm_cell_174/Sigmoid_2:y:0*lstm_15/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   а
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_15_lstm_cell_174_matmul_readvariableop_resource6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource5lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_15_while_body_1067671*&
condR
lstm_15_while_cond_1067670*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   к
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0p
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_16/ShapeShapelstm_15/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_16/transpose	Transposelstm_15/transpose_1:y:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_16/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0А
lstm_16/lstm_cell_175/MatMulMatMul lstm_16/strided_slice_2:output:03lstm_16/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Њ
lstm_16/lstm_cell_175/MatMul_1MatMullstm_16/zeros:output:05lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_16/lstm_cell_175/addAddV2&lstm_16/lstm_cell_175/MatMul:product:0(lstm_16/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_16/lstm_cell_175/BiasAddBiasAddlstm_16/lstm_cell_175/add:z:04lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_16/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_16/lstm_cell_175/splitSplit.lstm_16/lstm_cell_175/split/split_dim:output:0&lstm_16/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_16/lstm_cell_175/SigmoidSigmoid$lstm_16/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/Sigmoid_1Sigmoid$lstm_16/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/mulMul#lstm_16/lstm_cell_175/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_16/lstm_cell_175/ReluRelu$lstm_16/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_16/lstm_cell_175/mul_1Mul!lstm_16/lstm_cell_175/Sigmoid:y:0(lstm_16/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/add_1AddV2lstm_16/lstm_cell_175/mul:z:0lstm_16/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/Sigmoid_2Sigmoid$lstm_16/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_16/lstm_cell_175/Relu_1Relulstm_16/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_16/lstm_cell_175/mul_2Mul#lstm_16/lstm_cell_175/Sigmoid_2:y:0*lstm_16/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2v
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   а
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_16_lstm_cell_175_matmul_readvariableop_resource6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource5lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_1067810*&
condR
lstm_16_while_cond_1067809*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   к
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0p
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2c
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Z
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
k
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:g
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ј
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_17/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Џ
lstm_17/lstm_cell_176/MatMulMatMul lstm_17/strided_slice_2:output:03lstm_17/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_17/lstm_cell_176/MatMul_1MatMullstm_17/zeros:output:05lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_17/lstm_cell_176/addAddV2&lstm_17/lstm_cell_176/MatMul:product:0(lstm_17/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_17/lstm_cell_176/BiasAddBiasAddlstm_17/lstm_cell_176/add:z:04lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_17/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_17/lstm_cell_176/splitSplit.lstm_17/lstm_cell_176/split/split_dim:output:0&lstm_17/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_17/lstm_cell_176/SigmoidSigmoid$lstm_17/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/Sigmoid_1Sigmoid$lstm_17/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/mulMul#lstm_17/lstm_cell_176/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_17/lstm_cell_176/ReluRelu$lstm_17/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_17/lstm_cell_176/mul_1Mul!lstm_17/lstm_cell_176/Sigmoid:y:0(lstm_17/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/add_1AddV2lstm_17/lstm_cell_176/mul:z:0lstm_17/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/Sigmoid_2Sigmoid$lstm_17/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_17/lstm_cell_176/Relu_1Relulstm_17/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_17/lstm_cell_176/mul_2Mul#lstm_17/lstm_cell_176/Sigmoid_2:y:0*lstm_17/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
v
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   а
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_17_lstm_cell_176_matmul_readvariableop_resource6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource5lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_17_while_body_1067949*&
condR
lstm_17_while_cond_1067948*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   к
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0p
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskm
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
c
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_5/MatMulMatMul lstm_17/strided_slice_3:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp,^lstm_15/lstm_cell_174/MatMul/ReadVariableOp.^lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp^lstm_15/while-^lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp,^lstm_16/lstm_cell_175/MatMul/ReadVariableOp.^lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp^lstm_16/while-^lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp,^lstm_17/lstm_cell_176/MatMul/ReadVariableOp.^lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp2Z
+lstm_15/lstm_cell_174/MatMul/ReadVariableOp+lstm_15/lstm_cell_174/MatMul/ReadVariableOp2^
-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while2\
,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp2Z
+lstm_16/lstm_cell_175/MatMul/ReadVariableOp+lstm_16/lstm_cell_175/MatMul/ReadVariableOp2^
-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2\
,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp2Z
+lstm_17/lstm_cell_176/MatMul/ReadVariableOp+lstm_17/lstm_cell_176/MatMul/ReadVariableOp2^
-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1069659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069659___redundant_placeholder05
1while_while_cond_1069659___redundant_placeholder15
1while_while_cond_1069659___redundant_placeholder25
1while_while_cond_1069659___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_1065842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065842___redundant_placeholder05
1while_while_cond_1065842___redundant_placeholder15
1while_while_cond_1065842___redundant_placeholder25
1while_while_cond_1065842___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
мJ

D__inference_lstm_17_layer_call_and_return_conditional_losses_1069887

inputs>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069803*
condR
while_cond_1069802*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ћ
И
)__inference_lstm_16_layer_call_fn_1068666
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1065371|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
сJ
Ђ
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068512

inputs?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068428*
condR
while_cond_1068427*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б8
к
while_body_1065986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
б8
к
while_body_1069187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
#
ё
while_body_1065143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_174_1065167_0:	0
while_lstm_cell_174_1065169_0:	d,
while_lstm_cell_174_1065171_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_174_1065167:	.
while_lstm_cell_174_1065169:	d*
while_lstm_cell_174_1065171:	Ђ+while/lstm_cell_174/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0М
+while/lstm_cell_174/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_174_1065167_0while_lstm_cell_174_1065169_0while_lstm_cell_174_1065171_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1065084н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_174/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_174/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity4while/lstm_cell_174/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz

while/NoOpNoOp,^while/lstm_cell_174/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_174_1065167while_lstm_cell_174_1065167_0"<
while_lstm_cell_174_1065169while_lstm_cell_174_1065169_0"<
while_lstm_cell_174_1065171while_lstm_cell_174_1065171_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2Z
+while/lstm_cell_174/StatefulPartitionedCall+while/lstm_cell_174/StatefulPartitionedCall: 
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
ў§
ќ

I__inference_sequential_5_layer_call_and_return_conditional_losses_1067612

inputsG
4lstm_15_lstm_cell_174_matmul_readvariableop_resource:	I
6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource:	dD
5lstm_15_lstm_cell_174_biasadd_readvariableop_resource:	G
4lstm_16_lstm_cell_175_matmul_readvariableop_resource:	dШI
6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource:	2ШD
5lstm_16_lstm_cell_175_biasadd_readvariableop_resource:	ШF
4lstm_17_lstm_cell_176_matmul_readvariableop_resource:2(H
6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource:
(C
5lstm_17_lstm_cell_176_biasadd_readvariableop_resource:(8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:
identityЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂ,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpЂ+lstm_15/lstm_cell_174/MatMul/ReadVariableOpЂ-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpЂlstm_15/whileЂ,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpЂ+lstm_16/lstm_cell_175/MatMul/ReadVariableOpЂ-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpЂlstm_16/whileЂ,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpЂ+lstm_17/lstm_cell_176/MatMul/ReadVariableOpЂ-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpЂlstm_17/whileC
lstm_15/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_15/transpose	Transposeinputslstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:g
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_15/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0А
lstm_15/lstm_cell_174/MatMulMatMul lstm_15/strided_slice_2:output:03lstm_15/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Њ
lstm_15/lstm_cell_174/MatMul_1MatMullstm_15/zeros:output:05lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_15/lstm_cell_174/addAddV2&lstm_15/lstm_cell_174/MatMul:product:0(lstm_15/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_15/lstm_cell_174/BiasAddBiasAddlstm_15/lstm_cell_174/add:z:04lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_15/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_15/lstm_cell_174/splitSplit.lstm_15/lstm_cell_174/split/split_dim:output:0&lstm_15/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_15/lstm_cell_174/SigmoidSigmoid$lstm_15/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/Sigmoid_1Sigmoid$lstm_15/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/mulMul#lstm_15/lstm_cell_174/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_15/lstm_cell_174/ReluRelu$lstm_15/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_15/lstm_cell_174/mul_1Mul!lstm_15/lstm_cell_174/Sigmoid:y:0(lstm_15/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/add_1AddV2lstm_15/lstm_cell_174/mul:z:0lstm_15/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/lstm_cell_174/Sigmoid_2Sigmoid$lstm_15/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_15/lstm_cell_174/Relu_1Relulstm_15/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_15/lstm_cell_174/mul_2Mul#lstm_15/lstm_cell_174/Sigmoid_2:y:0*lstm_15/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   а
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_15_lstm_cell_174_matmul_readvariableop_resource6lstm_15_lstm_cell_174_matmul_1_readvariableop_resource5lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_15_while_body_1067244*&
condR
lstm_15_while_cond_1067243*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   к
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0p
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_16/ShapeShapelstm_15/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Z
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_16/transpose	Transposelstm_15/transpose_1:y:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_16/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0А
lstm_16/lstm_cell_175/MatMulMatMul lstm_16/strided_slice_2:output:03lstm_16/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Њ
lstm_16/lstm_cell_175/MatMul_1MatMullstm_16/zeros:output:05lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_16/lstm_cell_175/addAddV2&lstm_16/lstm_cell_175/MatMul:product:0(lstm_16/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_16/lstm_cell_175/BiasAddBiasAddlstm_16/lstm_cell_175/add:z:04lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_16/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_16/lstm_cell_175/splitSplit.lstm_16/lstm_cell_175/split/split_dim:output:0&lstm_16/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_16/lstm_cell_175/SigmoidSigmoid$lstm_16/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/Sigmoid_1Sigmoid$lstm_16/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/mulMul#lstm_16/lstm_cell_175/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_16/lstm_cell_175/ReluRelu$lstm_16/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_16/lstm_cell_175/mul_1Mul!lstm_16/lstm_cell_175/Sigmoid:y:0(lstm_16/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/add_1AddV2lstm_16/lstm_cell_175/mul:z:0lstm_16/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/lstm_cell_175/Sigmoid_2Sigmoid$lstm_16/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_16/lstm_cell_175/Relu_1Relulstm_16/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_16/lstm_cell_175/mul_2Mul#lstm_16/lstm_cell_175/Sigmoid_2:y:0*lstm_16/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2v
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   а
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_16_lstm_cell_175_matmul_readvariableop_resource6lstm_16_lstm_cell_175_matmul_1_readvariableop_resource5lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_1067383*&
condR
lstm_16_while_cond_1067382*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   к
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0p
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2c
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Z
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
k
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:g
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ј
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_17/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Џ
lstm_17/lstm_cell_176/MatMulMatMul lstm_17/strided_slice_2:output:03lstm_17/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_17/lstm_cell_176/MatMul_1MatMullstm_17/zeros:output:05lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_17/lstm_cell_176/addAddV2&lstm_17/lstm_cell_176/MatMul:product:0(lstm_17/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_17/lstm_cell_176/BiasAddBiasAddlstm_17/lstm_cell_176/add:z:04lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_17/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_17/lstm_cell_176/splitSplit.lstm_17/lstm_cell_176/split/split_dim:output:0&lstm_17/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_17/lstm_cell_176/SigmoidSigmoid$lstm_17/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/Sigmoid_1Sigmoid$lstm_17/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/mulMul#lstm_17/lstm_cell_176/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_17/lstm_cell_176/ReluRelu$lstm_17/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_17/lstm_cell_176/mul_1Mul!lstm_17/lstm_cell_176/Sigmoid:y:0(lstm_17/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/add_1AddV2lstm_17/lstm_cell_176/mul:z:0lstm_17/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/lstm_cell_176/Sigmoid_2Sigmoid$lstm_17/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_17/lstm_cell_176/Relu_1Relulstm_17/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_17/lstm_cell_176/mul_2Mul#lstm_17/lstm_cell_176/Sigmoid_2:y:0*lstm_17/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
v
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   а
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_17_lstm_cell_176_matmul_readvariableop_resource6lstm_17_lstm_cell_176_matmul_1_readvariableop_resource5lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_17_while_body_1067522*&
condR
lstm_17_while_cond_1067521*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   к
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0p
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskm
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
c
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_5/MatMulMatMul lstm_17/strided_slice_3:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp,^lstm_15/lstm_cell_174/MatMul/ReadVariableOp.^lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp^lstm_15/while-^lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp,^lstm_16/lstm_cell_175/MatMul/ReadVariableOp.^lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp^lstm_16/while-^lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp,^lstm_17/lstm_cell_176/MatMul/ReadVariableOp.^lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp,lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp2Z
+lstm_15/lstm_cell_174/MatMul/ReadVariableOp+lstm_15/lstm_cell_174/MatMul/ReadVariableOp2^
-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp-lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while2\
,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp,lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp2Z
+lstm_16/lstm_cell_175/MatMul/ReadVariableOp+lstm_16/lstm_cell_175/MatMul/ReadVariableOp2^
-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp-lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2\
,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp,lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp2Z
+lstm_17/lstm_cell_176/MatMul/ReadVariableOp+lstm_17/lstm_cell_176/MatMul/ReadVariableOp2^
-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp-lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї8

D__inference_lstm_17_layer_call_and_return_conditional_losses_1065721

inputs'
lstm_cell_176_1065639:2('
lstm_cell_176_1065641:
(#
lstm_cell_176_1065643:(
identityЂ%lstm_cell_176/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskў
%lstm_cell_176/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_176_1065639lstm_cell_176_1065641lstm_cell_176_1065643*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065638n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_176_1065639lstm_cell_176_1065641lstm_cell_176_1065643*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065652*
condR
while_cond_1065651*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
v
NoOpNoOp&^lstm_cell_176/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2N
%lstm_cell_176/StatefulPartitionedCall%lstm_cell_176/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
сJ
Ђ
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068655

inputs?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068571*
condR
while_cond_1068570*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф8
д
while_body_1066286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
сJ
Ђ
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066220

inputs?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1066136*
condR
while_cond_1066135*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

Ж
)__inference_lstm_15_layer_call_fn_1068072

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066070s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1068427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068427___redundant_placeholder05
1while_while_cond_1068427___redundant_placeholder15
1while_while_cond_1068427___redundant_placeholder25
1while_while_cond_1068427___redundant_placeholder3
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
К
Ш
while_cond_1069373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069373___redundant_placeholder05
1while_while_cond_1069373___redundant_placeholder15
1while_while_cond_1069373___redundant_placeholder25
1while_while_cond_1069373___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_1065492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065492___redundant_placeholder05
1while_while_cond_1065492___redundant_placeholder15
1while_while_cond_1065492___redundant_placeholder25
1while_while_cond_1065492___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ГQ
ћ
'sequential_5_lstm_15_while_body_1064503F
Bsequential_5_lstm_15_while_sequential_5_lstm_15_while_loop_counterL
Hsequential_5_lstm_15_while_sequential_5_lstm_15_while_maximum_iterations*
&sequential_5_lstm_15_while_placeholder,
(sequential_5_lstm_15_while_placeholder_1,
(sequential_5_lstm_15_while_placeholder_2,
(sequential_5_lstm_15_while_placeholder_3E
Asequential_5_lstm_15_while_sequential_5_lstm_15_strided_slice_1_0
}sequential_5_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_15_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_5_lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0:	^
Ksequential_5_lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dY
Jsequential_5_lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0:	'
#sequential_5_lstm_15_while_identity)
%sequential_5_lstm_15_while_identity_1)
%sequential_5_lstm_15_while_identity_2)
%sequential_5_lstm_15_while_identity_3)
%sequential_5_lstm_15_while_identity_4)
%sequential_5_lstm_15_while_identity_5C
?sequential_5_lstm_15_while_sequential_5_lstm_15_strided_slice_1
{sequential_5_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_15_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_5_lstm_15_while_lstm_cell_174_matmul_readvariableop_resource:	\
Isequential_5_lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource:	dW
Hsequential_5_lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ?sequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpЂ>sequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpЂ@sequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp
Lsequential_5/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
>sequential_5/lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_15_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_15_while_placeholderUsequential_5/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Щ
>sequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOpIsequential_5_lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ћ
/sequential_5/lstm_15/while/lstm_cell_174/MatMulMatMulEsequential_5/lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЭ
@sequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOpKsequential_5_lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0т
1sequential_5/lstm_15/while/lstm_cell_174/MatMul_1MatMul(sequential_5_lstm_15_while_placeholder_2Hsequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџр
,sequential_5/lstm_15/while/lstm_cell_174/addAddV29sequential_5/lstm_15/while/lstm_cell_174/MatMul:product:0;sequential_5/lstm_15/while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
?sequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOpJsequential_5_lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0щ
0sequential_5/lstm_15/while/lstm_cell_174/BiasAddBiasAdd0sequential_5/lstm_15/while/lstm_cell_174/add:z:0Gsequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
8sequential_5/lstm_15/while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_5/lstm_15/while/lstm_cell_174/splitSplitAsequential_5/lstm_15/while/lstm_cell_174/split/split_dim:output:09sequential_5/lstm_15/while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitІ
0sequential_5/lstm_15/while/lstm_cell_174/SigmoidSigmoid7sequential_5/lstm_15/while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_5/lstm_15/while/lstm_cell_174/Sigmoid_1Sigmoid7sequential_5/lstm_15/while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЧ
,sequential_5/lstm_15/while/lstm_cell_174/mulMul6sequential_5/lstm_15/while/lstm_cell_174/Sigmoid_1:y:0(sequential_5_lstm_15_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd 
-sequential_5/lstm_15/while/lstm_cell_174/ReluRelu7sequential_5/lstm_15/while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdк
.sequential_5/lstm_15/while/lstm_cell_174/mul_1Mul4sequential_5/lstm_15/while/lstm_cell_174/Sigmoid:y:0;sequential_5/lstm_15/while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЯ
.sequential_5/lstm_15/while/lstm_cell_174/add_1AddV20sequential_5/lstm_15/while/lstm_cell_174/mul:z:02sequential_5/lstm_15/while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_5/lstm_15/while/lstm_cell_174/Sigmoid_2Sigmoid7sequential_5/lstm_15/while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
/sequential_5/lstm_15/while/lstm_cell_174/Relu_1Relu2sequential_5/lstm_15/while/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdо
.sequential_5/lstm_15/while/lstm_cell_174/mul_2Mul6sequential_5/lstm_15/while/lstm_cell_174/Sigmoid_2:y:0=sequential_5/lstm_15/while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
?sequential_5/lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_15_while_placeholder_1&sequential_5_lstm_15_while_placeholder2sequential_5/lstm_15/while/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвb
 sequential_5/lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_5/lstm_15/while/addAddV2&sequential_5_lstm_15_while_placeholder)sequential_5/lstm_15/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 sequential_5/lstm_15/while/add_1AddV2Bsequential_5_lstm_15_while_sequential_5_lstm_15_while_loop_counter+sequential_5/lstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: 
#sequential_5/lstm_15/while/IdentityIdentity$sequential_5/lstm_15/while/add_1:z:0 ^sequential_5/lstm_15/while/NoOp*
T0*
_output_shapes
: О
%sequential_5/lstm_15/while/Identity_1IdentityHsequential_5_lstm_15_while_sequential_5_lstm_15_while_maximum_iterations ^sequential_5/lstm_15/while/NoOp*
T0*
_output_shapes
: 
%sequential_5/lstm_15/while/Identity_2Identity"sequential_5/lstm_15/while/add:z:0 ^sequential_5/lstm_15/while/NoOp*
T0*
_output_shapes
: Х
%sequential_5/lstm_15/while/Identity_3IdentityOsequential_5/lstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_15/while/NoOp*
T0*
_output_shapes
: Й
%sequential_5/lstm_15/while/Identity_4Identity2sequential_5/lstm_15/while/lstm_cell_174/mul_2:z:0 ^sequential_5/lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЙ
%sequential_5/lstm_15/while/Identity_5Identity2sequential_5/lstm_15/while/lstm_cell_174/add_1:z:0 ^sequential_5/lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЇ
sequential_5/lstm_15/while/NoOpNoOp@^sequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp?^sequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpA^sequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_15_while_identity,sequential_5/lstm_15/while/Identity:output:0"W
%sequential_5_lstm_15_while_identity_1.sequential_5/lstm_15/while/Identity_1:output:0"W
%sequential_5_lstm_15_while_identity_2.sequential_5/lstm_15/while/Identity_2:output:0"W
%sequential_5_lstm_15_while_identity_3.sequential_5/lstm_15/while/Identity_3:output:0"W
%sequential_5_lstm_15_while_identity_4.sequential_5/lstm_15/while/Identity_4:output:0"W
%sequential_5_lstm_15_while_identity_5.sequential_5/lstm_15/while/Identity_5:output:0"
Hsequential_5_lstm_15_while_lstm_cell_174_biasadd_readvariableop_resourceJsequential_5_lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0"
Isequential_5_lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resourceKsequential_5_lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0"
Gsequential_5_lstm_15_while_lstm_cell_174_matmul_readvariableop_resourceIsequential_5_lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0"
?sequential_5_lstm_15_while_sequential_5_lstm_15_strided_slice_1Asequential_5_lstm_15_while_sequential_5_lstm_15_strided_slice_1_0"ќ
{sequential_5_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_15_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
?sequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp?sequential_5/lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2
>sequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp>sequential_5/lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp2
@sequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp@sequential_5/lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
К
Ш
while_cond_1064951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1064951___redundant_placeholder05
1while_while_cond_1064951___redundant_placeholder15
1while_while_cond_1064951___redundant_placeholder25
1while_while_cond_1064951___redundant_placeholder3
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
Ћ
И
)__inference_lstm_15_layer_call_fn_1068061
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1065212|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
п

J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070070

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1

ч
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066395

inputs"
lstm_15_1066071:	"
lstm_15_1066073:	d
lstm_15_1066075:	"
lstm_16_1066221:	dШ"
lstm_16_1066223:	2Ш
lstm_16_1066225:	Ш!
lstm_17_1066371:2(!
lstm_17_1066373:
(
lstm_17_1066375:(!
dense_5_1066389:

dense_5_1066391:
identityЂdense_5/StatefulPartitionedCallЂlstm_15/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
lstm_15/StatefulPartitionedCallStatefulPartitionedCallinputslstm_15_1066071lstm_15_1066073lstm_15_1066075*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066070Ј
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0lstm_16_1066221lstm_16_1066223lstm_16_1066225*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066220Є
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_1066371lstm_17_1066373lstm_17_1066375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066370
dense_5/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_5_1066389dense_5_1066391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
И
)__inference_lstm_16_layer_call_fn_1068677
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1065562|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
пЏ
Ё
"__inference__wrapped_model_1064871
lstm_15_inputT
Asequential_5_lstm_15_lstm_cell_174_matmul_readvariableop_resource:	V
Csequential_5_lstm_15_lstm_cell_174_matmul_1_readvariableop_resource:	dQ
Bsequential_5_lstm_15_lstm_cell_174_biasadd_readvariableop_resource:	T
Asequential_5_lstm_16_lstm_cell_175_matmul_readvariableop_resource:	dШV
Csequential_5_lstm_16_lstm_cell_175_matmul_1_readvariableop_resource:	2ШQ
Bsequential_5_lstm_16_lstm_cell_175_biasadd_readvariableop_resource:	ШS
Asequential_5_lstm_17_lstm_cell_176_matmul_readvariableop_resource:2(U
Csequential_5_lstm_17_lstm_cell_176_matmul_1_readvariableop_resource:
(P
Bsequential_5_lstm_17_lstm_cell_176_biasadd_readvariableop_resource:(E
3sequential_5_dense_5_matmul_readvariableop_resource:
B
4sequential_5_dense_5_biasadd_readvariableop_resource:
identityЂ+sequential_5/dense_5/BiasAdd/ReadVariableOpЂ*sequential_5/dense_5/MatMul/ReadVariableOpЂ9sequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpЂ8sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOpЂ:sequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpЂsequential_5/lstm_15/whileЂ9sequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpЂ8sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOpЂ:sequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpЂsequential_5/lstm_16/whileЂ9sequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpЂ8sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOpЂ:sequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpЂsequential_5/lstm_17/whileW
sequential_5/lstm_15/ShapeShapelstm_15_input*
T0*
_output_shapes
:r
(sequential_5/lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"sequential_5/lstm_15/strided_sliceStridedSlice#sequential_5/lstm_15/Shape:output:01sequential_5/lstm_15/strided_slice/stack:output:03sequential_5/lstm_15/strided_slice/stack_1:output:03sequential_5/lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dВ
!sequential_5/lstm_15/zeros/packedPack+sequential_5/lstm_15/strided_slice:output:0,sequential_5/lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
sequential_5/lstm_15/zerosFill*sequential_5/lstm_15/zeros/packed:output:0)sequential_5/lstm_15/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdg
%sequential_5/lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЖ
#sequential_5/lstm_15/zeros_1/packedPack+sequential_5/lstm_15/strided_slice:output:0.sequential_5/lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential_5/lstm_15/zeros_1Fill,sequential_5/lstm_15/zeros_1/packed:output:0+sequential_5/lstm_15/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
#sequential_5/lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_5/lstm_15/transpose	Transposelstm_15_input,sequential_5/lstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџn
sequential_5/lstm_15/Shape_1Shape"sequential_5/lstm_15/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$sequential_5/lstm_15/strided_slice_1StridedSlice%sequential_5/lstm_15/Shape_1:output:03sequential_5/lstm_15/strided_slice_1/stack:output:05sequential_5/lstm_15/strided_slice_1/stack_1:output:05sequential_5/lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"sequential_5/lstm_15/TensorArrayV2TensorListReserve9sequential_5/lstm_15/TensorArrayV2/element_shape:output:0-sequential_5/lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jsequential_5/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
<sequential_5/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_15/transpose:y:0Ssequential_5/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*sequential_5/lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$sequential_5/lstm_15/strided_slice_2StridedSlice"sequential_5/lstm_15/transpose:y:03sequential_5/lstm_15/strided_slice_2/stack:output:05sequential_5/lstm_15/strided_slice_2/stack_1:output:05sequential_5/lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЛ
8sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOpReadVariableOpAsequential_5_lstm_15_lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0з
)sequential_5/lstm_15/lstm_cell_174/MatMulMatMul-sequential_5/lstm_15/strided_slice_2:output:0@sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
:sequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOpCsequential_5_lstm_15_lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0б
+sequential_5/lstm_15/lstm_cell_174/MatMul_1MatMul#sequential_5/lstm_15/zeros:output:0Bsequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЮ
&sequential_5/lstm_15/lstm_cell_174/addAddV23sequential_5/lstm_15/lstm_cell_174/MatMul:product:05sequential_5/lstm_15/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
9sequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0з
*sequential_5/lstm_15/lstm_cell_174/BiasAddBiasAdd*sequential_5/lstm_15/lstm_cell_174/add:z:0Asequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџt
2sequential_5/lstm_15/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_5/lstm_15/lstm_cell_174/splitSplit;sequential_5/lstm_15/lstm_cell_174/split/split_dim:output:03sequential_5/lstm_15/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
*sequential_5/lstm_15/lstm_cell_174/SigmoidSigmoid1sequential_5/lstm_15/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_5/lstm_15/lstm_cell_174/Sigmoid_1Sigmoid1sequential_5/lstm_15/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdИ
&sequential_5/lstm_15/lstm_cell_174/mulMul0sequential_5/lstm_15/lstm_cell_174/Sigmoid_1:y:0%sequential_5/lstm_15/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
'sequential_5/lstm_15/lstm_cell_174/ReluRelu1sequential_5/lstm_15/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdШ
(sequential_5/lstm_15/lstm_cell_174/mul_1Mul.sequential_5/lstm_15/lstm_cell_174/Sigmoid:y:05sequential_5/lstm_15/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdН
(sequential_5/lstm_15/lstm_cell_174/add_1AddV2*sequential_5/lstm_15/lstm_cell_174/mul:z:0,sequential_5/lstm_15/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_5/lstm_15/lstm_cell_174/Sigmoid_2Sigmoid1sequential_5/lstm_15/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_5/lstm_15/lstm_cell_174/Relu_1Relu,sequential_5/lstm_15/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЬ
(sequential_5/lstm_15/lstm_cell_174/mul_2Mul0sequential_5/lstm_15/lstm_cell_174/Sigmoid_2:y:07sequential_5/lstm_15/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
2sequential_5/lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ї
$sequential_5/lstm_15/TensorArrayV2_1TensorListReserve;sequential_5/lstm_15/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
sequential_5/lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'sequential_5/lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ­
sequential_5/lstm_15/whileWhile0sequential_5/lstm_15/while/loop_counter:output:06sequential_5/lstm_15/while/maximum_iterations:output:0"sequential_5/lstm_15/time:output:0-sequential_5/lstm_15/TensorArrayV2_1:handle:0#sequential_5/lstm_15/zeros:output:0%sequential_5/lstm_15/zeros_1:output:0-sequential_5/lstm_15/strided_slice_1:output:0Lsequential_5/lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_5_lstm_15_lstm_cell_174_matmul_readvariableop_resourceCsequential_5_lstm_15_lstm_cell_174_matmul_1_readvariableop_resourceBsequential_5_lstm_15_lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_5_lstm_15_while_body_1064503*3
cond+R)
'sequential_5_lstm_15_while_cond_1064502*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Esequential_5/lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
7sequential_5/lstm_15/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_15/while:output:3Nsequential_5/lstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0}
*sequential_5/lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,sequential_5/lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$sequential_5/lstm_15/strided_slice_3StridedSlice@sequential_5/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_15/strided_slice_3/stack:output:05sequential_5/lstm_15/strided_slice_3/stack_1:output:05sequential_5/lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskz
%sequential_5/lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          е
 sequential_5/lstm_15/transpose_1	Transpose@sequential_5/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdp
sequential_5/lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_5/lstm_16/ShapeShape$sequential_5/lstm_15/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_5/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"sequential_5/lstm_16/strided_sliceStridedSlice#sequential_5/lstm_16/Shape:output:01sequential_5/lstm_16/strided_slice/stack:output:03sequential_5/lstm_16/strided_slice/stack_1:output:03sequential_5/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2В
!sequential_5/lstm_16/zeros/packedPack+sequential_5/lstm_16/strided_slice:output:0,sequential_5/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
sequential_5/lstm_16/zerosFill*sequential_5/lstm_16/zeros/packed:output:0)sequential_5/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
%sequential_5/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ж
#sequential_5/lstm_16/zeros_1/packedPack+sequential_5/lstm_16/strided_slice:output:0.sequential_5/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential_5/lstm_16/zeros_1Fill,sequential_5/lstm_16/zeros_1/packed:output:0+sequential_5/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
#sequential_5/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Е
sequential_5/lstm_16/transpose	Transpose$sequential_5/lstm_15/transpose_1:y:0,sequential_5/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdn
sequential_5/lstm_16/Shape_1Shape"sequential_5/lstm_16/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$sequential_5/lstm_16/strided_slice_1StridedSlice%sequential_5/lstm_16/Shape_1:output:03sequential_5/lstm_16/strided_slice_1/stack:output:05sequential_5/lstm_16/strided_slice_1/stack_1:output:05sequential_5/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"sequential_5/lstm_16/TensorArrayV2TensorListReserve9sequential_5/lstm_16/TensorArrayV2/element_shape:output:0-sequential_5/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
<sequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_16/transpose:y:0Ssequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*sequential_5/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$sequential_5/lstm_16/strided_slice_2StridedSlice"sequential_5/lstm_16/transpose:y:03sequential_5/lstm_16/strided_slice_2/stack:output:05sequential_5/lstm_16/strided_slice_2/stack_1:output:05sequential_5/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЛ
8sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOpReadVariableOpAsequential_5_lstm_16_lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0з
)sequential_5/lstm_16/lstm_cell_175/MatMulMatMul-sequential_5/lstm_16/strided_slice_2:output:0@sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШП
:sequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOpCsequential_5_lstm_16_lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0б
+sequential_5/lstm_16/lstm_cell_175/MatMul_1MatMul#sequential_5/lstm_16/zeros:output:0Bsequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЮ
&sequential_5/lstm_16/lstm_cell_175/addAddV23sequential_5/lstm_16/lstm_cell_175/MatMul:product:05sequential_5/lstm_16/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
9sequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0з
*sequential_5/lstm_16/lstm_cell_175/BiasAddBiasAdd*sequential_5/lstm_16/lstm_cell_175/add:z:0Asequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШt
2sequential_5/lstm_16/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_5/lstm_16/lstm_cell_175/splitSplit;sequential_5/lstm_16/lstm_cell_175/split/split_dim:output:03sequential_5/lstm_16/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
*sequential_5/lstm_16/lstm_cell_175/SigmoidSigmoid1sequential_5/lstm_16/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
,sequential_5/lstm_16/lstm_cell_175/Sigmoid_1Sigmoid1sequential_5/lstm_16/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2И
&sequential_5/lstm_16/lstm_cell_175/mulMul0sequential_5/lstm_16/lstm_cell_175/Sigmoid_1:y:0%sequential_5/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'sequential_5/lstm_16/lstm_cell_175/ReluRelu1sequential_5/lstm_16/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ш
(sequential_5/lstm_16/lstm_cell_175/mul_1Mul.sequential_5/lstm_16/lstm_cell_175/Sigmoid:y:05sequential_5/lstm_16/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Н
(sequential_5/lstm_16/lstm_cell_175/add_1AddV2*sequential_5/lstm_16/lstm_cell_175/mul:z:0,sequential_5/lstm_16/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
,sequential_5/lstm_16/lstm_cell_175/Sigmoid_2Sigmoid1sequential_5/lstm_16/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
)sequential_5/lstm_16/lstm_cell_175/Relu_1Relu,sequential_5/lstm_16/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
(sequential_5/lstm_16/lstm_cell_175/mul_2Mul0sequential_5/lstm_16/lstm_cell_175/Sigmoid_2:y:07sequential_5/lstm_16/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
2sequential_5/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ї
$sequential_5/lstm_16/TensorArrayV2_1TensorListReserve;sequential_5/lstm_16/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
sequential_5/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'sequential_5/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ­
sequential_5/lstm_16/whileWhile0sequential_5/lstm_16/while/loop_counter:output:06sequential_5/lstm_16/while/maximum_iterations:output:0"sequential_5/lstm_16/time:output:0-sequential_5/lstm_16/TensorArrayV2_1:handle:0#sequential_5/lstm_16/zeros:output:0%sequential_5/lstm_16/zeros_1:output:0-sequential_5/lstm_16/strided_slice_1:output:0Lsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_5_lstm_16_lstm_cell_175_matmul_readvariableop_resourceCsequential_5_lstm_16_lstm_cell_175_matmul_1_readvariableop_resourceBsequential_5_lstm_16_lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_5_lstm_16_while_body_1064642*3
cond+R)
'sequential_5_lstm_16_while_cond_1064641*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Esequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
7sequential_5/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_16/while:output:3Nsequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0}
*sequential_5/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,sequential_5/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$sequential_5/lstm_16/strided_slice_3StridedSlice@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_16/strided_slice_3/stack:output:05sequential_5/lstm_16/strided_slice_3/stack_1:output:05sequential_5/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskz
%sequential_5/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          е
 sequential_5/lstm_16/transpose_1	Transpose@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2p
sequential_5/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_5/lstm_17/ShapeShape$sequential_5/lstm_16/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_5/lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"sequential_5/lstm_17/strided_sliceStridedSlice#sequential_5/lstm_17/Shape:output:01sequential_5/lstm_17/strided_slice/stack:output:03sequential_5/lstm_17/strided_slice/stack_1:output:03sequential_5/lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
В
!sequential_5/lstm_17/zeros/packedPack+sequential_5/lstm_17/strided_slice:output:0,sequential_5/lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
sequential_5/lstm_17/zerosFill*sequential_5/lstm_17/zeros/packed:output:0)sequential_5/lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
g
%sequential_5/lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Ж
#sequential_5/lstm_17/zeros_1/packedPack+sequential_5/lstm_17/strided_slice:output:0.sequential_5/lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential_5/lstm_17/zeros_1Fill,sequential_5/lstm_17/zeros_1/packed:output:0+sequential_5/lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
x
#sequential_5/lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Е
sequential_5/lstm_17/transpose	Transpose$sequential_5/lstm_16/transpose_1:y:0,sequential_5/lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2n
sequential_5/lstm_17/Shape_1Shape"sequential_5/lstm_17/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$sequential_5/lstm_17/strided_slice_1StridedSlice%sequential_5/lstm_17/Shape_1:output:03sequential_5/lstm_17/strided_slice_1/stack:output:05sequential_5/lstm_17/strided_slice_1/stack_1:output:05sequential_5/lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"sequential_5/lstm_17/TensorArrayV2TensorListReserve9sequential_5/lstm_17/TensorArrayV2/element_shape:output:0-sequential_5/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
<sequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_17/transpose:y:0Ssequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*sequential_5/lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$sequential_5/lstm_17/strided_slice_2StridedSlice"sequential_5/lstm_17/transpose:y:03sequential_5/lstm_17/strided_slice_2/stack:output:05sequential_5/lstm_17/strided_slice_2/stack_1:output:05sequential_5/lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskК
8sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOpReadVariableOpAsequential_5_lstm_17_lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0ж
)sequential_5/lstm_17/lstm_cell_176/MatMulMatMul-sequential_5/lstm_17/strided_slice_2:output:0@sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(О
:sequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOpCsequential_5_lstm_17_lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0а
+sequential_5/lstm_17/lstm_cell_176/MatMul_1MatMul#sequential_5/lstm_17/zeros:output:0Bsequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Э
&sequential_5/lstm_17/lstm_cell_176/addAddV23sequential_5/lstm_17/lstm_cell_176/MatMul:product:05sequential_5/lstm_17/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
9sequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0ж
*sequential_5/lstm_17/lstm_cell_176/BiasAddBiasAdd*sequential_5/lstm_17/lstm_cell_176/add:z:0Asequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(t
2sequential_5/lstm_17/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_5/lstm_17/lstm_cell_176/splitSplit;sequential_5/lstm_17/lstm_cell_176/split/split_dim:output:03sequential_5/lstm_17/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
*sequential_5/lstm_17/lstm_cell_176/SigmoidSigmoid1sequential_5/lstm_17/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

,sequential_5/lstm_17/lstm_cell_176/Sigmoid_1Sigmoid1sequential_5/lstm_17/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
И
&sequential_5/lstm_17/lstm_cell_176/mulMul0sequential_5/lstm_17/lstm_cell_176/Sigmoid_1:y:0%sequential_5/lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

'sequential_5/lstm_17/lstm_cell_176/ReluRelu1sequential_5/lstm_17/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
(sequential_5/lstm_17/lstm_cell_176/mul_1Mul.sequential_5/lstm_17/lstm_cell_176/Sigmoid:y:05sequential_5/lstm_17/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Н
(sequential_5/lstm_17/lstm_cell_176/add_1AddV2*sequential_5/lstm_17/lstm_cell_176/mul:z:0,sequential_5/lstm_17/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

,sequential_5/lstm_17/lstm_cell_176/Sigmoid_2Sigmoid1sequential_5/lstm_17/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

)sequential_5/lstm_17/lstm_cell_176/Relu_1Relu,sequential_5/lstm_17/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ь
(sequential_5/lstm_17/lstm_cell_176/mul_2Mul0sequential_5/lstm_17/lstm_cell_176/Sigmoid_2:y:07sequential_5/lstm_17/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

2sequential_5/lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   ї
$sequential_5/lstm_17/TensorArrayV2_1TensorListReserve;sequential_5/lstm_17/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
sequential_5/lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'sequential_5/lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ­
sequential_5/lstm_17/whileWhile0sequential_5/lstm_17/while/loop_counter:output:06sequential_5/lstm_17/while/maximum_iterations:output:0"sequential_5/lstm_17/time:output:0-sequential_5/lstm_17/TensorArrayV2_1:handle:0#sequential_5/lstm_17/zeros:output:0%sequential_5/lstm_17/zeros_1:output:0-sequential_5/lstm_17/strided_slice_1:output:0Lsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_5_lstm_17_lstm_cell_176_matmul_readvariableop_resourceCsequential_5_lstm_17_lstm_cell_176_matmul_1_readvariableop_resourceBsequential_5_lstm_17_lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_5_lstm_17_while_body_1064781*3
cond+R)
'sequential_5_lstm_17_while_cond_1064780*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
Esequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
7sequential_5/lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_17/while:output:3Nsequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0}
*sequential_5/lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,sequential_5/lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$sequential_5/lstm_17/strided_slice_3StridedSlice@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_17/strided_slice_3/stack:output:05sequential_5/lstm_17/strided_slice_3/stack_1:output:05sequential_5/lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskz
%sequential_5/lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          е
 sequential_5/lstm_17/transpose_1	Transpose@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
p
sequential_5/lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0К
sequential_5/dense_5/MatMulMatMul-sequential_5/lstm_17/strided_slice_3:output:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp:^sequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp9^sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOp;^sequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp^sequential_5/lstm_15/while:^sequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp9^sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOp;^sequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp^sequential_5/lstm_16/while:^sequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp9^sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOp;^sequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp^sequential_5/lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp2v
9sequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp9sequential_5/lstm_15/lstm_cell_174/BiasAdd/ReadVariableOp2t
8sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOp8sequential_5/lstm_15/lstm_cell_174/MatMul/ReadVariableOp2x
:sequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp:sequential_5/lstm_15/lstm_cell_174/MatMul_1/ReadVariableOp28
sequential_5/lstm_15/whilesequential_5/lstm_15/while2v
9sequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp9sequential_5/lstm_16/lstm_cell_175/BiasAdd/ReadVariableOp2t
8sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOp8sequential_5/lstm_16/lstm_cell_175/MatMul/ReadVariableOp2x
:sequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp:sequential_5/lstm_16/lstm_cell_175/MatMul_1/ReadVariableOp28
sequential_5/lstm_16/whilesequential_5/lstm_16/while2v
9sequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp9sequential_5/lstm_17/lstm_cell_176/BiasAdd/ReadVariableOp2t
8sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOp8sequential_5/lstm_17/lstm_cell_176/MatMul/ReadVariableOp2x
:sequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp:sequential_5/lstm_17/lstm_cell_176/MatMul_1/ReadVariableOp28
sequential_5/lstm_17/whilesequential_5/lstm_17/while:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input
б8
к
while_body_1068142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
Ч	
ѕ
D__inference_dense_5_layer_call_and_return_conditional_losses_1069906

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ї8

D__inference_lstm_17_layer_call_and_return_conditional_losses_1065912

inputs'
lstm_cell_176_1065830:2('
lstm_cell_176_1065832:
(#
lstm_cell_176_1065834:(
identityЂ%lstm_cell_176/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskў
%lstm_cell_176/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_176_1065830lstm_cell_176_1065832lstm_cell_176_1065834*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065784n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_176_1065830lstm_cell_176_1065832lstm_cell_176_1065834*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065843*
condR
while_cond_1065842*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
v
NoOpNoOp&^lstm_cell_176/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2N
%lstm_cell_176/StatefulPartitionedCall%lstm_cell_176/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
е

J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070168

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
мJ

D__inference_lstm_17_layer_call_and_return_conditional_losses_1066370

inputs>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1066286*
condR
while_cond_1066285*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
б8
к
while_body_1066136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ф8
д
while_body_1069517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
сJ
Ђ
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066070

inputs?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065986*
condR
while_cond_1065985*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ј
ю
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067096
lstm_15_input"
lstm_15_1067069:	"
lstm_15_1067071:	d
lstm_15_1067073:	"
lstm_16_1067076:	dШ"
lstm_16_1067078:	2Ш
lstm_16_1067080:	Ш!
lstm_17_1067083:2(!
lstm_17_1067085:
(
lstm_17_1067087:(!
dense_5_1067090:

dense_5_1067092:
identityЂdense_5/StatefulPartitionedCallЂlstm_15/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
lstm_15/StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputlstm_15_1067069lstm_15_1067071lstm_15_1067073*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066916Ј
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0lstm_16_1067076lstm_16_1067078lstm_16_1067080*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066751Є
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_1067083lstm_17_1067085lstm_17_1067087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066586
dense_5/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_5_1067090dense_5_1067092*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input
я
ј
/__inference_lstm_cell_175_layer_call_fn_1070021

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1


ш
lstm_16_while_cond_1067809,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_1067809___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_1067809___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_1067809___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_1067809___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
п

J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1070004

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
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
б8
к
while_body_1066832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
ь
ѕ
/__inference_lstm_cell_176_layer_call_fn_1070119

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065638o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1

ь
'sequential_5_lstm_15_while_cond_1064502F
Bsequential_5_lstm_15_while_sequential_5_lstm_15_while_loop_counterL
Hsequential_5_lstm_15_while_sequential_5_lstm_15_while_maximum_iterations*
&sequential_5_lstm_15_while_placeholder,
(sequential_5_lstm_15_while_placeholder_1,
(sequential_5_lstm_15_while_placeholder_2,
(sequential_5_lstm_15_while_placeholder_3H
Dsequential_5_lstm_15_while_less_sequential_5_lstm_15_strided_slice_1_
[sequential_5_lstm_15_while_sequential_5_lstm_15_while_cond_1064502___redundant_placeholder0_
[sequential_5_lstm_15_while_sequential_5_lstm_15_while_cond_1064502___redundant_placeholder1_
[sequential_5_lstm_15_while_sequential_5_lstm_15_while_cond_1064502___redundant_placeholder2_
[sequential_5_lstm_15_while_sequential_5_lstm_15_while_cond_1064502___redundant_placeholder3'
#sequential_5_lstm_15_while_identity
Ж
sequential_5/lstm_15/while/LessLess&sequential_5_lstm_15_while_placeholderDsequential_5_lstm_15_while_less_sequential_5_lstm_15_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_15/while/IdentityIdentity#sequential_5/lstm_15/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_15_while_identity,sequential_5/lstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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


ш
lstm_17_while_cond_1067948,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1E
Alstm_17_while_lstm_17_while_cond_1067948___redundant_placeholder0E
Alstm_17_while_lstm_17_while_cond_1067948___redundant_placeholder1E
Alstm_17_while_lstm_17_while_cond_1067948___redundant_placeholder2E
Alstm_17_while_lstm_17_while_cond_1067948___redundant_placeholder3
lstm_17_while_identity

lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: [
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
сJ
Ђ
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069128

inputs?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069044*
condR
while_cond_1069043*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

ч
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066984

inputs"
lstm_15_1066957:	"
lstm_15_1066959:	d
lstm_15_1066961:	"
lstm_16_1066964:	dШ"
lstm_16_1066966:	2Ш
lstm_16_1066968:	Ш!
lstm_17_1066971:2(!
lstm_17_1066973:
(
lstm_17_1066975:(!
dense_5_1066978:

dense_5_1066980:
identityЂdense_5/StatefulPartitionedCallЂlstm_15/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
lstm_15/StatefulPartitionedCallStatefulPartitionedCallinputslstm_15_1066957lstm_15_1066959lstm_15_1066961*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066916Ј
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0lstm_16_1066964lstm_16_1066966lstm_16_1066968*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066751Є
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_1066971lstm_17_1066973lstm_17_1066975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066586
dense_5/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_5_1066978dense_5_1066980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ь
'sequential_5_lstm_17_while_cond_1064780F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3H
Dsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1_
[sequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_1064780___redundant_placeholder0_
[sequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_1064780___redundant_placeholder1_
[sequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_1064780___redundant_placeholder2_
[sequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_1064780___redundant_placeholder3'
#sequential_5_lstm_17_while_identity
Ж
sequential_5/lstm_17/while/LessLess&sequential_5_lstm_17_while_placeholderDsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_17/while/IdentityIdentity#sequential_5/lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_17_while_identity,sequential_5/lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Ф8
д
while_body_1069803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Ў8

D__inference_lstm_16_layer_call_and_return_conditional_losses_1065562

inputs(
lstm_cell_175_1065480:	dШ(
lstm_cell_175_1065482:	2Ш$
lstm_cell_175_1065484:	Ш
identityЂ%lstm_cell_175/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskў
%lstm_cell_175/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_175_1065480lstm_cell_175_1065482lstm_cell_175_1065484*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065434n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_175_1065480lstm_cell_175_1065482lstm_cell_175_1065484*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065493*
condR
while_cond_1065492*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2v
NoOpNoOp&^lstm_cell_175/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2N
%lstm_cell_175/StatefulPartitionedCall%lstm_cell_175/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
з

J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065434

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
з

J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1064938

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
К
Ш
while_cond_1065301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065301___redundant_placeholder05
1while_while_cond_1065301___redundant_placeholder15
1while_while_cond_1065301___redundant_placeholder25
1while_while_cond_1065301___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ў8

D__inference_lstm_16_layer_call_and_return_conditional_losses_1065371

inputs(
lstm_cell_175_1065289:	dШ(
lstm_cell_175_1065291:	2Ш$
lstm_cell_175_1065293:	Ш
identityЂ%lstm_cell_175/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskў
%lstm_cell_175/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_175_1065289lstm_cell_175_1065291lstm_cell_175_1065293*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065288n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_175_1065289lstm_cell_175_1065291lstm_cell_175_1065293*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1065302*
condR
while_cond_1065301*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2v
NoOpNoOp&^lstm_cell_175/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2N
%lstm_cell_175/StatefulPartitionedCall%lstm_cell_175/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
б8
к
while_body_1069044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ч	
ѕ
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ь
ѕ
/__inference_lstm_cell_176_layer_call_fn_1070136

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065784o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
сJ
Ђ
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066751

inputs?
,lstm_cell_175_matmul_readvariableop_resource:	dШA
.lstm_cell_175_matmul_1_readvariableop_resource:	2Ш<
-lstm_cell_175_biasadd_readvariableop_resource:	Ш
identityЂ$lstm_cell_175/BiasAdd/ReadVariableOpЂ#lstm_cell_175/MatMul/ReadVariableOpЂ%lstm_cell_175/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
#lstm_cell_175/MatMul/ReadVariableOpReadVariableOp,lstm_cell_175_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_175/MatMulMatMulstrided_slice_2:output:0+lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
%lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_175_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_175/MatMul_1MatMulzeros:output:0-lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_175/addAddV2lstm_cell_175/MatMul:product:0 lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_175_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_175/BiasAddBiasAddlstm_cell_175/add:z:0,lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_175/splitSplit&lstm_cell_175/split/split_dim:output:0lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitp
lstm_cell_175/SigmoidSigmoidlstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_1Sigmoidlstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_cell_175/mulMullstm_cell_175/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_cell_175/ReluRelulstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_1Mullstm_cell_175/Sigmoid:y:0 lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_cell_175/add_1AddV2lstm_cell_175/mul:z:0lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
lstm_cell_175/Sigmoid_2Sigmoidlstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2g
lstm_cell_175/Relu_1Relulstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_175/mul_2Mullstm_cell_175/Sigmoid_2:y:0"lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_175_matmul_readvariableop_resource.lstm_cell_175_matmul_1_readvariableop_resource-lstm_cell_175_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1066667*
condR
while_cond_1066666*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2У
NoOpNoOp%^lstm_cell_175/BiasAdd/ReadVariableOp$^lstm_cell_175/MatMul/ReadVariableOp&^lstm_cell_175/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2L
$lstm_cell_175/BiasAdd/ReadVariableOp$lstm_cell_175/BiasAdd/ReadVariableOp2J
#lstm_cell_175/MatMul/ReadVariableOp#lstm_cell_175/MatMul/ReadVariableOp2N
%lstm_cell_175/MatMul_1/ReadVariableOp%lstm_cell_175/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
з

J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1065084

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates

Е
)__inference_lstm_17_layer_call_fn_1069293
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1065912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
к


.__inference_sequential_5_layer_call_fn_1067185

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ј
ю
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067066
lstm_15_input"
lstm_15_1067039:	"
lstm_15_1067041:	d
lstm_15_1067043:	"
lstm_16_1067046:	dШ"
lstm_16_1067048:	2Ш
lstm_16_1067050:	Ш!
lstm_17_1067053:2(!
lstm_17_1067055:
(
lstm_17_1067057:(!
dense_5_1067060:

dense_5_1067062:
identityЂdense_5/StatefulPartitionedCallЂlstm_15/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
lstm_15/StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputlstm_15_1067039lstm_15_1067041lstm_15_1067043*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066070Ј
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0lstm_16_1067046lstm_16_1067048lstm_16_1067050*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066220Є
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_1067053lstm_17_1067055lstm_17_1067057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066370
dense_5/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_5_1067060dense_5_1067062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1066388w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input
б8
к
while_body_1068428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
б8
к
while_body_1068758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 

ь
'sequential_5_lstm_16_while_cond_1064641F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3H
Dsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1_
[sequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_1064641___redundant_placeholder0_
[sequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_1064641___redundant_placeholder1_
[sequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_1064641___redundant_placeholder2_
[sequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_1064641___redundant_placeholder3'
#sequential_5_lstm_16_while_identity
Ж
sequential_5/lstm_16/while/LessLess&sequential_5_lstm_16_while_placeholderDsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_16/while/IdentityIdentity#sequential_5/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_16_while_identity,sequential_5/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
я

Ё
.__inference_sequential_5_layer_call_fn_1066420
lstm_15_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input
б8
к
while_body_1066667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ф8
д
while_body_1066502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
ІQ
ѕ
'sequential_5_lstm_17_while_body_1064781F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3E
Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0
}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_5_lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0:2(]
Ksequential_5_lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(X
Jsequential_5_lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0:('
#sequential_5_lstm_17_while_identity)
%sequential_5_lstm_17_while_identity_1)
%sequential_5_lstm_17_while_identity_2)
%sequential_5_lstm_17_while_identity_3)
%sequential_5_lstm_17_while_identity_4)
%sequential_5_lstm_17_while_identity_5C
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensorY
Gsequential_5_lstm_17_while_lstm_cell_176_matmul_readvariableop_resource:2([
Isequential_5_lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource:
(V
Hsequential_5_lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ?sequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpЂ>sequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpЂ@sequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp
Lsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
>sequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_17_while_placeholderUsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ш
>sequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOpIsequential_5_lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0њ
/sequential_5/lstm_17/while/lstm_cell_176/MatMulMatMulEsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ь
@sequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOpKsequential_5_lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0с
1sequential_5/lstm_17/while/lstm_cell_176/MatMul_1MatMul(sequential_5_lstm_17_while_placeholder_2Hsequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(п
,sequential_5/lstm_17/while/lstm_cell_176/addAddV29sequential_5/lstm_17/while/lstm_cell_176/MatMul:product:0;sequential_5/lstm_17/while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ц
?sequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOpJsequential_5_lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ш
0sequential_5/lstm_17/while/lstm_cell_176/BiasAddBiasAdd0sequential_5/lstm_17/while/lstm_cell_176/add:z:0Gsequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(z
8sequential_5/lstm_17/while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_5/lstm_17/while/lstm_cell_176/splitSplitAsequential_5/lstm_17/while/lstm_cell_176/split/split_dim:output:09sequential_5/lstm_17/while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitІ
0sequential_5/lstm_17/while/lstm_cell_176/SigmoidSigmoid7sequential_5/lstm_17/while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
2sequential_5/lstm_17/while/lstm_cell_176/Sigmoid_1Sigmoid7sequential_5/lstm_17/while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ч
,sequential_5/lstm_17/while/lstm_cell_176/mulMul6sequential_5/lstm_17/while/lstm_cell_176/Sigmoid_1:y:0(sequential_5_lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
 
-sequential_5/lstm_17/while/lstm_cell_176/ReluRelu7sequential_5/lstm_17/while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
к
.sequential_5/lstm_17/while/lstm_cell_176/mul_1Mul4sequential_5/lstm_17/while/lstm_cell_176/Sigmoid:y:0;sequential_5/lstm_17/while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Я
.sequential_5/lstm_17/while/lstm_cell_176/add_1AddV20sequential_5/lstm_17/while/lstm_cell_176/mul:z:02sequential_5/lstm_17/while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
2sequential_5/lstm_17/while/lstm_cell_176/Sigmoid_2Sigmoid7sequential_5/lstm_17/while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

/sequential_5/lstm_17/while/lstm_cell_176/Relu_1Relu2sequential_5/lstm_17/while/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
о
.sequential_5/lstm_17/while/lstm_cell_176/mul_2Mul6sequential_5/lstm_17/while/lstm_cell_176/Sigmoid_2:y:0=sequential_5/lstm_17/while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

?sequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_17_while_placeholder_1&sequential_5_lstm_17_while_placeholder2sequential_5/lstm_17/while/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвb
 sequential_5/lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_5/lstm_17/while/addAddV2&sequential_5_lstm_17_while_placeholder)sequential_5/lstm_17/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 sequential_5/lstm_17/while/add_1AddV2Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counter+sequential_5/lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
#sequential_5/lstm_17/while/IdentityIdentity$sequential_5/lstm_17/while/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: О
%sequential_5/lstm_17/while/Identity_1IdentityHsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 
%sequential_5/lstm_17/while/Identity_2Identity"sequential_5/lstm_17/while/add:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: Х
%sequential_5/lstm_17/while/Identity_3IdentityOsequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: Й
%sequential_5/lstm_17/while/Identity_4Identity2sequential_5/lstm_17/while/lstm_cell_176/mul_2:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Й
%sequential_5/lstm_17/while/Identity_5Identity2sequential_5/lstm_17/while/lstm_cell_176/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
sequential_5/lstm_17/while/NoOpNoOp@^sequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp?^sequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpA^sequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_17_while_identity,sequential_5/lstm_17/while/Identity:output:0"W
%sequential_5_lstm_17_while_identity_1.sequential_5/lstm_17/while/Identity_1:output:0"W
%sequential_5_lstm_17_while_identity_2.sequential_5/lstm_17/while/Identity_2:output:0"W
%sequential_5_lstm_17_while_identity_3.sequential_5/lstm_17/while/Identity_3:output:0"W
%sequential_5_lstm_17_while_identity_4.sequential_5/lstm_17/while/Identity_4:output:0"W
%sequential_5_lstm_17_while_identity_5.sequential_5/lstm_17/while/Identity_5:output:0"
Hsequential_5_lstm_17_while_lstm_cell_176_biasadd_readvariableop_resourceJsequential_5_lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0"
Isequential_5_lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resourceKsequential_5_lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0"
Gsequential_5_lstm_17_while_lstm_cell_176_matmul_readvariableop_resourceIsequential_5_lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0"
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0"ќ
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2
?sequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp?sequential_5/lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2
>sequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp>sequential_5/lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp2
@sequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp@sequential_5/lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
#
ё
while_body_1064952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_174_1064976_0:	0
while_lstm_cell_174_1064978_0:	d,
while_lstm_cell_174_1064980_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_174_1064976:	.
while_lstm_cell_174_1064978:	d*
while_lstm_cell_174_1064980:	Ђ+while/lstm_cell_174/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0М
+while/lstm_cell_174/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_174_1064976_0while_lstm_cell_174_1064978_0while_lstm_cell_174_1064980_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1064938н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_174/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_174/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity4while/lstm_cell_174/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz

while/NoOpNoOp,^while/lstm_cell_174/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_174_1064976while_lstm_cell_174_1064976_0"<
while_lstm_cell_174_1064978while_lstm_cell_174_1064978_0"<
while_lstm_cell_174_1064980while_lstm_cell_174_1064980_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2Z
+while/lstm_cell_174/StatefulPartitionedCall+while/lstm_cell_174/StatefulPartitionedCall: 
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
К
Ш
while_cond_1068141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068141___redundant_placeholder05
1while_while_cond_1068141___redundant_placeholder15
1while_while_cond_1068141___redundant_placeholder25
1while_while_cond_1068141___redundant_placeholder3
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
Ф8
д
while_body_1069374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_1065142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1065142___redundant_placeholder05
1while_while_cond_1065142___redundant_placeholder15
1while_while_cond_1065142___redundant_placeholder25
1while_while_cond_1065142___redundant_placeholder3
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
і
Г
)__inference_lstm_17_layer_call_fn_1069315

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_1066586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
К
Ш
while_cond_1068284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068284___redundant_placeholder05
1while_while_cond_1068284___redundant_placeholder15
1while_while_cond_1068284___redundant_placeholder25
1while_while_cond_1068284___redundant_placeholder3
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
B
к

lstm_15_while_body_1067244,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0:	Q
>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dL
=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0:	
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorM
:lstm_15_while_lstm_cell_174_matmul_readvariableop_resource:	O
<lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource:	dJ
;lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpЂ1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpЂ3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0д
"lstm_15/while/lstm_cell_174/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Л
$lstm_15/while/lstm_cell_174/MatMul_1MatMullstm_15_while_placeholder_2;lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_15/while/lstm_cell_174/addAddV2,lstm_15/while/lstm_cell_174/MatMul:product:0.lstm_15/while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_15/while/lstm_cell_174/BiasAddBiasAdd#lstm_15/while/lstm_cell_174/add:z:0:lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_15/while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_15/while/lstm_cell_174/splitSplit4lstm_15/while/lstm_cell_174/split/split_dim:output:0,lstm_15/while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_15/while/lstm_cell_174/SigmoidSigmoid*lstm_15/while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_15/while/lstm_cell_174/Sigmoid_1Sigmoid*lstm_15/while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd 
lstm_15/while/lstm_cell_174/mulMul)lstm_15/while/lstm_cell_174/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_15/while/lstm_cell_174/ReluRelu*lstm_15/while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_15/while/lstm_cell_174/mul_1Mul'lstm_15/while/lstm_cell_174/Sigmoid:y:0.lstm_15/while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_15/while/lstm_cell_174/add_1AddV2#lstm_15/while/lstm_cell_174/mul:z:0%lstm_15/while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_15/while/lstm_cell_174/Sigmoid_2Sigmoid*lstm_15/while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_15/while/lstm_cell_174/Relu_1Relu%lstm_15/while/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_15/while/lstm_cell_174/mul_2Mul)lstm_15/while/lstm_cell_174/Sigmoid_2:y:00lstm_15/while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdц
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1lstm_15_while_placeholder%lstm_15/while/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations^lstm_15/while/NoOp*
T0*
_output_shapes
: q
lstm_15/while/Identity_2Identitylstm_15/while/add:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_15/while/NoOp*
T0*
_output_shapes
: 
lstm_15/while/Identity_4Identity%lstm_15/while/lstm_cell_174/mul_2:z:0^lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_15/while/Identity_5Identity%lstm_15/while/lstm_cell_174/add_1:z:0^lstm_15/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdѓ
lstm_15/while/NoOpNoOp3^lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2^lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp4^lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"|
;lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource=lstm_15_while_lstm_cell_174_biasadd_readvariableop_resource_0"~
<lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource>lstm_15_while_lstm_cell_174_matmul_1_readvariableop_resource_0"z
:lstm_15_while_lstm_cell_174_matmul_readvariableop_resource<lstm_15_while_lstm_cell_174_matmul_readvariableop_resource_0"Ш
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2lstm_15/while/lstm_cell_174/BiasAdd/ReadVariableOp2f
1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp1lstm_15/while/lstm_cell_174/MatMul/ReadVariableOp2j
3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp3lstm_15/while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
П


%__inference_signature_wrapper_1067131
lstm_15_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1064871o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input

Ж
)__inference_lstm_16_layer_call_fn_1068688

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066220s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
К
Ш
while_cond_1068900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068900___redundant_placeholder05
1while_while_cond_1068900___redundant_placeholder15
1while_while_cond_1068900___redundant_placeholder25
1while_while_cond_1068900___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_1066831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1066831___redundant_placeholder05
1while_while_cond_1066831___redundant_placeholder15
1while_while_cond_1066831___redundant_placeholder25
1while_while_cond_1066831___redundant_placeholder3
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


ш
lstm_15_while_cond_1067670,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1E
Alstm_15_while_lstm_15_while_cond_1067670___redundant_placeholder0E
Alstm_15_while_lstm_15_while_cond_1067670___redundant_placeholder1E
Alstm_15_while_lstm_15_while_cond_1067670___redundant_placeholder2E
Alstm_15_while_lstm_15_while_cond_1067670___redundant_placeholder3
lstm_15_while_identity

lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: [
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
я

Ё
.__inference_sequential_5_layer_call_fn_1067036
lstm_15_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_15_input

Ж
)__inference_lstm_15_layer_call_fn_1068083

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1066916s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
№Ѓ
к
#__inference__traced_restore_1070473
file_prefix1
assignvariableop_dense_5_kernel:
-
assignvariableop_1_dense_5_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_15_lstm_cell_15_kernel:	K
8assignvariableop_8_lstm_15_lstm_cell_15_recurrent_kernel:	d;
,assignvariableop_9_lstm_15_lstm_cell_15_bias:	B
/assignvariableop_10_lstm_16_lstm_cell_16_kernel:	dШL
9assignvariableop_11_lstm_16_lstm_cell_16_recurrent_kernel:	2Ш<
-assignvariableop_12_lstm_16_lstm_cell_16_bias:	ШA
/assignvariableop_13_lstm_17_lstm_cell_17_kernel:2(K
9assignvariableop_14_lstm_17_lstm_cell_17_recurrent_kernel:
(;
-assignvariableop_15_lstm_17_lstm_cell_17_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: ;
)assignvariableop_18_adam_dense_5_kernel_m:
5
'assignvariableop_19_adam_dense_5_bias_m:I
6assignvariableop_20_adam_lstm_15_lstm_cell_15_kernel_m:	S
@assignvariableop_21_adam_lstm_15_lstm_cell_15_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_15_lstm_cell_15_bias_m:	I
6assignvariableop_23_adam_lstm_16_lstm_cell_16_kernel_m:	dШS
@assignvariableop_24_adam_lstm_16_lstm_cell_16_recurrent_kernel_m:	2ШC
4assignvariableop_25_adam_lstm_16_lstm_cell_16_bias_m:	ШH
6assignvariableop_26_adam_lstm_17_lstm_cell_17_kernel_m:2(R
@assignvariableop_27_adam_lstm_17_lstm_cell_17_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_17_lstm_cell_17_bias_m:(;
)assignvariableop_29_adam_dense_5_kernel_v:
5
'assignvariableop_30_adam_dense_5_bias_v:I
6assignvariableop_31_adam_lstm_15_lstm_cell_15_kernel_v:	S
@assignvariableop_32_adam_lstm_15_lstm_cell_15_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_15_lstm_cell_15_bias_v:	I
6assignvariableop_34_adam_lstm_16_lstm_cell_16_kernel_v:	dШS
@assignvariableop_35_adam_lstm_16_lstm_cell_16_recurrent_kernel_v:	2ШC
4assignvariableop_36_adam_lstm_16_lstm_cell_16_bias_v:	ШH
6assignvariableop_37_adam_lstm_17_lstm_cell_17_kernel_v:2(R
@assignvariableop_38_adam_lstm_17_lstm_cell_17_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_17_lstm_cell_17_bias_v:(
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_15_lstm_cell_15_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_15_lstm_cell_15_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_15_lstm_cell_15_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_16_lstm_cell_16_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_16_lstm_cell_16_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_16_lstm_cell_16_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_17_lstm_cell_17_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_17_lstm_cell_17_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_17_lstm_cell_17_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_5_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_5_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_15_lstm_cell_15_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_15_lstm_cell_15_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_15_lstm_cell_15_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_16_lstm_cell_16_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_16_lstm_cell_16_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_16_lstm_cell_16_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_17_lstm_cell_17_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_17_lstm_cell_17_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_17_lstm_cell_17_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_5_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_5_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_15_lstm_cell_15_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_15_lstm_cell_15_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_15_lstm_cell_15_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_16_lstm_cell_16_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_16_lstm_cell_16_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_16_lstm_cell_16_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_17_lstm_cell_17_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_17_lstm_cell_17_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_17_lstm_cell_17_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 П
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ќ
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
#
ё
while_body_1065302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_175_1065326_0:	dШ0
while_lstm_cell_175_1065328_0:	2Ш,
while_lstm_cell_175_1065330_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_175_1065326:	dШ.
while_lstm_cell_175_1065328:	2Ш*
while_lstm_cell_175_1065330:	ШЂ+while/lstm_cell_175/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0М
+while/lstm_cell_175/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_175_1065326_0while_lstm_cell_175_1065328_0while_lstm_cell_175_1065330_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065288н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_175/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_175/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity4while/lstm_cell_175/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z

while/NoOpNoOp,^while/lstm_cell_175/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_175_1065326while_lstm_cell_175_1065326_0"<
while_lstm_cell_175_1065328while_lstm_cell_175_1065328_0"<
while_lstm_cell_175_1065330while_lstm_cell_175_1065330_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2Z
+while/lstm_cell_175/StatefulPartitionedCall+while/lstm_cell_175/StatefulPartitionedCall: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ъV
у
 __inference__traced_save_1070343
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableopD
@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop8
4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop:
6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableopD
@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop8
4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop:
6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableopD
@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop8
4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopA
=savev2_adam_lstm_15_lstm_cell_15_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_15_lstm_cell_15_bias_m_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopA
=savev2_adam_lstm_15_lstm_cell_15_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_15_lstm_cell_15_bias_v_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ў
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableop@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableop@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop=savev2_adam_lstm_15_lstm_cell_15_kernel_m_read_readvariableopGsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_15_lstm_cell_15_bias_m_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop=savev2_adam_lstm_15_lstm_cell_15_kernel_v_read_readvariableopGsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_15_lstm_cell_15_bias_v_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*г
_input_shapesС
О: :
:: : : : : :	:	d::	dШ:	2Ш:Ш:2(:
(:(: : :
::	:	d::	dШ:	2Ш:Ш:2(:
(:(:
::	:	d::	dШ:	2Ш:Ш:2(:
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
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dШ:%$!

_output_shapes
:	2Ш:!%

_output_shapes	
:Ш:$& 

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
§A
д

lstm_17_while_body_1067522,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0:2(P
>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(K
=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0:(
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorL
:lstm_17_while_lstm_cell_176_matmul_readvariableop_resource:2(N
<lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource:
(I
;lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpЂ1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpЂ3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ю
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0г
"lstm_17/while/lstm_cell_176/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0К
$lstm_17/while/lstm_cell_176/MatMul_1MatMullstm_17_while_placeholder_2;lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_17/while/lstm_cell_176/addAddV2,lstm_17/while/lstm_cell_176/MatMul:product:0.lstm_17/while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_17/while/lstm_cell_176/BiasAddBiasAdd#lstm_17/while/lstm_cell_176/add:z:0:lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_17/while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_17/while/lstm_cell_176/splitSplit4lstm_17/while/lstm_cell_176/split/split_dim:output:0,lstm_17/while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_17/while/lstm_cell_176/SigmoidSigmoid*lstm_17/while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_17/while/lstm_cell_176/Sigmoid_1Sigmoid*lstm_17/while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
 
lstm_17/while/lstm_cell_176/mulMul)lstm_17/while/lstm_cell_176/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_17/while/lstm_cell_176/ReluRelu*lstm_17/while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_17/while/lstm_cell_176/mul_1Mul'lstm_17/while/lstm_cell_176/Sigmoid:y:0.lstm_17/while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_17/while/lstm_cell_176/add_1AddV2#lstm_17/while/lstm_cell_176/mul:z:0%lstm_17/while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_17/while/lstm_cell_176/Sigmoid_2Sigmoid*lstm_17/while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_17/while/lstm_cell_176/Relu_1Relu%lstm_17/while/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_17/while/lstm_cell_176/mul_2Mul)lstm_17/while/lstm_cell_176/Sigmoid_2:y:00lstm_17/while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
ц
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1lstm_17_while_placeholder%lstm_17/while/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: q
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_4Identity%lstm_17/while/lstm_cell_176/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/while/Identity_5Identity%lstm_17/while/lstm_cell_176/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
ѓ
lstm_17/while/NoOpNoOp3^lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2^lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp4^lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"|
;lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0"~
<lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0"z
:lstm_17_while_lstm_cell_176_matmul_readvariableop_resource<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0"Ш
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2f
1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp2j
3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
ГQ
ћ
'sequential_5_lstm_16_while_body_1064642F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3E
Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0
}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_5_lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0:	dШ^
Ksequential_5_lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШY
Jsequential_5_lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш'
#sequential_5_lstm_16_while_identity)
%sequential_5_lstm_16_while_identity_1)
%sequential_5_lstm_16_while_identity_2)
%sequential_5_lstm_16_while_identity_3)
%sequential_5_lstm_16_while_identity_4)
%sequential_5_lstm_16_while_identity_5C
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_5_lstm_16_while_lstm_cell_175_matmul_readvariableop_resource:	dШ\
Isequential_5_lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШW
Hsequential_5_lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ?sequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpЂ>sequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpЂ@sequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp
Lsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
>sequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_16_while_placeholderUsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Щ
>sequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOpIsequential_5_lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0ћ
/sequential_5/lstm_16/while/lstm_cell_175/MatMulMatMulEsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЭ
@sequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOpKsequential_5_lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0т
1sequential_5/lstm_16/while/lstm_cell_175/MatMul_1MatMul(sequential_5_lstm_16_while_placeholder_2Hsequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШр
,sequential_5/lstm_16/while/lstm_cell_175/addAddV29sequential_5/lstm_16/while/lstm_cell_175/MatMul:product:0;sequential_5/lstm_16/while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЧ
?sequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOpJsequential_5_lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0щ
0sequential_5/lstm_16/while/lstm_cell_175/BiasAddBiasAdd0sequential_5/lstm_16/while/lstm_cell_175/add:z:0Gsequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШz
8sequential_5/lstm_16/while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_5/lstm_16/while/lstm_cell_175/splitSplitAsequential_5/lstm_16/while/lstm_cell_175/split/split_dim:output:09sequential_5/lstm_16/while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitІ
0sequential_5/lstm_16/while/lstm_cell_175/SigmoidSigmoid7sequential_5/lstm_16/while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
2sequential_5/lstm_16/while/lstm_cell_175/Sigmoid_1Sigmoid7sequential_5/lstm_16/while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
,sequential_5/lstm_16/while/lstm_cell_175/mulMul6sequential_5/lstm_16/while/lstm_cell_175/Sigmoid_1:y:0(sequential_5_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2 
-sequential_5/lstm_16/while/lstm_cell_175/ReluRelu7sequential_5/lstm_16/while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2к
.sequential_5/lstm_16/while/lstm_cell_175/mul_1Mul4sequential_5/lstm_16/while/lstm_cell_175/Sigmoid:y:0;sequential_5/lstm_16/while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Я
.sequential_5/lstm_16/while/lstm_cell_175/add_1AddV20sequential_5/lstm_16/while/lstm_cell_175/mul:z:02sequential_5/lstm_16/while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
2sequential_5/lstm_16/while/lstm_cell_175/Sigmoid_2Sigmoid7sequential_5/lstm_16/while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
/sequential_5/lstm_16/while/lstm_cell_175/Relu_1Relu2sequential_5/lstm_16/while/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2о
.sequential_5/lstm_16/while/lstm_cell_175/mul_2Mul6sequential_5/lstm_16/while/lstm_cell_175/Sigmoid_2:y:0=sequential_5/lstm_16/while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
?sequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_16_while_placeholder_1&sequential_5_lstm_16_while_placeholder2sequential_5/lstm_16/while/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвb
 sequential_5/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_5/lstm_16/while/addAddV2&sequential_5_lstm_16_while_placeholder)sequential_5/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 sequential_5/lstm_16/while/add_1AddV2Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counter+sequential_5/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 
#sequential_5/lstm_16/while/IdentityIdentity$sequential_5/lstm_16/while/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: О
%sequential_5/lstm_16/while/Identity_1IdentityHsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 
%sequential_5/lstm_16/while/Identity_2Identity"sequential_5/lstm_16/while/add:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: Х
%sequential_5/lstm_16/while/Identity_3IdentityOsequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: Й
%sequential_5/lstm_16/while/Identity_4Identity2sequential_5/lstm_16/while/lstm_cell_175/mul_2:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Й
%sequential_5/lstm_16/while/Identity_5Identity2sequential_5/lstm_16/while/lstm_cell_175/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ї
sequential_5/lstm_16/while/NoOpNoOp@^sequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp?^sequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpA^sequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_16_while_identity,sequential_5/lstm_16/while/Identity:output:0"W
%sequential_5_lstm_16_while_identity_1.sequential_5/lstm_16/while/Identity_1:output:0"W
%sequential_5_lstm_16_while_identity_2.sequential_5/lstm_16/while/Identity_2:output:0"W
%sequential_5_lstm_16_while_identity_3.sequential_5/lstm_16/while/Identity_3:output:0"W
%sequential_5_lstm_16_while_identity_4.sequential_5/lstm_16/while/Identity_4:output:0"W
%sequential_5_lstm_16_while_identity_5.sequential_5/lstm_16/while/Identity_5:output:0"
Hsequential_5_lstm_16_while_lstm_cell_175_biasadd_readvariableop_resourceJsequential_5_lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0"
Isequential_5_lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resourceKsequential_5_lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0"
Gsequential_5_lstm_16_while_lstm_cell_175_matmul_readvariableop_resourceIsequential_5_lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0"
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0"ќ
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2
?sequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp?sequential_5/lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2
>sequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp>sequential_5/lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp2
@sequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp@sequential_5/lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
B
к

lstm_16_while_body_1067383,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0:	dШQ
>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШL
=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorM
:lstm_16_while_lstm_cell_175_matmul_readvariableop_resource:	dШO
<lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШJ
;lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpЂ1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpЂ3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ю
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0д
"lstm_16/while/lstm_cell_175/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Л
$lstm_16/while/lstm_cell_175/MatMul_1MatMullstm_16_while_placeholder_2;lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_16/while/lstm_cell_175/addAddV2,lstm_16/while/lstm_cell_175/MatMul:product:0.lstm_16/while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_16/while/lstm_cell_175/BiasAddBiasAdd#lstm_16/while/lstm_cell_175/add:z:0:lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_16/while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_16/while/lstm_cell_175/splitSplit4lstm_16/while/lstm_cell_175/split/split_dim:output:0,lstm_16/while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_16/while/lstm_cell_175/SigmoidSigmoid*lstm_16/while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_16/while/lstm_cell_175/Sigmoid_1Sigmoid*lstm_16/while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_16/while/lstm_cell_175/mulMul)lstm_16/while/lstm_cell_175/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_16/while/lstm_cell_175/ReluRelu*lstm_16/while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_16/while/lstm_cell_175/mul_1Mul'lstm_16/while/lstm_cell_175/Sigmoid:y:0.lstm_16/while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_16/while/lstm_cell_175/add_1AddV2#lstm_16/while/lstm_cell_175/mul:z:0%lstm_16/while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_16/while/lstm_cell_175/Sigmoid_2Sigmoid*lstm_16/while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_16/while/lstm_cell_175/Relu_1Relu%lstm_16/while/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_16/while/lstm_cell_175/mul_2Mul)lstm_16/while/lstm_cell_175/Sigmoid_2:y:00lstm_16/while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2ц
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder%lstm_16/while/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity%lstm_16/while/lstm_cell_175/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_16/while/Identity_5Identity%lstm_16/while/lstm_cell_175/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2ѓ
lstm_16/while/NoOpNoOp3^lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2^lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp4^lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"|
;lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource=lstm_16_while_lstm_cell_175_biasadd_readvariableop_resource_0"~
<lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource>lstm_16_while_lstm_cell_175_matmul_1_readvariableop_resource_0"z
:lstm_16_while_lstm_cell_175_matmul_readvariableop_resource<lstm_16_while_lstm_cell_175_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2lstm_16/while/lstm_cell_175/BiasAdd/ReadVariableOp2f
1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp1lstm_16/while/lstm_cell_175/MatMul/ReadVariableOp2j
3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp3lstm_16/while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ћ
И
)__inference_lstm_15_layer_call_fn_1068050
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_15_layer_call_and_return_conditional_losses_1065021|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
б8
к
while_body_1068571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
з

J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1065288

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
#
ы
while_body_1065843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_176_1065867_0:2(/
while_lstm_cell_176_1065869_0:
(+
while_lstm_cell_176_1065871_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_176_1065867:2(-
while_lstm_cell_176_1065869:
()
while_lstm_cell_176_1065871:(Ђ+while/lstm_cell_176/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0М
+while/lstm_cell_176/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176_1065867_0while_lstm_cell_176_1065869_0while_lstm_cell_176_1065871_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065784н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_176/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_176/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity4while/lstm_cell_176/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z

while/NoOpNoOp,^while/lstm_cell_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_176_1065867while_lstm_cell_176_1065867_0"<
while_lstm_cell_176_1065869while_lstm_cell_176_1065869_0"<
while_lstm_cell_176_1065871while_lstm_cell_176_1065871_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2Z
+while/lstm_cell_176/StatefulPartitionedCall+while/lstm_cell_176/StatefulPartitionedCall: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
б8
к
while_body_1068901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_175_matmul_readvariableop_resource_0:	dШI
6while_lstm_cell_175_matmul_1_readvariableop_resource_0:	2ШD
5while_lstm_cell_175_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_175_matmul_readvariableop_resource:	dШG
4while_lstm_cell_175_matmul_1_readvariableop_resource:	2ШB
3while_lstm_cell_175_biasadd_readvariableop_resource:	ШЂ*while/lstm_cell_175/BiasAdd/ReadVariableOpЂ)while/lstm_cell_175/MatMul/ReadVariableOpЂ+while/lstm_cell_175/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
)while/lstm_cell_175/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_175_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0М
while/lstm_cell_175/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_175/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
+while/lstm_cell_175/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_175_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ѓ
while/lstm_cell_175/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_175/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
while/lstm_cell_175/addAddV2$while/lstm_cell_175/MatMul:product:0&while/lstm_cell_175/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*while/lstm_cell_175/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_175_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Њ
while/lstm_cell_175/BiasAddBiasAddwhile/lstm_cell_175/add:z:02while/lstm_cell_175/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#while/lstm_cell_175/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_175/splitSplit,while/lstm_cell_175/split/split_dim:output:0$while/lstm_cell_175/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
while/lstm_cell_175/SigmoidSigmoid"while/lstm_cell_175/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_1Sigmoid"while/lstm_cell_175/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mulMul!while/lstm_cell_175/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2v
while/lstm_cell_175/ReluRelu"while/lstm_cell_175/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_1Mulwhile/lstm_cell_175/Sigmoid:y:0&while/lstm_cell_175/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/add_1AddV2while/lstm_cell_175/mul:z:0while/lstm_cell_175/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
while/lstm_cell_175/Sigmoid_2Sigmoid"while/lstm_cell_175/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/lstm_cell_175/Relu_1Reluwhile/lstm_cell_175/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_175/mul_2Mul!while/lstm_cell_175/Sigmoid_2:y:0(while/lstm_cell_175/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_175/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_175/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/Identity_5Identitywhile/lstm_cell_175/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2г

while/NoOpNoOp+^while/lstm_cell_175/BiasAdd/ReadVariableOp*^while/lstm_cell_175/MatMul/ReadVariableOp,^while/lstm_cell_175/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_175_biasadd_readvariableop_resource5while_lstm_cell_175_biasadd_readvariableop_resource_0"n
4while_lstm_cell_175_matmul_1_readvariableop_resource6while_lstm_cell_175_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_175_matmul_readvariableop_resource4while_lstm_cell_175_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_175/BiasAdd/ReadVariableOp*while/lstm_cell_175/BiasAdd/ReadVariableOp2V
)while/lstm_cell_175/MatMul/ReadVariableOp)while/lstm_cell_175/MatMul/ReadVariableOp2Z
+while/lstm_cell_175/MatMul_1/ReadVariableOp+while/lstm_cell_175/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ф8
д
while_body_1069660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_176_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_176_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_176_matmul_readvariableop_resource:2(F
4while_lstm_cell_176_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ*while/lstm_cell_176/BiasAdd/ReadVariableOpЂ)while/lstm_cell_176/MatMul/ReadVariableOpЂ+while/lstm_cell_176/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
)while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Л
while/lstm_cell_176/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ђ
+while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ђ
while/lstm_cell_176/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
while/lstm_cell_176/addAddV2$while/lstm_cell_176/MatMul:product:0&while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
*while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Љ
while/lstm_cell_176/BiasAddBiasAddwhile/lstm_cell_176/add:z:02while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(e
#while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_176/splitSplit,while/lstm_cell_176/split/split_dim:output:0$while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split|
while/lstm_cell_176/SigmoidSigmoid"while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_1Sigmoid"while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mulMul!while/lstm_cell_176/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
v
while/lstm_cell_176/ReluRelu"while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_1Mulwhile/lstm_cell_176/Sigmoid:y:0&while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/add_1AddV2while/lstm_cell_176/mul:z:0while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
while/lstm_cell_176/Sigmoid_2Sigmoid"while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
s
while/lstm_cell_176/Relu_1Reluwhile/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_176/mul_2Mul!while/lstm_cell_176/Sigmoid_2:y:0(while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_176/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z
while/Identity_5Identitywhile/lstm_cell_176/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
г

while/NoOpNoOp+^while/lstm_cell_176/BiasAdd/ReadVariableOp*^while/lstm_cell_176/MatMul/ReadVariableOp,^while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_176_biasadd_readvariableop_resource5while_lstm_cell_176_biasadd_readvariableop_resource_0"n
4while_lstm_cell_176_matmul_1_readvariableop_resource6while_lstm_cell_176_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_176_matmul_readvariableop_resource4while_lstm_cell_176_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_176/BiasAdd/ReadVariableOp*while/lstm_cell_176/BiasAdd/ReadVariableOp2V
)while/lstm_cell_176/MatMul/ReadVariableOp)while/lstm_cell_176/MatMul/ReadVariableOp2Z
+while/lstm_cell_176/MatMul_1/ReadVariableOp+while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
мJ

D__inference_lstm_17_layer_call_and_return_conditional_losses_1069744

inputs>
,lstm_cell_176_matmul_readvariableop_resource:2(@
.lstm_cell_176_matmul_1_readvariableop_resource:
(;
-lstm_cell_176_biasadd_readvariableop_resource:(
identityЂ$lstm_cell_176/BiasAdd/ReadVariableOpЂ#lstm_cell_176/MatMul/ReadVariableOpЂ%lstm_cell_176/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
#lstm_cell_176/MatMul/ReadVariableOpReadVariableOp,lstm_cell_176_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_176/MatMulMatMulstrided_slice_2:output:0+lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_176_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_176/MatMul_1MatMulzeros:output:0-lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_176/addAddV2lstm_cell_176/MatMul:product:0 lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_176_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_176/BiasAddBiasAddlstm_cell_176/add:z:0,lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(_
lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_176/splitSplit&lstm_cell_176/split/split_dim:output:0lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitp
lstm_cell_176/SigmoidSigmoidlstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_1Sigmoidlstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
y
lstm_cell_176/mulMullstm_cell_176/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell_176/ReluRelulstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_1Mullstm_cell_176/Sigmoid:y:0 lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
~
lstm_cell_176/add_1AddV2lstm_cell_176/mul:z:0lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell_176/Sigmoid_2Sigmoidlstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
g
lstm_cell_176/Relu_1Relulstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_176/mul_2Mullstm_cell_176/Sigmoid_2:y:0"lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_176_matmul_readvariableop_resource.lstm_cell_176_matmul_1_readvariableop_resource-lstm_cell_176_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1069660*
condR
while_cond_1069659*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
У
NoOpNoOp%^lstm_cell_176/BiasAdd/ReadVariableOp$^lstm_cell_176/MatMul/ReadVariableOp&^lstm_cell_176/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2L
$lstm_cell_176/BiasAdd/ReadVariableOp$lstm_cell_176/BiasAdd/ReadVariableOp2J
#lstm_cell_176/MatMul/ReadVariableOp#lstm_cell_176/MatMul/ReadVariableOp2N
%lstm_cell_176/MatMul_1/ReadVariableOp%lstm_cell_176/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
К
Ш
while_cond_1069802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069802___redundant_placeholder05
1while_while_cond_1069802___redundant_placeholder15
1while_while_cond_1069802___redundant_placeholder25
1while_while_cond_1069802___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Ў8

D__inference_lstm_15_layer_call_and_return_conditional_losses_1065021

inputs(
lstm_cell_174_1064939:	(
lstm_cell_174_1064941:	d$
lstm_cell_174_1064943:	
identityЂ%lstm_cell_174/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskў
%lstm_cell_174/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_174_1064939lstm_cell_174_1064941lstm_cell_174_1064943*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1064938n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_174_1064939lstm_cell_174_1064941lstm_cell_174_1064943*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1064952*
condR
while_cond_1064951*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdv
NoOpNoOp&^lstm_cell_174/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2N
%lstm_cell_174/StatefulPartitionedCall%lstm_cell_174/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1066501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1066501___redundant_placeholder05
1while_while_cond_1066501___redundant_placeholder15
1while_while_cond_1066501___redundant_placeholder25
1while_while_cond_1066501___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
б8
к
while_body_1068285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_174_matmul_readvariableop_resource_0:	I
6while_lstm_cell_174_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_174_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_174_matmul_readvariableop_resource:	G
4while_lstm_cell_174_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_174_biasadd_readvariableop_resource:	Ђ*while/lstm_cell_174/BiasAdd/ReadVariableOpЂ)while/lstm_cell_174/MatMul/ReadVariableOpЂ+while/lstm_cell_174/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
)while/lstm_cell_174/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_174_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0М
while/lstm_cell_174/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
+while/lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_174_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ѓ
while/lstm_cell_174/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
while/lstm_cell_174/addAddV2$while/lstm_cell_174/MatMul:product:0&while/lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
*while/lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_174_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Њ
while/lstm_cell_174/BiasAddBiasAddwhile/lstm_cell_174/add:z:02while/lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
#while/lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
while/lstm_cell_174/splitSplit,while/lstm_cell_174/split/split_dim:output:0$while/lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split|
while/lstm_cell_174/SigmoidSigmoid"while/lstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_1Sigmoid"while/lstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mulMul!while/lstm_cell_174/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdv
while/lstm_cell_174/ReluRelu"while/lstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_1Mulwhile/lstm_cell_174/Sigmoid:y:0&while/lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/add_1AddV2while/lstm_cell_174/mul:z:0while/lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd~
while/lstm_cell_174/Sigmoid_2Sigmoid"while/lstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџds
while/lstm_cell_174/Relu_1Reluwhile/lstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_174/mul_2Mul!while/lstm_cell_174/Sigmoid_2:y:0(while/lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЦ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_174/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_174/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdz
while/Identity_5Identitywhile/lstm_cell_174/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdг

while/NoOpNoOp+^while/lstm_cell_174/BiasAdd/ReadVariableOp*^while/lstm_cell_174/MatMul/ReadVariableOp,^while/lstm_cell_174/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_174_biasadd_readvariableop_resource5while_lstm_cell_174_biasadd_readvariableop_resource_0"n
4while_lstm_cell_174_matmul_1_readvariableop_resource6while_lstm_cell_174_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_174_matmul_readvariableop_resource4while_lstm_cell_174_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_174/BiasAdd/ReadVariableOp*while/lstm_cell_174/BiasAdd/ReadVariableOp2V
)while/lstm_cell_174/MatMul/ReadVariableOp)while/lstm_cell_174/MatMul/ReadVariableOp2Z
+while/lstm_cell_174/MatMul_1/ReadVariableOp+while/lstm_cell_174/MatMul_1/ReadVariableOp: 
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
§A
д

lstm_17_while_body_1067949,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0:2(P
>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0:
(K
=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0:(
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorL
:lstm_17_while_lstm_cell_176_matmul_readvariableop_resource:2(N
<lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource:
(I
;lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource:(Ђ2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpЂ1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpЂ3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ю
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0г
"lstm_17/while/lstm_cell_176/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOpReadVariableOp>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0К
$lstm_17/while/lstm_cell_176/MatMul_1MatMullstm_17_while_placeholder_2;lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_17/while/lstm_cell_176/addAddV2,lstm_17/while/lstm_cell_176/MatMul:product:0.lstm_17/while/lstm_cell_176/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_17/while/lstm_cell_176/BiasAddBiasAdd#lstm_17/while/lstm_cell_176/add:z:0:lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_17/while/lstm_cell_176/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_17/while/lstm_cell_176/splitSplit4lstm_17/while/lstm_cell_176/split/split_dim:output:0,lstm_17/while/lstm_cell_176/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_17/while/lstm_cell_176/SigmoidSigmoid*lstm_17/while/lstm_cell_176/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_17/while/lstm_cell_176/Sigmoid_1Sigmoid*lstm_17/while/lstm_cell_176/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
 
lstm_17/while/lstm_cell_176/mulMul)lstm_17/while/lstm_cell_176/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_17/while/lstm_cell_176/ReluRelu*lstm_17/while/lstm_cell_176/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_17/while/lstm_cell_176/mul_1Mul'lstm_17/while/lstm_cell_176/Sigmoid:y:0.lstm_17/while/lstm_cell_176/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_17/while/lstm_cell_176/add_1AddV2#lstm_17/while/lstm_cell_176/mul:z:0%lstm_17/while/lstm_cell_176/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_17/while/lstm_cell_176/Sigmoid_2Sigmoid*lstm_17/while/lstm_cell_176/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_17/while/lstm_cell_176/Relu_1Relu%lstm_17/while/lstm_cell_176/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_17/while/lstm_cell_176/mul_2Mul)lstm_17/while/lstm_cell_176/Sigmoid_2:y:00lstm_17/while/lstm_cell_176/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
ц
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1lstm_17_while_placeholder%lstm_17/while/lstm_cell_176/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: q
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_4Identity%lstm_17/while/lstm_cell_176/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_17/while/Identity_5Identity%lstm_17/while/lstm_cell_176/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
ѓ
lstm_17/while/NoOpNoOp3^lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2^lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp4^lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"|
;lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource=lstm_17_while_lstm_cell_176_biasadd_readvariableop_resource_0"~
<lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource>lstm_17_while_lstm_cell_176_matmul_1_readvariableop_resource_0"z
:lstm_17_while_lstm_cell_176_matmul_readvariableop_resource<lstm_17_while_lstm_cell_176_matmul_readvariableop_resource_0"Ш
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2lstm_17/while/lstm_cell_176/BiasAdd/ReadVariableOp2f
1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp1lstm_17/while/lstm_cell_176/MatMul/ReadVariableOp2j
3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp3lstm_17/while/lstm_cell_176/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 

Ж
)__inference_lstm_16_layer_call_fn_1068699

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_1066751s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Э

J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065638

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
К
Ш
while_cond_1068757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1068757___redundant_placeholder05
1while_while_cond_1068757___redundant_placeholder15
1while_while_cond_1068757___redundant_placeholder25
1while_while_cond_1068757___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
#
ы
while_body_1065652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_176_1065676_0:2(/
while_lstm_cell_176_1065678_0:
(+
while_lstm_cell_176_1065680_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_176_1065676:2(-
while_lstm_cell_176_1065678:
()
while_lstm_cell_176_1065680:(Ђ+while/lstm_cell_176/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0М
+while/lstm_cell_176/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176_1065676_0while_lstm_cell_176_1065678_0while_lstm_cell_176_1065680_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1065638н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_176/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_176/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity4while/lstm_cell_176/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
z

while/NoOpNoOp,^while/lstm_cell_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_176_1065676while_lstm_cell_176_1065676_0"<
while_lstm_cell_176_1065678while_lstm_cell_176_1065678_0"<
while_lstm_cell_176_1065680while_lstm_cell_176_1065680_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2Z
+while/lstm_cell_176/StatefulPartitionedCall+while/lstm_cell_176/StatefulPartitionedCall: 
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
к


.__inference_sequential_5_layer_call_fn_1067158

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1066395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1066135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1066135___redundant_placeholder05
1while_while_cond_1066135___redundant_placeholder15
1while_while_cond_1066135___redundant_placeholder25
1while_while_cond_1066135___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
K
Є
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068369
inputs_0?
,lstm_cell_174_matmul_readvariableop_resource:	A
.lstm_cell_174_matmul_1_readvariableop_resource:	d<
-lstm_cell_174_biasadd_readvariableop_resource:	
identityЂ$lstm_cell_174/BiasAdd/ReadVariableOpЂ#lstm_cell_174/MatMul/ReadVariableOpЂ%lstm_cell_174/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
#lstm_cell_174/MatMul/ReadVariableOpReadVariableOp,lstm_cell_174_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_174/MatMulMatMulstrided_slice_2:output:0+lstm_cell_174/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm_cell_174/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_174_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_174/MatMul_1MatMulzeros:output:0-lstm_cell_174/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_174/addAddV2lstm_cell_174/MatMul:product:0 lstm_cell_174/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_174/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_174_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_174/BiasAddBiasAddlstm_cell_174/add:z:0,lstm_cell_174/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ_
lstm_cell_174/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
lstm_cell_174/splitSplit&lstm_cell_174/split/split_dim:output:0lstm_cell_174/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitp
lstm_cell_174/SigmoidSigmoidlstm_cell_174/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_1Sigmoidlstm_cell_174/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdy
lstm_cell_174/mulMullstm_cell_174/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
lstm_cell_174/ReluRelulstm_cell_174/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_1Mullstm_cell_174/Sigmoid:y:0 lstm_cell_174/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd~
lstm_cell_174/add_1AddV2lstm_cell_174/mul:z:0lstm_cell_174/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdr
lstm_cell_174/Sigmoid_2Sigmoidlstm_cell_174/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdg
lstm_cell_174/Relu_1Relulstm_cell_174/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_174/mul_2Mullstm_cell_174/Sigmoid_2:y:0"lstm_cell_174/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_174_matmul_readvariableop_resource.lstm_cell_174_matmul_1_readvariableop_resource-lstm_cell_174_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1068285*
condR
while_cond_1068284*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdУ
NoOpNoOp%^lstm_cell_174/BiasAdd/ReadVariableOp$^lstm_cell_174/MatMul/ReadVariableOp&^lstm_cell_174/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_174/BiasAdd/ReadVariableOp$lstm_cell_174/BiasAdd/ReadVariableOp2J
#lstm_cell_174/MatMul/ReadVariableOp#lstm_cell_174/MatMul/ReadVariableOp2N
%lstm_cell_174/MatMul_1/ReadVariableOp%lstm_cell_174/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
п

J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1069972

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
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
К
Ш
while_cond_1069186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069186___redundant_placeholder05
1while_while_cond_1069186___redundant_placeholder15
1while_while_cond_1069186___redundant_placeholder25
1while_while_cond_1069186___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К
serving_defaultІ
K
lstm_15_input:
serving_default_lstm_15_input:0џџџџџџџџџ;
dense_50
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ша
Њ
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
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
т

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
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
Ю
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_5/kernel
:2dense_5/bias
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
А
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	2lstm_15/lstm_cell_15/kernel
8:6	d2%lstm_15/lstm_cell_15/recurrent_kernel
(:&2lstm_15/lstm_cell_15/bias
.:,	dШ2lstm_16/lstm_cell_16/kernel
8:6	2Ш2%lstm_16/lstm_cell_16/recurrent_kernel
(:&Ш2lstm_16/lstm_cell_16/bias
-:+2(2lstm_17/lstm_cell_17/kernel
7:5
(2%lstm_17/lstm_cell_17/recurrent_kernel
':%(2lstm_17/lstm_cell_17/bias
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
А
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
%:#
2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
3:1	2"Adam/lstm_15/lstm_cell_15/kernel/m
=:;	d2,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m
-:+2 Adam/lstm_15/lstm_cell_15/bias/m
3:1	dШ2"Adam/lstm_16/lstm_cell_16/kernel/m
=:;	2Ш2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
-:+Ш2 Adam/lstm_16/lstm_cell_16/bias/m
2:02(2"Adam/lstm_17/lstm_cell_17/kernel/m
<::
(2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
,:*(2 Adam/lstm_17/lstm_cell_17/bias/m
%:#
2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
3:1	2"Adam/lstm_15/lstm_cell_15/kernel/v
=:;	d2,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v
-:+2 Adam/lstm_15/lstm_cell_15/bias/v
3:1	dШ2"Adam/lstm_16/lstm_cell_16/kernel/v
=:;	2Ш2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
-:+Ш2 Adam/lstm_16/lstm_cell_16/bias/v
2:02(2"Adam/lstm_17/lstm_cell_17/kernel/v
<::
(2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
,:*(2 Adam/lstm_17/lstm_cell_17/bias/v
2
.__inference_sequential_5_layer_call_fn_1066420
.__inference_sequential_5_layer_call_fn_1067158
.__inference_sequential_5_layer_call_fn_1067185
.__inference_sequential_5_layer_call_fn_1067036Р
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
ђ2я
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067612
I__inference_sequential_5_layer_call_and_return_conditional_losses_1068039
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067066
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067096Р
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
гBа
"__inference__wrapped_model_1064871lstm_15_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
)__inference_lstm_15_layer_call_fn_1068050
)__inference_lstm_15_layer_call_fn_1068061
)__inference_lstm_15_layer_call_fn_1068072
)__inference_lstm_15_layer_call_fn_1068083е
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
ѓ2№
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068226
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068369
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068512
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068655е
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
2
)__inference_lstm_16_layer_call_fn_1068666
)__inference_lstm_16_layer_call_fn_1068677
)__inference_lstm_16_layer_call_fn_1068688
)__inference_lstm_16_layer_call_fn_1068699е
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
ѓ2№
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068842
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068985
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069128
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069271е
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
2
)__inference_lstm_17_layer_call_fn_1069282
)__inference_lstm_17_layer_call_fn_1069293
)__inference_lstm_17_layer_call_fn_1069304
)__inference_lstm_17_layer_call_fn_1069315е
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
ѓ2№
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069458
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069601
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069744
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069887е
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
)__inference_dense_5_layer_call_fn_1069896Ђ
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
D__inference_dense_5_layer_call_and_return_conditional_losses_1069906Ђ
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
вBЯ
%__inference_signature_wrapper_1067131lstm_15_input"
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
І2Ѓ
/__inference_lstm_cell_174_layer_call_fn_1069923
/__inference_lstm_cell_174_layer_call_fn_1069940О
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
м2й
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1069972
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1070004О
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
І2Ѓ
/__inference_lstm_cell_175_layer_call_fn_1070021
/__inference_lstm_cell_175_layer_call_fn_1070038О
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
м2й
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070070
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070102О
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
І2Ѓ
/__inference_lstm_cell_176_layer_call_fn_1070119
/__inference_lstm_cell_176_layer_call_fn_1070136О
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
м2й
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070168
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070200О
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
 Ђ
"__inference__wrapped_model_1064871|-./012345!":Ђ7
0Ђ-
+(
lstm_15_inputџџџџџџџџџ
Њ "1Њ.
,
dense_5!
dense_5џџџџџџџџџЄ
D__inference_dense_5_layer_call_and_return_conditional_losses_1069906\!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_5_layer_call_fn_1069896O!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџг
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068226-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 г
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068369-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 Й
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068512q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ")Ђ&

0џџџџџџџџџd
 Й
D__inference_lstm_15_layer_call_and_return_conditional_losses_1068655q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ")Ђ&

0џџџџџџџџџd
 Њ
)__inference_lstm_15_layer_call_fn_1068050}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџdЊ
)__inference_lstm_15_layer_call_fn_1068061}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџd
)__inference_lstm_15_layer_call_fn_1068072d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџd
)__inference_lstm_15_layer_call_fn_1068083d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџdг
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068842012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 г
D__inference_lstm_16_layer_call_and_return_conditional_losses_1068985012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 Й
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069128q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ2
 Й
D__inference_lstm_16_layer_call_and_return_conditional_losses_1069271q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ ")Ђ&

0џџџџџџџџџ2
 Њ
)__inference_lstm_16_layer_call_fn_1068666}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ2Њ
)__inference_lstm_16_layer_call_fn_1068677}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ2
)__inference_lstm_16_layer_call_fn_1068688d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџ2
)__inference_lstm_16_layer_call_fn_1068699d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџ2Х
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069458}345OЂL
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
0џџџџџџџџџ

 Х
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069601}345OЂL
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
0џџџџџџџџџ

 Е
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069744m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
D__inference_lstm_17_layer_call_and_return_conditional_losses_1069887m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџ

 
)__inference_lstm_17_layer_call_fn_1069282p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_17_layer_call_fn_1069293p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ

)__inference_lstm_17_layer_call_fn_1069304`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_17_layer_call_fn_1069315`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ
Ь
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1069972§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
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
 Ь
J__inference_lstm_cell_174_layer_call_and_return_conditional_losses_1070004§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
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
 Ё
/__inference_lstm_cell_174_layer_call_fn_1069923э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
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
1/1џџџџџџџџџdЁ
/__inference_lstm_cell_174_layer_call_fn_1069940э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
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
1/1џџџџџџџџџdЬ
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070070§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 Ь
J__inference_lstm_cell_175_layer_call_and_return_conditional_losses_1070102§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 Ё
/__inference_lstm_cell_175_layer_call_fn_1070021э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2Ё
/__inference_lstm_cell_175_layer_call_fn_1070038э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2Ь
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070168§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 Ь
J__inference_lstm_cell_176_layer_call_and_return_conditional_losses_1070200§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 Ё
/__inference_lstm_cell_176_layer_call_fn_1070119э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ
Ё
/__inference_lstm_cell_176_layer_call_fn_1070136э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ
Х
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067066x-./012345!"BЂ?
8Ђ5
+(
lstm_15_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Х
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067096x-./012345!"BЂ?
8Ђ5
+(
lstm_15_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_5_layer_call_and_return_conditional_losses_1067612q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_5_layer_call_and_return_conditional_losses_1068039q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_sequential_5_layer_call_fn_1066420k-./012345!"BЂ?
8Ђ5
+(
lstm_15_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_5_layer_call_fn_1067036k-./012345!"BЂ?
8Ђ5
+(
lstm_15_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_5_layer_call_fn_1067158d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_5_layer_call_fn_1067185d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЗ
%__inference_signature_wrapper_1067131-./012345!"KЂH
Ђ 
AЊ>
<
lstm_15_input+(
lstm_15_inputџџџџџџџџџ"1Њ.
,
dense_5!
dense_5џџџџџџџџџ