Є/
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28и -
|
dense_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_106/kernel
u
$dense_106/kernel/Read/ReadVariableOpReadVariableOpdense_106/kernel*
_output_shapes

:
*
dtype0
t
dense_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_106/bias
m
"dense_106/bias/Read/ReadVariableOpReadVariableOpdense_106/bias*
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

lstm_318/lstm_cell_318/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_318/lstm_cell_318/kernel

1lstm_318/lstm_cell_318/kernel/Read/ReadVariableOpReadVariableOplstm_318/lstm_cell_318/kernel*
_output_shapes
:	*
dtype0
Ћ
'lstm_318/lstm_cell_318/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_318/lstm_cell_318/recurrent_kernel
Є
;lstm_318/lstm_cell_318/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_318/lstm_cell_318/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_318/lstm_cell_318/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_318/lstm_cell_318/bias

/lstm_318/lstm_cell_318/bias/Read/ReadVariableOpReadVariableOplstm_318/lstm_cell_318/bias*
_output_shapes	
:*
dtype0

lstm_319/lstm_cell_319/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*.
shared_namelstm_319/lstm_cell_319/kernel

1lstm_319/lstm_cell_319/kernel/Read/ReadVariableOpReadVariableOplstm_319/lstm_cell_319/kernel*
_output_shapes
:	dШ*
dtype0
Ћ
'lstm_319/lstm_cell_319/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*8
shared_name)'lstm_319/lstm_cell_319/recurrent_kernel
Є
;lstm_319/lstm_cell_319/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_319/lstm_cell_319/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_319/lstm_cell_319/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*,
shared_namelstm_319/lstm_cell_319/bias

/lstm_319/lstm_cell_319/bias/Read/ReadVariableOpReadVariableOplstm_319/lstm_cell_319/bias*
_output_shapes	
:Ш*
dtype0

lstm_320/lstm_cell_320/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_320/lstm_cell_320/kernel

1lstm_320/lstm_cell_320/kernel/Read/ReadVariableOpReadVariableOplstm_320/lstm_cell_320/kernel*
_output_shapes

:2(*
dtype0
Њ
'lstm_320/lstm_cell_320/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_320/lstm_cell_320/recurrent_kernel
Ѓ
;lstm_320/lstm_cell_320/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_320/lstm_cell_320/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_320/lstm_cell_320/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_320/lstm_cell_320/bias

/lstm_320/lstm_cell_320/bias/Read/ReadVariableOpReadVariableOplstm_320/lstm_cell_320/bias*
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

Adam/dense_106/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_106/kernel/m

+Adam/dense_106/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_106/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_106/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_106/bias/m
{
)Adam/dense_106/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_106/bias/m*
_output_shapes
:*
dtype0
Ѕ
$Adam/lstm_318/lstm_cell_318/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_318/lstm_cell_318/kernel/m

8Adam/lstm_318/lstm_cell_318/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_318/lstm_cell_318/kernel/m*
_output_shapes
:	*
dtype0
Й
.Adam/lstm_318/lstm_cell_318/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_318/lstm_cell_318/recurrent_kernel/m
В
BAdam/lstm_318/lstm_cell_318/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_318/lstm_cell_318/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_318/lstm_cell_318/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_318/lstm_cell_318/bias/m

6Adam/lstm_318/lstm_cell_318/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_318/lstm_cell_318/bias/m*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_319/lstm_cell_319/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_319/lstm_cell_319/kernel/m

8Adam/lstm_319/lstm_cell_319/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_319/lstm_cell_319/kernel/m*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_319/lstm_cell_319/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_319/lstm_cell_319/recurrent_kernel/m
В
BAdam/lstm_319/lstm_cell_319/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_319/lstm_cell_319/recurrent_kernel/m*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_319/lstm_cell_319/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_319/lstm_cell_319/bias/m

6Adam/lstm_319/lstm_cell_319/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_319/lstm_cell_319/bias/m*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_320/lstm_cell_320/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_320/lstm_cell_320/kernel/m

8Adam/lstm_320/lstm_cell_320/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_320/lstm_cell_320/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_320/lstm_cell_320/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_320/lstm_cell_320/recurrent_kernel/m
Б
BAdam/lstm_320/lstm_cell_320/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_320/lstm_cell_320/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_320/lstm_cell_320/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_320/lstm_cell_320/bias/m

6Adam/lstm_320/lstm_cell_320/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_320/lstm_cell_320/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_106/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_106/kernel/v

+Adam/dense_106/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_106/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_106/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_106/bias/v
{
)Adam/dense_106/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_106/bias/v*
_output_shapes
:*
dtype0
Ѕ
$Adam/lstm_318/lstm_cell_318/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_318/lstm_cell_318/kernel/v

8Adam/lstm_318/lstm_cell_318/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_318/lstm_cell_318/kernel/v*
_output_shapes
:	*
dtype0
Й
.Adam/lstm_318/lstm_cell_318/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_318/lstm_cell_318/recurrent_kernel/v
В
BAdam/lstm_318/lstm_cell_318/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_318/lstm_cell_318/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_318/lstm_cell_318/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_318/lstm_cell_318/bias/v

6Adam/lstm_318/lstm_cell_318/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_318/lstm_cell_318/bias/v*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_319/lstm_cell_319/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_319/lstm_cell_319/kernel/v

8Adam/lstm_319/lstm_cell_319/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_319/lstm_cell_319/kernel/v*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_319/lstm_cell_319/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_319/lstm_cell_319/recurrent_kernel/v
В
BAdam/lstm_319/lstm_cell_319/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_319/lstm_cell_319/recurrent_kernel/v*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_319/lstm_cell_319/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_319/lstm_cell_319/bias/v

6Adam/lstm_319/lstm_cell_319/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_319/lstm_cell_319/bias/v*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_320/lstm_cell_320/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_320/lstm_cell_320/kernel/v

8Adam/lstm_320/lstm_cell_320/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_320/lstm_cell_320/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_320/lstm_cell_320/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_320/lstm_cell_320/recurrent_kernel/v
Б
BAdam/lstm_320/lstm_cell_320/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_320/lstm_cell_320/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_320/lstm_cell_320/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_320/lstm_cell_320/bias/v

6Adam/lstm_320/lstm_cell_320/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_320/lstm_cell_320/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
хA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* A
valueABA BA
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
\Z
VARIABLE_VALUEdense_106/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_106/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
YW
VARIABLE_VALUElstm_318/lstm_cell_318/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_318/lstm_cell_318/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_318/lstm_cell_318/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_319/lstm_cell_319/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_319/lstm_cell_319/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_319/lstm_cell_319/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_320/lstm_cell_320/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_320/lstm_cell_320/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_320/lstm_cell_320/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_106/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_106/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_318/lstm_cell_318/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_318/lstm_cell_318/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_318/lstm_cell_318/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_319/lstm_cell_319/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_319/lstm_cell_319/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_319/lstm_cell_319/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_320/lstm_cell_320/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_320/lstm_cell_320/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_320/lstm_cell_320/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_106/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_106/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_318/lstm_cell_318/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_318/lstm_cell_318/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_318/lstm_cell_318/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_319/lstm_cell_319/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_319/lstm_cell_319/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_319/lstm_cell_319/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_320/lstm_cell_320/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_320/lstm_cell_320/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_320/lstm_cell_320/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_318_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_318_inputlstm_318/lstm_cell_318/kernel'lstm_318/lstm_cell_318/recurrent_kernellstm_318/lstm_cell_318/biaslstm_319/lstm_cell_319/kernel'lstm_319/lstm_cell_319/recurrent_kernellstm_319/lstm_cell_319/biaslstm_320/lstm_cell_320/kernel'lstm_320/lstm_cell_320/recurrent_kernellstm_320/lstm_cell_320/biasdense_106/kerneldense_106/bias*
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
GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_541804
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_106/kernel/Read/ReadVariableOp"dense_106/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_318/lstm_cell_318/kernel/Read/ReadVariableOp;lstm_318/lstm_cell_318/recurrent_kernel/Read/ReadVariableOp/lstm_318/lstm_cell_318/bias/Read/ReadVariableOp1lstm_319/lstm_cell_319/kernel/Read/ReadVariableOp;lstm_319/lstm_cell_319/recurrent_kernel/Read/ReadVariableOp/lstm_319/lstm_cell_319/bias/Read/ReadVariableOp1lstm_320/lstm_cell_320/kernel/Read/ReadVariableOp;lstm_320/lstm_cell_320/recurrent_kernel/Read/ReadVariableOp/lstm_320/lstm_cell_320/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_106/kernel/m/Read/ReadVariableOp)Adam/dense_106/bias/m/Read/ReadVariableOp8Adam/lstm_318/lstm_cell_318/kernel/m/Read/ReadVariableOpBAdam/lstm_318/lstm_cell_318/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_318/lstm_cell_318/bias/m/Read/ReadVariableOp8Adam/lstm_319/lstm_cell_319/kernel/m/Read/ReadVariableOpBAdam/lstm_319/lstm_cell_319/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_319/lstm_cell_319/bias/m/Read/ReadVariableOp8Adam/lstm_320/lstm_cell_320/kernel/m/Read/ReadVariableOpBAdam/lstm_320/lstm_cell_320/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_320/lstm_cell_320/bias/m/Read/ReadVariableOp+Adam/dense_106/kernel/v/Read/ReadVariableOp)Adam/dense_106/bias/v/Read/ReadVariableOp8Adam/lstm_318/lstm_cell_318/kernel/v/Read/ReadVariableOpBAdam/lstm_318/lstm_cell_318/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_318/lstm_cell_318/bias/v/Read/ReadVariableOp8Adam/lstm_319/lstm_cell_319/kernel/v/Read/ReadVariableOpBAdam/lstm_319/lstm_cell_319/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_319/lstm_cell_319/bias/v/Read/ReadVariableOp8Adam/lstm_320/lstm_cell_320/kernel/v/Read/ReadVariableOpBAdam/lstm_320/lstm_cell_320/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_320/lstm_cell_320/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *(
f#R!
__inference__traced_save_545016

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_106/kerneldense_106/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_318/lstm_cell_318/kernel'lstm_318/lstm_cell_318/recurrent_kernellstm_318/lstm_cell_318/biaslstm_319/lstm_cell_319/kernel'lstm_319/lstm_cell_319/recurrent_kernellstm_319/lstm_cell_319/biaslstm_320/lstm_cell_320/kernel'lstm_320/lstm_cell_320/recurrent_kernellstm_320/lstm_cell_320/biastotalcountAdam/dense_106/kernel/mAdam/dense_106/bias/m$Adam/lstm_318/lstm_cell_318/kernel/m.Adam/lstm_318/lstm_cell_318/recurrent_kernel/m"Adam/lstm_318/lstm_cell_318/bias/m$Adam/lstm_319/lstm_cell_319/kernel/m.Adam/lstm_319/lstm_cell_319/recurrent_kernel/m"Adam/lstm_319/lstm_cell_319/bias/m$Adam/lstm_320/lstm_cell_320/kernel/m.Adam/lstm_320/lstm_cell_320/recurrent_kernel/m"Adam/lstm_320/lstm_cell_320/bias/mAdam/dense_106/kernel/vAdam/dense_106/bias/v$Adam/lstm_318/lstm_cell_318/kernel/v.Adam/lstm_318/lstm_cell_318/recurrent_kernel/v"Adam/lstm_318/lstm_cell_318/bias/v$Adam/lstm_319/lstm_cell_319/kernel/v.Adam/lstm_319/lstm_cell_319/recurrent_kernel/v"Adam/lstm_319/lstm_cell_319/bias/v$Adam/lstm_320/lstm_cell_320/kernel/v.Adam/lstm_320/lstm_cell_320/recurrent_kernel/v"Adam/lstm_320/lstm_cell_320/bias/v*4
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_545146им+
Р


$__inference_signature_wrapper_541804
lstm_318_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_318_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 **
f%R#
!__inference__wrapped_model_539544o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
џ7
Ъ
while_body_540959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_543100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543100___redundant_placeholder04
0while_while_cond_543100___redundant_placeholder14
0while_while_cond_543100___redundant_placeholder24
0while_while_cond_543100___redundant_placeholder3
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
Е
У
while_cond_543859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543859___redundant_placeholder04
0while_while_cond_543859___redundant_placeholder14
0while_while_cond_543859___redundant_placeholder24
0while_while_cond_543859___redundant_placeholder3
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
Е
У
while_cond_544046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_544046___redundant_placeholder04
0while_while_cond_544046___redundant_placeholder14
0while_while_cond_544046___redundant_placeholder24
0while_while_cond_544046___redundant_placeholder3
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

Е
)__inference_lstm_320_layer_call_fn_543966
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_540585o
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
лB
№

lstm_319_while_body_542056.
*lstm_319_while_lstm_319_while_loop_counter4
0lstm_319_while_lstm_319_while_maximum_iterations
lstm_319_while_placeholder 
lstm_319_while_placeholder_1 
lstm_319_while_placeholder_2 
lstm_319_while_placeholder_3-
)lstm_319_while_lstm_319_strided_slice_1_0i
elstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0:	dШQ
>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШL
=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
lstm_319_while_identity
lstm_319_while_identity_1
lstm_319_while_identity_2
lstm_319_while_identity_3
lstm_319_while_identity_4
lstm_319_while_identity_5+
'lstm_319_while_lstm_319_strided_slice_1g
clstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensorM
:lstm_319_while_lstm_cell_88_matmul_readvariableop_resource:	dШO
<lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШJ
;lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpЂ1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpЂ3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp
@lstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_319/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0lstm_319_while_placeholderIlstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_319/while/lstm_cell_88/MatMulMatMul9lstm_319/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_319/while/lstm_cell_88/MatMul_1MatMullstm_319_while_placeholder_2;lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_319/while/lstm_cell_88/addAddV2,lstm_319/while/lstm_cell_88/MatMul:product:0.lstm_319/while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_319/while/lstm_cell_88/BiasAddBiasAdd#lstm_319/while/lstm_cell_88/add:z:0:lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_319/while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_319/while/lstm_cell_88/splitSplit4lstm_319/while/lstm_cell_88/split/split_dim:output:0,lstm_319/while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_319/while/lstm_cell_88/SigmoidSigmoid*lstm_319/while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_319/while/lstm_cell_88/Sigmoid_1Sigmoid*lstm_319/while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_319/while/lstm_cell_88/mulMul)lstm_319/while/lstm_cell_88/Sigmoid_1:y:0lstm_319_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_319/while/lstm_cell_88/ReluRelu*lstm_319/while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_319/while/lstm_cell_88/mul_1Mul'lstm_319/while/lstm_cell_88/Sigmoid:y:0.lstm_319/while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_319/while/lstm_cell_88/add_1AddV2#lstm_319/while/lstm_cell_88/mul:z:0%lstm_319/while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_319/while/lstm_cell_88/Sigmoid_2Sigmoid*lstm_319/while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_319/while/lstm_cell_88/Relu_1Relu%lstm_319/while/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_319/while/lstm_cell_88/mul_2Mul)lstm_319/while/lstm_cell_88/Sigmoid_2:y:00lstm_319/while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_319/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_319_while_placeholder_1lstm_319_while_placeholder%lstm_319/while/lstm_cell_88/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_319/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_319/while/addAddV2lstm_319_while_placeholderlstm_319/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_319/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_319/while/add_1AddV2*lstm_319_while_lstm_319_while_loop_counterlstm_319/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_319/while/IdentityIdentitylstm_319/while/add_1:z:0^lstm_319/while/NoOp*
T0*
_output_shapes
: 
lstm_319/while/Identity_1Identity0lstm_319_while_lstm_319_while_maximum_iterations^lstm_319/while/NoOp*
T0*
_output_shapes
: t
lstm_319/while/Identity_2Identitylstm_319/while/add:z:0^lstm_319/while/NoOp*
T0*
_output_shapes
: Ё
lstm_319/while/Identity_3IdentityClstm_319/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_319/while/NoOp*
T0*
_output_shapes
: 
lstm_319/while/Identity_4Identity%lstm_319/while/lstm_cell_88/mul_2:z:0^lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/while/Identity_5Identity%lstm_319/while/lstm_cell_88/add_1:z:0^lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_319/while/NoOpNoOp3^lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2^lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp4^lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_319_while_identity lstm_319/while/Identity:output:0"?
lstm_319_while_identity_1"lstm_319/while/Identity_1:output:0"?
lstm_319_while_identity_2"lstm_319/while/Identity_2:output:0"?
lstm_319_while_identity_3"lstm_319/while/Identity_3:output:0"?
lstm_319_while_identity_4"lstm_319/while/Identity_4:output:0"?
lstm_319_while_identity_5"lstm_319/while/Identity_5:output:0"T
'lstm_319_while_lstm_319_strided_slice_1)lstm_319_while_lstm_319_strided_slice_1_0"|
;lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0"~
<lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0"z
:lstm_319_while_lstm_cell_88_matmul_readvariableop_resource<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0"Ь
clstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensorelstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2f
1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp2j
3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
ы
і
-__inference_lstm_cell_87_layer_call_fn_544596

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539611o
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
Е
У
while_cond_544189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_544189___redundant_placeholder04
0while_while_cond_544189___redundant_placeholder14
0while_while_cond_544189___redundant_placeholder24
0while_while_cond_544189___redundant_placeholder3
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
ЄJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_543328

inputs>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_543244*
condR
while_cond_543243*K
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
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц"
у
while_body_539625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_87_539649_0:	.
while_lstm_cell_87_539651_0:	d*
while_lstm_cell_87_539653_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_87_539649:	,
while_lstm_cell_87_539651:	d(
while_lstm_cell_87_539653:	Ђ*while/lstm_cell_87/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_87/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_87_539649_0while_lstm_cell_87_539651_0while_lstm_cell_87_539653_0*
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539611м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_87/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_87/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_87/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_87/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_87_539649while_lstm_cell_87_539649_0"8
while_lstm_cell_87_539651while_lstm_cell_87_539651_0"8
while_lstm_cell_87_539653while_lstm_cell_87_539653_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_87/StatefulPartitionedCall*while/lstm_cell_87/StatefulPartitionedCall: 
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
8
а
while_body_540809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_543573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543573___redundant_placeholder04
0while_while_cond_543573___redundant_placeholder14
0while_while_cond_543573___redundant_placeholder24
0while_while_cond_543573___redundant_placeholder3
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
тJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_543042
inputs_0>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_542958*
condR
while_cond_542957*K
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
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
тJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_542899
inputs_0>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_542815*
condR
while_cond_542814*K
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
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ЮB
ъ

lstm_320_while_body_542195.
*lstm_320_while_lstm_320_while_loop_counter4
0lstm_320_while_lstm_320_while_maximum_iterations
lstm_320_while_placeholder 
lstm_320_while_placeholder_1 
lstm_320_while_placeholder_2 
lstm_320_while_placeholder_3-
)lstm_320_while_lstm_320_strided_slice_1_0i
elstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0:2(P
>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(K
=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0:(
lstm_320_while_identity
lstm_320_while_identity_1
lstm_320_while_identity_2
lstm_320_while_identity_3
lstm_320_while_identity_4
lstm_320_while_identity_5+
'lstm_320_while_lstm_320_strided_slice_1g
clstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensorL
:lstm_320_while_lstm_cell_89_matmul_readvariableop_resource:2(N
<lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource:
(I
;lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpЂ1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpЂ3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp
@lstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_320/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0lstm_320_while_placeholderIlstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_320/while/lstm_cell_89/MatMulMatMul9lstm_320/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_320/while/lstm_cell_89/MatMul_1MatMullstm_320_while_placeholder_2;lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_320/while/lstm_cell_89/addAddV2,lstm_320/while/lstm_cell_89/MatMul:product:0.lstm_320/while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_320/while/lstm_cell_89/BiasAddBiasAdd#lstm_320/while/lstm_cell_89/add:z:0:lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_320/while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_320/while/lstm_cell_89/splitSplit4lstm_320/while/lstm_cell_89/split/split_dim:output:0,lstm_320/while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_320/while/lstm_cell_89/SigmoidSigmoid*lstm_320/while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_320/while/lstm_cell_89/Sigmoid_1Sigmoid*lstm_320/while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_320/while/lstm_cell_89/mulMul)lstm_320/while/lstm_cell_89/Sigmoid_1:y:0lstm_320_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_320/while/lstm_cell_89/ReluRelu*lstm_320/while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_320/while/lstm_cell_89/mul_1Mul'lstm_320/while/lstm_cell_89/Sigmoid:y:0.lstm_320/while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_320/while/lstm_cell_89/add_1AddV2#lstm_320/while/lstm_cell_89/mul:z:0%lstm_320/while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_320/while/lstm_cell_89/Sigmoid_2Sigmoid*lstm_320/while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_320/while/lstm_cell_89/Relu_1Relu%lstm_320/while/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_320/while/lstm_cell_89/mul_2Mul)lstm_320/while/lstm_cell_89/Sigmoid_2:y:00lstm_320/while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_320/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_320_while_placeholder_1lstm_320_while_placeholder%lstm_320/while/lstm_cell_89/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_320/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_320/while/addAddV2lstm_320_while_placeholderlstm_320/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_320/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_320/while/add_1AddV2*lstm_320_while_lstm_320_while_loop_counterlstm_320/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_320/while/IdentityIdentitylstm_320/while/add_1:z:0^lstm_320/while/NoOp*
T0*
_output_shapes
: 
lstm_320/while/Identity_1Identity0lstm_320_while_lstm_320_while_maximum_iterations^lstm_320/while/NoOp*
T0*
_output_shapes
: t
lstm_320/while/Identity_2Identitylstm_320/while/add:z:0^lstm_320/while/NoOp*
T0*
_output_shapes
: Ё
lstm_320/while/Identity_3IdentityClstm_320/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_320/while/NoOp*
T0*
_output_shapes
: 
lstm_320/while/Identity_4Identity%lstm_320/while/lstm_cell_89/mul_2:z:0^lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/while/Identity_5Identity%lstm_320/while/lstm_cell_89/add_1:z:0^lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_320/while/NoOpNoOp3^lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2^lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp4^lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_320_while_identity lstm_320/while/Identity:output:0"?
lstm_320_while_identity_1"lstm_320/while/Identity_1:output:0"?
lstm_320_while_identity_2"lstm_320/while/Identity_2:output:0"?
lstm_320_while_identity_3"lstm_320/while/Identity_3:output:0"?
lstm_320_while_identity_4"lstm_320/while/Identity_4:output:0"?
lstm_320_while_identity_5"lstm_320/while/Identity_5:output:0"T
'lstm_320_while_lstm_320_strided_slice_1)lstm_320_while_lstm_320_strided_slice_1_0"|
;lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0"~
<lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0"z
:lstm_320_while_lstm_cell_89_matmul_readvariableop_resource<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0"Ь
clstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensorelstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2f
1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp2j
3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_540324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540324___redundant_placeholder04
0while_while_cond_540324___redundant_placeholder14
0while_while_cond_540324___redundant_placeholder24
0while_while_cond_540324___redundant_placeholder3
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
ш
ѓ
-__inference_lstm_cell_89_layer_call_fn_544792

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540311o
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
ы
і
-__inference_lstm_cell_88_layer_call_fn_544711

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_540107o
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
Ћ
И
)__inference_lstm_319_layer_call_fn_543339
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_540044|
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
Ы

H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540457

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
Е
У
while_cond_540808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540808___redundant_placeholder04
0while_while_cond_540808___redundant_placeholder14
0while_while_cond_540808___redundant_placeholder24
0while_while_cond_540808___redundant_placeholder3
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

Ж
)__inference_lstm_319_layer_call_fn_543372

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
D__inference_lstm_319_layer_call_and_return_conditional_losses_541424s
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

Ж
)__inference_lstm_318_layer_call_fn_542756

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
D__inference_lstm_318_layer_call_and_return_conditional_losses_541589s
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
8

D__inference_lstm_318_layer_call_and_return_conditional_losses_539885

inputs&
lstm_cell_87_539803:	&
lstm_cell_87_539805:	d"
lstm_cell_87_539807:	
identityЂ$lstm_cell_87/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_87/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_87_539803lstm_cell_87_539805lstm_cell_87_539807*
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539757n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_87_539803lstm_cell_87_539805lstm_cell_87_539807*
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
bodyR
while_body_539816*
condR
while_cond_539815*K
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
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_87/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_87/StatefulPartitionedCall$lstm_cell_87/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЄJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_540743

inputs>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_540659*
condR
while_cond_540658*K
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
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_541339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_541339___redundant_placeholder04
0while_while_cond_541339___redundant_placeholder14
0while_while_cond_541339___redundant_placeholder24
0while_while_cond_541339___redundant_placeholder3
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
В

ї
lstm_320_while_cond_542621.
*lstm_320_while_lstm_320_while_loop_counter4
0lstm_320_while_lstm_320_while_maximum_iterations
lstm_320_while_placeholder 
lstm_320_while_placeholder_1 
lstm_320_while_placeholder_2 
lstm_320_while_placeholder_30
,lstm_320_while_less_lstm_320_strided_slice_1F
Blstm_320_while_lstm_320_while_cond_542621___redundant_placeholder0F
Blstm_320_while_lstm_320_while_cond_542621___redundant_placeholder1F
Blstm_320_while_lstm_320_while_cond_542621___redundant_placeholder2F
Blstm_320_while_lstm_320_while_cond_542621___redundant_placeholder3
lstm_320_while_identity

lstm_320/while/LessLesslstm_320_while_placeholder,lstm_320_while_less_lstm_320_strided_slice_1*
T0*
_output_shapes
: ]
lstm_320/while/IdentityIdentitylstm_320/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_320_while_identity lstm_320/while/Identity:output:0*(
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
н

H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544775

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
ЄJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_543185

inputs>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_543101*
condR
while_cond_543100*K
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
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
дJ

D__inference_lstm_320_layer_call_and_return_conditional_losses_544131
inputs_0=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_544047*
condR
while_cond_544046*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
Ц

J__inference_sequential_106_layer_call_and_return_conditional_losses_542285

inputsG
4lstm_318_lstm_cell_87_matmul_readvariableop_resource:	I
6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource:	dD
5lstm_318_lstm_cell_87_biasadd_readvariableop_resource:	G
4lstm_319_lstm_cell_88_matmul_readvariableop_resource:	dШI
6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource:	2ШD
5lstm_319_lstm_cell_88_biasadd_readvariableop_resource:	ШF
4lstm_320_lstm_cell_89_matmul_readvariableop_resource:2(H
6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource:
(C
5lstm_320_lstm_cell_89_biasadd_readvariableop_resource:(:
(dense_106_matmul_readvariableop_resource:
7
)dense_106_biasadd_readvariableop_resource:
identityЂ dense_106/BiasAdd/ReadVariableOpЂdense_106/MatMul/ReadVariableOpЂ,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpЂ+lstm_318/lstm_cell_87/MatMul/ReadVariableOpЂ-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpЂlstm_318/whileЂ,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpЂ+lstm_319/lstm_cell_88/MatMul/ReadVariableOpЂ-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpЂlstm_319/whileЂ,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpЂ+lstm_320/lstm_cell_89/MatMul/ReadVariableOpЂ-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpЂlstm_320/whileD
lstm_318/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_318/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_318/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_318/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_318/strided_sliceStridedSlicelstm_318/Shape:output:0%lstm_318/strided_slice/stack:output:0'lstm_318/strided_slice/stack_1:output:0'lstm_318/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_318/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_318/zeros/packedPacklstm_318/strided_slice:output:0 lstm_318/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_318/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_318/zerosFilllstm_318/zeros/packed:output:0lstm_318/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd[
lstm_318/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_318/zeros_1/packedPacklstm_318/strided_slice:output:0"lstm_318/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_318/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_318/zeros_1Fill lstm_318/zeros_1/packed:output:0lstm_318/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdl
lstm_318/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_318/transpose	Transposeinputs lstm_318/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџV
lstm_318/Shape_1Shapelstm_318/transpose:y:0*
T0*
_output_shapes
:h
lstm_318/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_318/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_318/strided_slice_1StridedSlicelstm_318/Shape_1:output:0'lstm_318/strided_slice_1/stack:output:0)lstm_318/strided_slice_1/stack_1:output:0)lstm_318/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_318/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_318/TensorArrayV2TensorListReserve-lstm_318/TensorArrayV2/element_shape:output:0!lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_318/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
0lstm_318/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_318/transpose:y:0Glstm_318/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_318/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_318/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_318/strided_slice_2StridedSlicelstm_318/transpose:y:0'lstm_318/strided_slice_2/stack:output:0)lstm_318/strided_slice_2/stack_1:output:0)lstm_318/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_318/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp4lstm_318_lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Б
lstm_318/lstm_cell_87/MatMulMatMul!lstm_318/strided_slice_2:output:03lstm_318/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ћ
lstm_318/lstm_cell_87/MatMul_1MatMullstm_318/zeros:output:05lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_318/lstm_cell_87/addAddV2&lstm_318/lstm_cell_87/MatMul:product:0(lstm_318/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp5lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_318/lstm_cell_87/BiasAddBiasAddlstm_318/lstm_cell_87/add:z:04lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_318/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_318/lstm_cell_87/splitSplit.lstm_318/lstm_cell_87/split/split_dim:output:0&lstm_318/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_318/lstm_cell_87/SigmoidSigmoid$lstm_318/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/Sigmoid_1Sigmoid$lstm_318/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/mulMul#lstm_318/lstm_cell_87/Sigmoid_1:y:0lstm_318/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_318/lstm_cell_87/ReluRelu$lstm_318/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_318/lstm_cell_87/mul_1Mul!lstm_318/lstm_cell_87/Sigmoid:y:0(lstm_318/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/add_1AddV2lstm_318/lstm_cell_87/mul:z:0lstm_318/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/Sigmoid_2Sigmoid$lstm_318/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_318/lstm_cell_87/Relu_1Relulstm_318/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_318/lstm_cell_87/mul_2Mul#lstm_318/lstm_cell_87/Sigmoid_2:y:0*lstm_318/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdw
&lstm_318/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
lstm_318/TensorArrayV2_1TensorListReserve/lstm_318/TensorArrayV2_1/element_shape:output:0!lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_318/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_318/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_318/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_318/whileWhile$lstm_318/while/loop_counter:output:0*lstm_318/while/maximum_iterations:output:0lstm_318/time:output:0!lstm_318/TensorArrayV2_1:handle:0lstm_318/zeros:output:0lstm_318/zeros_1:output:0!lstm_318/strided_slice_1:output:0@lstm_318/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_318_lstm_cell_87_matmul_readvariableop_resource6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource5lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
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
lstm_318_while_body_541917*&
condR
lstm_318_while_cond_541916*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
9lstm_318/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   н
+lstm_318/TensorArrayV2Stack/TensorListStackTensorListStacklstm_318/while:output:3Blstm_318/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0q
lstm_318/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_318/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_318/strided_slice_3StridedSlice4lstm_318/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_318/strided_slice_3/stack:output:0)lstm_318/strided_slice_3/stack_1:output:0)lstm_318/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskn
lstm_318/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_318/transpose_1	Transpose4lstm_318/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_318/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdd
lstm_318/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_319/ShapeShapelstm_318/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_319/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_319/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_319/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_319/strided_sliceStridedSlicelstm_319/Shape:output:0%lstm_319/strided_slice/stack:output:0'lstm_319/strided_slice/stack_1:output:0'lstm_319/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_319/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_319/zeros/packedPacklstm_319/strided_slice:output:0 lstm_319/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_319/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_319/zerosFilllstm_319/zeros/packed:output:0lstm_319/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_319/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_319/zeros_1/packedPacklstm_319/strided_slice:output:0"lstm_319/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_319/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_319/zeros_1Fill lstm_319/zeros_1/packed:output:0lstm_319/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_319/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_319/transpose	Transposelstm_318/transpose_1:y:0 lstm_319/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_319/Shape_1Shapelstm_319/transpose:y:0*
T0*
_output_shapes
:h
lstm_319/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_319/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_319/strided_slice_1StridedSlicelstm_319/Shape_1:output:0'lstm_319/strided_slice_1/stack:output:0)lstm_319/strided_slice_1/stack_1:output:0)lstm_319/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_319/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_319/TensorArrayV2TensorListReserve-lstm_319/TensorArrayV2/element_shape:output:0!lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_319/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_319/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_319/transpose:y:0Glstm_319/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_319/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_319/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_319/strided_slice_2StridedSlicelstm_319/transpose:y:0'lstm_319/strided_slice_2/stack:output:0)lstm_319/strided_slice_2/stack_1:output:0)lstm_319/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_319/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp4lstm_319_lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_319/lstm_cell_88/MatMulMatMul!lstm_319/strided_slice_2:output:03lstm_319/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_319/lstm_cell_88/MatMul_1MatMullstm_319/zeros:output:05lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_319/lstm_cell_88/addAddV2&lstm_319/lstm_cell_88/MatMul:product:0(lstm_319/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp5lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_319/lstm_cell_88/BiasAddBiasAddlstm_319/lstm_cell_88/add:z:04lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_319/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_319/lstm_cell_88/splitSplit.lstm_319/lstm_cell_88/split/split_dim:output:0&lstm_319/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_319/lstm_cell_88/SigmoidSigmoid$lstm_319/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/Sigmoid_1Sigmoid$lstm_319/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/mulMul#lstm_319/lstm_cell_88/Sigmoid_1:y:0lstm_319/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_319/lstm_cell_88/ReluRelu$lstm_319/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_319/lstm_cell_88/mul_1Mul!lstm_319/lstm_cell_88/Sigmoid:y:0(lstm_319/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/add_1AddV2lstm_319/lstm_cell_88/mul:z:0lstm_319/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/Sigmoid_2Sigmoid$lstm_319/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_319/lstm_cell_88/Relu_1Relulstm_319/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_319/lstm_cell_88/mul_2Mul#lstm_319/lstm_cell_88/Sigmoid_2:y:0*lstm_319/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_319/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_319/TensorArrayV2_1TensorListReserve/lstm_319/TensorArrayV2_1/element_shape:output:0!lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_319/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_319/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_319/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_319/whileWhile$lstm_319/while/loop_counter:output:0*lstm_319/while/maximum_iterations:output:0lstm_319/time:output:0!lstm_319/TensorArrayV2_1:handle:0lstm_319/zeros:output:0lstm_319/zeros_1:output:0!lstm_319/strided_slice_1:output:0@lstm_319/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_319_lstm_cell_88_matmul_readvariableop_resource6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource5lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
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
lstm_319_while_body_542056*&
condR
lstm_319_while_cond_542055*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_319/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_319/TensorArrayV2Stack/TensorListStackTensorListStacklstm_319/while:output:3Blstm_319/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_319/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_319/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_319/strided_slice_3StridedSlice4lstm_319/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_319/strided_slice_3/stack:output:0)lstm_319/strided_slice_3/stack_1:output:0)lstm_319/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_319/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_319/transpose_1	Transpose4lstm_319/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_319/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_319/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_320/ShapeShapelstm_319/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_320/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_320/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_320/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_320/strided_sliceStridedSlicelstm_320/Shape:output:0%lstm_320/strided_slice/stack:output:0'lstm_320/strided_slice/stack_1:output:0'lstm_320/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_320/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_320/zeros/packedPacklstm_320/strided_slice:output:0 lstm_320/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_320/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_320/zerosFilllstm_320/zeros/packed:output:0lstm_320/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_320/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_320/zeros_1/packedPacklstm_320/strided_slice:output:0"lstm_320/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_320/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_320/zeros_1Fill lstm_320/zeros_1/packed:output:0lstm_320/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_320/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_320/transpose	Transposelstm_319/transpose_1:y:0 lstm_320/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_320/Shape_1Shapelstm_320/transpose:y:0*
T0*
_output_shapes
:h
lstm_320/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_320/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_320/strided_slice_1StridedSlicelstm_320/Shape_1:output:0'lstm_320/strided_slice_1/stack:output:0)lstm_320/strided_slice_1/stack_1:output:0)lstm_320/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_320/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_320/TensorArrayV2TensorListReserve-lstm_320/TensorArrayV2/element_shape:output:0!lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_320/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_320/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_320/transpose:y:0Glstm_320/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_320/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_320/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_320/strided_slice_2StridedSlicelstm_320/transpose:y:0'lstm_320/strided_slice_2/stack:output:0)lstm_320/strided_slice_2/stack_1:output:0)lstm_320/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_320/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp4lstm_320_lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_320/lstm_cell_89/MatMulMatMul!lstm_320/strided_slice_2:output:03lstm_320/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_320/lstm_cell_89/MatMul_1MatMullstm_320/zeros:output:05lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_320/lstm_cell_89/addAddV2&lstm_320/lstm_cell_89/MatMul:product:0(lstm_320/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp5lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_320/lstm_cell_89/BiasAddBiasAddlstm_320/lstm_cell_89/add:z:04lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_320/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_320/lstm_cell_89/splitSplit.lstm_320/lstm_cell_89/split/split_dim:output:0&lstm_320/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_320/lstm_cell_89/SigmoidSigmoid$lstm_320/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/Sigmoid_1Sigmoid$lstm_320/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/mulMul#lstm_320/lstm_cell_89/Sigmoid_1:y:0lstm_320/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_320/lstm_cell_89/ReluRelu$lstm_320/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_320/lstm_cell_89/mul_1Mul!lstm_320/lstm_cell_89/Sigmoid:y:0(lstm_320/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/add_1AddV2lstm_320/lstm_cell_89/mul:z:0lstm_320/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/Sigmoid_2Sigmoid$lstm_320/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_320/lstm_cell_89/Relu_1Relulstm_320/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_320/lstm_cell_89/mul_2Mul#lstm_320/lstm_cell_89/Sigmoid_2:y:0*lstm_320/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_320/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_320/TensorArrayV2_1TensorListReserve/lstm_320/TensorArrayV2_1/element_shape:output:0!lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_320/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_320/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_320/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_320/whileWhile$lstm_320/while/loop_counter:output:0*lstm_320/while/maximum_iterations:output:0lstm_320/time:output:0!lstm_320/TensorArrayV2_1:handle:0lstm_320/zeros:output:0lstm_320/zeros_1:output:0!lstm_320/strided_slice_1:output:0@lstm_320/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_320_lstm_cell_89_matmul_readvariableop_resource6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource5lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
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
lstm_320_while_body_542195*&
condR
lstm_320_while_cond_542194*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_320/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_320/TensorArrayV2Stack/TensorListStackTensorListStacklstm_320/while:output:3Blstm_320/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_320/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_320/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_320/strided_slice_3StridedSlice4lstm_320/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_320/strided_slice_3/stack:output:0)lstm_320/strided_slice_3/stack_1:output:0)lstm_320/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_320/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_320/transpose_1	Transpose4lstm_320/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_320/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_320/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_106/MatMulMatMul!lstm_320/strided_slice_3:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_106/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџх
NoOpNoOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp-^lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp,^lstm_318/lstm_cell_87/MatMul/ReadVariableOp.^lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp^lstm_318/while-^lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp,^lstm_319/lstm_cell_88/MatMul/ReadVariableOp.^lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp^lstm_319/while-^lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp,^lstm_320/lstm_cell_89/MatMul/ReadVariableOp.^lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp^lstm_320/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2\
,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp2Z
+lstm_318/lstm_cell_87/MatMul/ReadVariableOp+lstm_318/lstm_cell_87/MatMul/ReadVariableOp2^
-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp2 
lstm_318/whilelstm_318/while2\
,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp2Z
+lstm_319/lstm_cell_88/MatMul/ReadVariableOp+lstm_319/lstm_cell_88/MatMul/ReadVariableOp2^
-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp2 
lstm_319/whilelstm_319/while2\
,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp2Z
+lstm_320/lstm_cell_89/MatMul/ReadVariableOp+lstm_320/lstm_cell_89/MatMul/ReadVariableOp2^
-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp2 
lstm_320/whilelstm_320/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЖT
д
)sequential_106_lstm_319_while_body_539315L
Hsequential_106_lstm_319_while_sequential_106_lstm_319_while_loop_counterR
Nsequential_106_lstm_319_while_sequential_106_lstm_319_while_maximum_iterations-
)sequential_106_lstm_319_while_placeholder/
+sequential_106_lstm_319_while_placeholder_1/
+sequential_106_lstm_319_while_placeholder_2/
+sequential_106_lstm_319_while_placeholder_3K
Gsequential_106_lstm_319_while_sequential_106_lstm_319_strided_slice_1_0
sequential_106_lstm_319_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_319_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_106_lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0:	dШ`
Msequential_106_lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2Ш[
Lsequential_106_lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш*
&sequential_106_lstm_319_while_identity,
(sequential_106_lstm_319_while_identity_1,
(sequential_106_lstm_319_while_identity_2,
(sequential_106_lstm_319_while_identity_3,
(sequential_106_lstm_319_while_identity_4,
(sequential_106_lstm_319_while_identity_5I
Esequential_106_lstm_319_while_sequential_106_lstm_319_strided_slice_1
sequential_106_lstm_319_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_319_tensorarrayunstack_tensorlistfromtensor\
Isequential_106_lstm_319_while_lstm_cell_88_matmul_readvariableop_resource:	dШ^
Ksequential_106_lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШY
Jsequential_106_lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂAsequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpЂ@sequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpЂBsequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp 
Osequential_106/lstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
Asequential_106/lstm_319/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_106_lstm_319_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_319_tensorarrayunstack_tensorlistfromtensor_0)sequential_106_lstm_319_while_placeholderXsequential_106/lstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Э
@sequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOpKsequential_106_lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0
1sequential_106/lstm_319/while/lstm_cell_88/MatMulMatMulHsequential_106/lstm_319/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШб
Bsequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOpMsequential_106_lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0щ
3sequential_106/lstm_319/while/lstm_cell_88/MatMul_1MatMul+sequential_106_lstm_319_while_placeholder_2Jsequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШц
.sequential_106/lstm_319/while/lstm_cell_88/addAddV2;sequential_106/lstm_319/while/lstm_cell_88/MatMul:product:0=sequential_106/lstm_319/while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЫ
Asequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOpLsequential_106_lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0я
2sequential_106/lstm_319/while/lstm_cell_88/BiasAddBiasAdd2sequential_106/lstm_319/while/lstm_cell_88/add:z:0Isequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
:sequential_106/lstm_319/while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_106/lstm_319/while/lstm_cell_88/splitSplitCsequential_106/lstm_319/while/lstm_cell_88/split/split_dim:output:0;sequential_106/lstm_319/while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitЊ
2sequential_106/lstm_319/while/lstm_cell_88/SigmoidSigmoid9sequential_106/lstm_319/while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
4sequential_106/lstm_319/while/lstm_cell_88/Sigmoid_1Sigmoid9sequential_106/lstm_319/while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ю
.sequential_106/lstm_319/while/lstm_cell_88/mulMul8sequential_106/lstm_319/while/lstm_cell_88/Sigmoid_1:y:0+sequential_106_lstm_319_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2Є
/sequential_106/lstm_319/while/lstm_cell_88/ReluRelu9sequential_106/lstm_319/while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2р
0sequential_106/lstm_319/while/lstm_cell_88/mul_1Mul6sequential_106/lstm_319/while/lstm_cell_88/Sigmoid:y:0=sequential_106/lstm_319/while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2е
0sequential_106/lstm_319/while/lstm_cell_88/add_1AddV22sequential_106/lstm_319/while/lstm_cell_88/mul:z:04sequential_106/lstm_319/while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
4sequential_106/lstm_319/while/lstm_cell_88/Sigmoid_2Sigmoid9sequential_106/lstm_319/while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_106/lstm_319/while/lstm_cell_88/Relu_1Relu4sequential_106/lstm_319/while/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2ф
0sequential_106/lstm_319/while/lstm_cell_88/mul_2Mul8sequential_106/lstm_319/while/lstm_cell_88/Sigmoid_2:y:0?sequential_106/lstm_319/while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
Bsequential_106/lstm_319/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_106_lstm_319_while_placeholder_1)sequential_106_lstm_319_while_placeholder4sequential_106/lstm_319/while/lstm_cell_88/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_106/lstm_319/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_106/lstm_319/while/addAddV2)sequential_106_lstm_319_while_placeholder,sequential_106/lstm_319/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_106/lstm_319/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_106/lstm_319/while/add_1AddV2Hsequential_106_lstm_319_while_sequential_106_lstm_319_while_loop_counter.sequential_106/lstm_319/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_106/lstm_319/while/IdentityIdentity'sequential_106/lstm_319/while/add_1:z:0#^sequential_106/lstm_319/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_106/lstm_319/while/Identity_1IdentityNsequential_106_lstm_319_while_sequential_106_lstm_319_while_maximum_iterations#^sequential_106/lstm_319/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_106/lstm_319/while/Identity_2Identity%sequential_106/lstm_319/while/add:z:0#^sequential_106/lstm_319/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_106/lstm_319/while/Identity_3IdentityRsequential_106/lstm_319/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_106/lstm_319/while/NoOp*
T0*
_output_shapes
: С
(sequential_106/lstm_319/while/Identity_4Identity4sequential_106/lstm_319/while/lstm_cell_88/mul_2:z:0#^sequential_106/lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2С
(sequential_106/lstm_319/while/Identity_5Identity4sequential_106/lstm_319/while/lstm_cell_88/add_1:z:0#^sequential_106/lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2А
"sequential_106/lstm_319/while/NoOpNoOpB^sequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpA^sequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpC^sequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_106_lstm_319_while_identity/sequential_106/lstm_319/while/Identity:output:0"]
(sequential_106_lstm_319_while_identity_11sequential_106/lstm_319/while/Identity_1:output:0"]
(sequential_106_lstm_319_while_identity_21sequential_106/lstm_319/while/Identity_2:output:0"]
(sequential_106_lstm_319_while_identity_31sequential_106/lstm_319/while/Identity_3:output:0"]
(sequential_106_lstm_319_while_identity_41sequential_106/lstm_319/while/Identity_4:output:0"]
(sequential_106_lstm_319_while_identity_51sequential_106/lstm_319/while/Identity_5:output:0"
Jsequential_106_lstm_319_while_lstm_cell_88_biasadd_readvariableop_resourceLsequential_106_lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0"
Ksequential_106_lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resourceMsequential_106_lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0"
Isequential_106_lstm_319_while_lstm_cell_88_matmul_readvariableop_resourceKsequential_106_lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0"
Esequential_106_lstm_319_while_sequential_106_lstm_319_strided_slice_1Gsequential_106_lstm_319_while_sequential_106_lstm_319_strided_slice_1_0"
sequential_106_lstm_319_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_319_tensorarrayunstack_tensorlistfromtensorsequential_106_lstm_319_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_319_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2
Asequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpAsequential_106/lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2
@sequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp@sequential_106/lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp2
Bsequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOpBsequential_106/lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_543430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543430___redundant_placeholder04
0while_while_cond_543430___redundant_placeholder14
0while_while_cond_543430___redundant_placeholder24
0while_while_cond_543430___redundant_placeholder3
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
ЄJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_541424

inputs>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_541340*
condR
while_cond_541339*K
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
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
8

D__inference_lstm_320_layer_call_and_return_conditional_losses_540394

inputs%
lstm_cell_89_540312:2(%
lstm_cell_89_540314:
(!
lstm_cell_89_540316:(
identityЂ$lstm_cell_89/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_89/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_89_540312lstm_cell_89_540314lstm_cell_89_540316*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540311n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_89_540312lstm_cell_89_540314lstm_cell_89_540316*
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
bodyR
while_body_540325*
condR
while_cond_540324*K
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
u
NoOpNoOp%^lstm_cell_89/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_89/StatefulPartitionedCall$lstm_cell_89/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
В

ї
lstm_319_while_cond_542055.
*lstm_319_while_lstm_319_while_loop_counter4
0lstm_319_while_lstm_319_while_maximum_iterations
lstm_319_while_placeholder 
lstm_319_while_placeholder_1 
lstm_319_while_placeholder_2 
lstm_319_while_placeholder_30
,lstm_319_while_less_lstm_319_strided_slice_1F
Blstm_319_while_lstm_319_while_cond_542055___redundant_placeholder0F
Blstm_319_while_lstm_319_while_cond_542055___redundant_placeholder1F
Blstm_319_while_lstm_319_while_cond_542055___redundant_placeholder2F
Blstm_319_while_lstm_319_while_cond_542055___redundant_placeholder3
lstm_319_while_identity

lstm_319/while/LessLesslstm_319_while_placeholder,lstm_319_while_less_lstm_319_strided_slice_1*
T0*
_output_shapes
: ]
lstm_319/while/IdentityIdentitylstm_319/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_319_while_identity lstm_319/while/Identity:output:0*(
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
ш
ѓ
-__inference_lstm_cell_89_layer_call_fn_544809

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540457o
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
і
Г
)__inference_lstm_320_layer_call_fn_543988

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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541259o
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
Ћ
И
)__inference_lstm_318_layer_call_fn_542734
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_539885|
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
тJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_543658
inputs_0>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_543574*
condR
while_cond_543573*K
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
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
ы
і
-__inference_lstm_cell_87_layer_call_fn_544613

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539757o
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
В

ї
lstm_318_while_cond_541916.
*lstm_318_while_lstm_318_while_loop_counter4
0lstm_318_while_lstm_318_while_maximum_iterations
lstm_318_while_placeholder 
lstm_318_while_placeholder_1 
lstm_318_while_placeholder_2 
lstm_318_while_placeholder_30
,lstm_318_while_less_lstm_318_strided_slice_1F
Blstm_318_while_lstm_318_while_cond_541916___redundant_placeholder0F
Blstm_318_while_lstm_318_while_cond_541916___redundant_placeholder1F
Blstm_318_while_lstm_318_while_cond_541916___redundant_placeholder2F
Blstm_318_while_lstm_318_while_cond_541916___redundant_placeholder3
lstm_318_while_identity

lstm_318/while/LessLesslstm_318_while_placeholder,lstm_318_while_less_lstm_318_strided_slice_1*
T0*
_output_shapes
: ]
lstm_318/while/IdentityIdentitylstm_318/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_318_while_identity lstm_318/while/Identity:output:0*(
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
)__inference_lstm_319_layer_call_fn_543350
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_540235|
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
ж
Ѓ
)sequential_106_lstm_320_while_cond_539453L
Hsequential_106_lstm_320_while_sequential_106_lstm_320_while_loop_counterR
Nsequential_106_lstm_320_while_sequential_106_lstm_320_while_maximum_iterations-
)sequential_106_lstm_320_while_placeholder/
+sequential_106_lstm_320_while_placeholder_1/
+sequential_106_lstm_320_while_placeholder_2/
+sequential_106_lstm_320_while_placeholder_3N
Jsequential_106_lstm_320_while_less_sequential_106_lstm_320_strided_slice_1d
`sequential_106_lstm_320_while_sequential_106_lstm_320_while_cond_539453___redundant_placeholder0d
`sequential_106_lstm_320_while_sequential_106_lstm_320_while_cond_539453___redundant_placeholder1d
`sequential_106_lstm_320_while_sequential_106_lstm_320_while_cond_539453___redundant_placeholder2d
`sequential_106_lstm_320_while_sequential_106_lstm_320_while_cond_539453___redundant_placeholder3*
&sequential_106_lstm_320_while_identity
Т
"sequential_106/lstm_320/while/LessLess)sequential_106_lstm_320_while_placeholderJsequential_106_lstm_320_while_less_sequential_106_lstm_320_strided_slice_1*
T0*
_output_shapes
: {
&sequential_106/lstm_320/while/IdentityIdentity&sequential_106/lstm_320/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_106_lstm_320_while_identity/sequential_106/lstm_320/while/Identity:output:0*(
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
ц"
у
while_body_539975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_88_539999_0:	dШ.
while_lstm_cell_88_540001_0:	2Ш*
while_lstm_cell_88_540003_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_88_539999:	dШ,
while_lstm_cell_88_540001:	2Ш(
while_lstm_cell_88_540003:	ШЂ*while/lstm_cell_88/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_88/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_88_539999_0while_lstm_cell_88_540001_0while_lstm_cell_88_540003_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_539961м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_88/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_88/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_88/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_88/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_88_539999while_lstm_cell_88_539999_0"8
while_lstm_cell_88_540001while_lstm_cell_88_540001_0"8
while_lstm_cell_88_540003while_lstm_cell_88_540003_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_88/StatefulPartitionedCall*while/lstm_cell_88/StatefulPartitionedCall: 
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
г

H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544873

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
J

D__inference_lstm_320_layer_call_and_return_conditional_losses_544417

inputs=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_544333*
condR
while_cond_544332*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Е
У
while_cond_541174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_541174___redundant_placeholder04
0while_while_cond_541174___redundant_placeholder14
0while_while_cond_541174___redundant_placeholder24
0while_while_cond_541174___redundant_placeholder3
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
В

ї
lstm_320_while_cond_542194.
*lstm_320_while_lstm_320_while_loop_counter4
0lstm_320_while_lstm_320_while_maximum_iterations
lstm_320_while_placeholder 
lstm_320_while_placeholder_1 
lstm_320_while_placeholder_2 
lstm_320_while_placeholder_30
,lstm_320_while_less_lstm_320_strided_slice_1F
Blstm_320_while_lstm_320_while_cond_542194___redundant_placeholder0F
Blstm_320_while_lstm_320_while_cond_542194___redundant_placeholder1F
Blstm_320_while_lstm_320_while_cond_542194___redundant_placeholder2F
Blstm_320_while_lstm_320_while_cond_542194___redundant_placeholder3
lstm_320_while_identity

lstm_320/while/LessLesslstm_320_while_placeholder,lstm_320_while_less_lstm_320_strided_slice_1*
T0*
_output_shapes
: ]
lstm_320/while/IdentityIdentitylstm_320/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_320_while_identity lstm_320/while/Identity:output:0*(
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
8

D__inference_lstm_318_layer_call_and_return_conditional_losses_539694

inputs&
lstm_cell_87_539612:	&
lstm_cell_87_539614:	d"
lstm_cell_87_539616:	
identityЂ$lstm_cell_87/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_87/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_87_539612lstm_cell_87_539614lstm_cell_87_539616*
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539611n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_87_539612lstm_cell_87_539614lstm_cell_87_539616*
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
bodyR
while_body_539625*
condR
while_cond_539624*K
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
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_87/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_87/StatefulPartitionedCall$lstm_cell_87/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
8
а
while_body_542815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
эW
Є
__inference__traced_save_545016
file_prefix/
+savev2_dense_106_kernel_read_readvariableop-
)savev2_dense_106_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_318_lstm_cell_318_kernel_read_readvariableopF
Bsavev2_lstm_318_lstm_cell_318_recurrent_kernel_read_readvariableop:
6savev2_lstm_318_lstm_cell_318_bias_read_readvariableop<
8savev2_lstm_319_lstm_cell_319_kernel_read_readvariableopF
Bsavev2_lstm_319_lstm_cell_319_recurrent_kernel_read_readvariableop:
6savev2_lstm_319_lstm_cell_319_bias_read_readvariableop<
8savev2_lstm_320_lstm_cell_320_kernel_read_readvariableopF
Bsavev2_lstm_320_lstm_cell_320_recurrent_kernel_read_readvariableop:
6savev2_lstm_320_lstm_cell_320_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_106_kernel_m_read_readvariableop4
0savev2_adam_dense_106_bias_m_read_readvariableopC
?savev2_adam_lstm_318_lstm_cell_318_kernel_m_read_readvariableopM
Isavev2_adam_lstm_318_lstm_cell_318_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_318_lstm_cell_318_bias_m_read_readvariableopC
?savev2_adam_lstm_319_lstm_cell_319_kernel_m_read_readvariableopM
Isavev2_adam_lstm_319_lstm_cell_319_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_319_lstm_cell_319_bias_m_read_readvariableopC
?savev2_adam_lstm_320_lstm_cell_320_kernel_m_read_readvariableopM
Isavev2_adam_lstm_320_lstm_cell_320_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_320_lstm_cell_320_bias_m_read_readvariableop6
2savev2_adam_dense_106_kernel_v_read_readvariableop4
0savev2_adam_dense_106_bias_v_read_readvariableopC
?savev2_adam_lstm_318_lstm_cell_318_kernel_v_read_readvariableopM
Isavev2_adam_lstm_318_lstm_cell_318_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_318_lstm_cell_318_bias_v_read_readvariableopC
?savev2_adam_lstm_319_lstm_cell_319_kernel_v_read_readvariableopM
Isavev2_adam_lstm_319_lstm_cell_319_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_319_lstm_cell_319_bias_v_read_readvariableopC
?savev2_adam_lstm_320_lstm_cell_320_kernel_v_read_readvariableopM
Isavev2_adam_lstm_320_lstm_cell_320_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_320_lstm_cell_320_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B №
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_106_kernel_read_readvariableop)savev2_dense_106_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_318_lstm_cell_318_kernel_read_readvariableopBsavev2_lstm_318_lstm_cell_318_recurrent_kernel_read_readvariableop6savev2_lstm_318_lstm_cell_318_bias_read_readvariableop8savev2_lstm_319_lstm_cell_319_kernel_read_readvariableopBsavev2_lstm_319_lstm_cell_319_recurrent_kernel_read_readvariableop6savev2_lstm_319_lstm_cell_319_bias_read_readvariableop8savev2_lstm_320_lstm_cell_320_kernel_read_readvariableopBsavev2_lstm_320_lstm_cell_320_recurrent_kernel_read_readvariableop6savev2_lstm_320_lstm_cell_320_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_106_kernel_m_read_readvariableop0savev2_adam_dense_106_bias_m_read_readvariableop?savev2_adam_lstm_318_lstm_cell_318_kernel_m_read_readvariableopIsavev2_adam_lstm_318_lstm_cell_318_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_318_lstm_cell_318_bias_m_read_readvariableop?savev2_adam_lstm_319_lstm_cell_319_kernel_m_read_readvariableopIsavev2_adam_lstm_319_lstm_cell_319_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_319_lstm_cell_319_bias_m_read_readvariableop?savev2_adam_lstm_320_lstm_cell_320_kernel_m_read_readvariableopIsavev2_adam_lstm_320_lstm_cell_320_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_320_lstm_cell_320_bias_m_read_readvariableop2savev2_adam_dense_106_kernel_v_read_readvariableop0savev2_adam_dense_106_bias_v_read_readvariableop?savev2_adam_lstm_318_lstm_cell_318_kernel_v_read_readvariableopIsavev2_adam_lstm_318_lstm_cell_318_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_318_lstm_cell_318_bias_v_read_readvariableop?savev2_adam_lstm_319_lstm_cell_319_kernel_v_read_readvariableopIsavev2_adam_lstm_319_lstm_cell_319_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_319_lstm_cell_319_bias_v_read_readvariableop?savev2_adam_lstm_320_lstm_cell_320_kernel_v_read_readvariableopIsavev2_adam_lstm_320_lstm_cell_320_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_320_lstm_cell_320_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
8
а
while_body_543717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
ЮB
ъ

lstm_320_while_body_542622.
*lstm_320_while_lstm_320_while_loop_counter4
0lstm_320_while_lstm_320_while_maximum_iterations
lstm_320_while_placeholder 
lstm_320_while_placeholder_1 
lstm_320_while_placeholder_2 
lstm_320_while_placeholder_3-
)lstm_320_while_lstm_320_strided_slice_1_0i
elstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0:2(P
>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(K
=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0:(
lstm_320_while_identity
lstm_320_while_identity_1
lstm_320_while_identity_2
lstm_320_while_identity_3
lstm_320_while_identity_4
lstm_320_while_identity_5+
'lstm_320_while_lstm_320_strided_slice_1g
clstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensorL
:lstm_320_while_lstm_cell_89_matmul_readvariableop_resource:2(N
<lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource:
(I
;lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpЂ1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpЂ3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp
@lstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_320/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0lstm_320_while_placeholderIlstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_320/while/lstm_cell_89/MatMulMatMul9lstm_320/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_320/while/lstm_cell_89/MatMul_1MatMullstm_320_while_placeholder_2;lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_320/while/lstm_cell_89/addAddV2,lstm_320/while/lstm_cell_89/MatMul:product:0.lstm_320/while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_320/while/lstm_cell_89/BiasAddBiasAdd#lstm_320/while/lstm_cell_89/add:z:0:lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_320/while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_320/while/lstm_cell_89/splitSplit4lstm_320/while/lstm_cell_89/split/split_dim:output:0,lstm_320/while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_320/while/lstm_cell_89/SigmoidSigmoid*lstm_320/while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_320/while/lstm_cell_89/Sigmoid_1Sigmoid*lstm_320/while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_320/while/lstm_cell_89/mulMul)lstm_320/while/lstm_cell_89/Sigmoid_1:y:0lstm_320_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_320/while/lstm_cell_89/ReluRelu*lstm_320/while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_320/while/lstm_cell_89/mul_1Mul'lstm_320/while/lstm_cell_89/Sigmoid:y:0.lstm_320/while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_320/while/lstm_cell_89/add_1AddV2#lstm_320/while/lstm_cell_89/mul:z:0%lstm_320/while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_320/while/lstm_cell_89/Sigmoid_2Sigmoid*lstm_320/while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_320/while/lstm_cell_89/Relu_1Relu%lstm_320/while/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_320/while/lstm_cell_89/mul_2Mul)lstm_320/while/lstm_cell_89/Sigmoid_2:y:00lstm_320/while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_320/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_320_while_placeholder_1lstm_320_while_placeholder%lstm_320/while/lstm_cell_89/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_320/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_320/while/addAddV2lstm_320_while_placeholderlstm_320/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_320/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_320/while/add_1AddV2*lstm_320_while_lstm_320_while_loop_counterlstm_320/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_320/while/IdentityIdentitylstm_320/while/add_1:z:0^lstm_320/while/NoOp*
T0*
_output_shapes
: 
lstm_320/while/Identity_1Identity0lstm_320_while_lstm_320_while_maximum_iterations^lstm_320/while/NoOp*
T0*
_output_shapes
: t
lstm_320/while/Identity_2Identitylstm_320/while/add:z:0^lstm_320/while/NoOp*
T0*
_output_shapes
: Ё
lstm_320/while/Identity_3IdentityClstm_320/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_320/while/NoOp*
T0*
_output_shapes
: 
lstm_320/while/Identity_4Identity%lstm_320/while/lstm_cell_89/mul_2:z:0^lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/while/Identity_5Identity%lstm_320/while/lstm_cell_89/add_1:z:0^lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_320/while/NoOpNoOp3^lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2^lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp4^lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_320_while_identity lstm_320/while/Identity:output:0"?
lstm_320_while_identity_1"lstm_320/while/Identity_1:output:0"?
lstm_320_while_identity_2"lstm_320/while/Identity_2:output:0"?
lstm_320_while_identity_3"lstm_320/while/Identity_3:output:0"?
lstm_320_while_identity_4"lstm_320/while/Identity_4:output:0"?
lstm_320_while_identity_5"lstm_320/while/Identity_5:output:0"T
'lstm_320_while_lstm_320_strided_slice_1)lstm_320_while_lstm_320_strided_slice_1_0"|
;lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource=lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0"~
<lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource>lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0"z
:lstm_320_while_lstm_cell_89_matmul_readvariableop_resource<lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0"Ь
clstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensorelstm_320_while_tensorarrayv2read_tensorlistgetitem_lstm_320_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2f
1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp1lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp2j
3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp3lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
ц"
у
while_body_540166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_88_540190_0:	dШ.
while_lstm_cell_88_540192_0:	2Ш*
while_lstm_cell_88_540194_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_88_540190:	dШ,
while_lstm_cell_88_540192:	2Ш(
while_lstm_cell_88_540194:	ШЂ*while/lstm_cell_88/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_88/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_88_540190_0while_lstm_cell_88_540192_0while_lstm_cell_88_540194_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_540107м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_88/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_88/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_88/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_88/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_88_540190while_lstm_cell_88_540190_0"8
while_lstm_cell_88_540192while_lstm_cell_88_540192_0"8
while_lstm_cell_88_540194while_lstm_cell_88_540194_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_88/StatefulPartitionedCall*while/lstm_cell_88/StatefulPartitionedCall: 
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
ж
Ѓ
)sequential_106_lstm_318_while_cond_539175L
Hsequential_106_lstm_318_while_sequential_106_lstm_318_while_loop_counterR
Nsequential_106_lstm_318_while_sequential_106_lstm_318_while_maximum_iterations-
)sequential_106_lstm_318_while_placeholder/
+sequential_106_lstm_318_while_placeholder_1/
+sequential_106_lstm_318_while_placeholder_2/
+sequential_106_lstm_318_while_placeholder_3N
Jsequential_106_lstm_318_while_less_sequential_106_lstm_318_strided_slice_1d
`sequential_106_lstm_318_while_sequential_106_lstm_318_while_cond_539175___redundant_placeholder0d
`sequential_106_lstm_318_while_sequential_106_lstm_318_while_cond_539175___redundant_placeholder1d
`sequential_106_lstm_318_while_sequential_106_lstm_318_while_cond_539175___redundant_placeholder2d
`sequential_106_lstm_318_while_sequential_106_lstm_318_while_cond_539175___redundant_placeholder3*
&sequential_106_lstm_318_while_identity
Т
"sequential_106/lstm_318/while/LessLess)sequential_106_lstm_318_while_placeholderJsequential_106_lstm_318_while_less_sequential_106_lstm_318_strided_slice_1*
T0*
_output_shapes
: {
&sequential_106/lstm_318/while/IdentityIdentity&sequential_106/lstm_318/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_106_lstm_318_while_identity/sequential_106/lstm_318/while/Identity:output:0*(
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
н

H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544743

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
Ш	
і
E__inference_dense_106_layer_call_and_return_conditional_losses_544579

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
ц"
у
while_body_539816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_87_539840_0:	.
while_lstm_cell_87_539842_0:	d*
while_lstm_cell_87_539844_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_87_539840:	,
while_lstm_cell_87_539842:	d(
while_lstm_cell_87_539844:	Ђ*while/lstm_cell_87/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_87/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_87_539840_0while_lstm_cell_87_539842_0while_lstm_cell_87_539844_0*
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539757м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_87/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_87/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_87/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_87/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_87_539840while_lstm_cell_87_539840_0"8
while_lstm_cell_87_539842while_lstm_cell_87_539842_0"8
while_lstm_cell_87_539844while_lstm_cell_87_539844_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_87/StatefulPartitionedCall*while/lstm_cell_87/StatefulPartitionedCall: 
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
є

Ѓ
/__inference_sequential_106_layer_call_fn_541093
lstm_318_input
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
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCalllstm_318_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_106_layer_call_and_return_conditional_losses_541068o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
Я
ї
J__inference_sequential_106_layer_call_and_return_conditional_losses_541769
lstm_318_input"
lstm_318_541742:	"
lstm_318_541744:	d
lstm_318_541746:	"
lstm_319_541749:	dШ"
lstm_319_541751:	2Ш
lstm_319_541753:	Ш!
lstm_320_541756:2(!
lstm_320_541758:
(
lstm_320_541760:("
dense_106_541763:

dense_106_541765:
identityЂ!dense_106/StatefulPartitionedCallЂ lstm_318/StatefulPartitionedCallЂ lstm_319/StatefulPartitionedCallЂ lstm_320/StatefulPartitionedCall
 lstm_318/StatefulPartitionedCallStatefulPartitionedCalllstm_318_inputlstm_318_541742lstm_318_541744lstm_318_541746*
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_541589Њ
 lstm_319/StatefulPartitionedCallStatefulPartitionedCall)lstm_318/StatefulPartitionedCall:output:0lstm_319_541749lstm_319_541751lstm_319_541753*
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_541424І
 lstm_320/StatefulPartitionedCallStatefulPartitionedCall)lstm_319/StatefulPartitionedCall:output:0lstm_320_541756lstm_320_541758lstm_320_541760*
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541259
!dense_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_320/StatefulPartitionedCall:output:0dense_106_541763dense_106_541765*
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
GPU 2J 8 *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_541061y
IdentityIdentity*dense_106/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_106/StatefulPartitionedCall!^lstm_318/StatefulPartitionedCall!^lstm_319/StatefulPartitionedCall!^lstm_320/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2D
 lstm_318/StatefulPartitionedCall lstm_318/StatefulPartitionedCall2D
 lstm_319/StatefulPartitionedCall lstm_319/StatefulPartitionedCall2D
 lstm_320/StatefulPartitionedCall lstm_320/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
8
а
while_body_543574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
џ7
Ъ
while_body_544476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
ЄJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_540893

inputs>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_540809*
condR
while_cond_540808*K
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
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ы

H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540311

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
џ7
Ъ
while_body_541175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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

Е
)__inference_lstm_320_layer_call_fn_543955
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_540394o
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
р"
н
while_body_540325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_89_540349_0:2(-
while_lstm_cell_89_540351_0:
()
while_lstm_cell_89_540353_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_89_540349:2(+
while_lstm_cell_89_540351:
('
while_lstm_cell_89_540353:(Ђ*while/lstm_cell_89/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_89/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_89_540349_0while_lstm_cell_89_540351_0while_lstm_cell_89_540353_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540311м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_89/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_89/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_89/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_89_540349while_lstm_cell_89_540349_0"8
while_lstm_cell_89_540351while_lstm_cell_89_540351_0"8
while_lstm_cell_89_540353while_lstm_cell_89_540353_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_89/StatefulPartitionedCall*while/lstm_cell_89/StatefulPartitionedCall: 
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
Ф

*__inference_dense_106_layer_call_fn_544569

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallк
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
GPU 2J 8 *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_541061o
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
Ш	
і
E__inference_dense_106_layer_call_and_return_conditional_losses_541061

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
г

H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544841

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
Е
У
while_cond_542957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_542957___redundant_placeholder04
0while_while_cond_542957___redundant_placeholder14
0while_while_cond_542957___redundant_placeholder24
0while_while_cond_542957___redundant_placeholder3
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
Е
У
while_cond_539815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_539815___redundant_placeholder04
0while_while_cond_539815___redundant_placeholder14
0while_while_cond_539815___redundant_placeholder24
0while_while_cond_539815___redundant_placeholder3
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
тJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_543515
inputs_0>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_543431*
condR
while_cond_543430*K
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
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
лB
№

lstm_318_while_body_541917.
*lstm_318_while_lstm_318_while_loop_counter4
0lstm_318_while_lstm_318_while_maximum_iterations
lstm_318_while_placeholder 
lstm_318_while_placeholder_1 
lstm_318_while_placeholder_2 
lstm_318_while_placeholder_3-
)lstm_318_while_lstm_318_strided_slice_1_0i
elstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0:	Q
>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dL
=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0:	
lstm_318_while_identity
lstm_318_while_identity_1
lstm_318_while_identity_2
lstm_318_while_identity_3
lstm_318_while_identity_4
lstm_318_while_identity_5+
'lstm_318_while_lstm_318_strided_slice_1g
clstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensorM
:lstm_318_while_lstm_cell_87_matmul_readvariableop_resource:	O
<lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource:	dJ
;lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpЂ1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpЂ3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp
@lstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   г
2lstm_318/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0lstm_318_while_placeholderIlstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0е
"lstm_318/while/lstm_cell_87/MatMulMatMul9lstm_318/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0М
$lstm_318/while/lstm_cell_87/MatMul_1MatMullstm_318_while_placeholder_2;lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_318/while/lstm_cell_87/addAddV2,lstm_318/while/lstm_cell_87/MatMul:product:0.lstm_318/while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_318/while/lstm_cell_87/BiasAddBiasAdd#lstm_318/while/lstm_cell_87/add:z:0:lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_318/while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_318/while/lstm_cell_87/splitSplit4lstm_318/while/lstm_cell_87/split/split_dim:output:0,lstm_318/while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_318/while/lstm_cell_87/SigmoidSigmoid*lstm_318/while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_318/while/lstm_cell_87/Sigmoid_1Sigmoid*lstm_318/while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_318/while/lstm_cell_87/mulMul)lstm_318/while/lstm_cell_87/Sigmoid_1:y:0lstm_318_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_318/while/lstm_cell_87/ReluRelu*lstm_318/while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_318/while/lstm_cell_87/mul_1Mul'lstm_318/while/lstm_cell_87/Sigmoid:y:0.lstm_318/while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_318/while/lstm_cell_87/add_1AddV2#lstm_318/while/lstm_cell_87/mul:z:0%lstm_318/while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_318/while/lstm_cell_87/Sigmoid_2Sigmoid*lstm_318/while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_318/while/lstm_cell_87/Relu_1Relu%lstm_318/while/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_318/while/lstm_cell_87/mul_2Mul)lstm_318/while/lstm_cell_87/Sigmoid_2:y:00lstm_318/while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdщ
3lstm_318/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_318_while_placeholder_1lstm_318_while_placeholder%lstm_318/while/lstm_cell_87/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_318/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_318/while/addAddV2lstm_318_while_placeholderlstm_318/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_318/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_318/while/add_1AddV2*lstm_318_while_lstm_318_while_loop_counterlstm_318/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_318/while/IdentityIdentitylstm_318/while/add_1:z:0^lstm_318/while/NoOp*
T0*
_output_shapes
: 
lstm_318/while/Identity_1Identity0lstm_318_while_lstm_318_while_maximum_iterations^lstm_318/while/NoOp*
T0*
_output_shapes
: t
lstm_318/while/Identity_2Identitylstm_318/while/add:z:0^lstm_318/while/NoOp*
T0*
_output_shapes
: Ё
lstm_318/while/Identity_3IdentityClstm_318/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_318/while/NoOp*
T0*
_output_shapes
: 
lstm_318/while/Identity_4Identity%lstm_318/while/lstm_cell_87/mul_2:z:0^lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/while/Identity_5Identity%lstm_318/while/lstm_cell_87/add_1:z:0^lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdє
lstm_318/while/NoOpNoOp3^lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2^lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp4^lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_318_while_identity lstm_318/while/Identity:output:0"?
lstm_318_while_identity_1"lstm_318/while/Identity_1:output:0"?
lstm_318_while_identity_2"lstm_318/while/Identity_2:output:0"?
lstm_318_while_identity_3"lstm_318/while/Identity_3:output:0"?
lstm_318_while_identity_4"lstm_318/while/Identity_4:output:0"?
lstm_318_while_identity_5"lstm_318/while/Identity_5:output:0"T
'lstm_318_while_lstm_318_strided_slice_1)lstm_318_while_lstm_318_strided_slice_1_0"|
;lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0"~
<lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0"z
:lstm_318_while_lstm_cell_87_matmul_readvariableop_resource<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0"Ь
clstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensorelstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2f
1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp2j
3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_544475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_544475___redundant_placeholder04
0while_while_cond_544475___redundant_placeholder14
0while_while_cond_544475___redundant_placeholder24
0while_while_cond_544475___redundant_placeholder3
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
ЄJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_543801

inputs>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_543717*
condR
while_cond_543716*K
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
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Я
ї
J__inference_sequential_106_layer_call_and_return_conditional_losses_541739
lstm_318_input"
lstm_318_541712:	"
lstm_318_541714:	d
lstm_318_541716:	"
lstm_319_541719:	dШ"
lstm_319_541721:	2Ш
lstm_319_541723:	Ш!
lstm_320_541726:2(!
lstm_320_541728:
(
lstm_320_541730:("
dense_106_541733:

dense_106_541735:
identityЂ!dense_106/StatefulPartitionedCallЂ lstm_318/StatefulPartitionedCallЂ lstm_319/StatefulPartitionedCallЂ lstm_320/StatefulPartitionedCall
 lstm_318/StatefulPartitionedCallStatefulPartitionedCalllstm_318_inputlstm_318_541712lstm_318_541714lstm_318_541716*
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_540743Њ
 lstm_319/StatefulPartitionedCallStatefulPartitionedCall)lstm_318/StatefulPartitionedCall:output:0lstm_319_541719lstm_319_541721lstm_319_541723*
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_540893І
 lstm_320/StatefulPartitionedCallStatefulPartitionedCall)lstm_319/StatefulPartitionedCall:output:0lstm_320_541726lstm_320_541728lstm_320_541730*
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541043
!dense_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_320/StatefulPartitionedCall:output:0dense_106_541733dense_106_541735*
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
GPU 2J 8 *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_541061y
IdentityIdentity*dense_106/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_106/StatefulPartitionedCall!^lstm_318/StatefulPartitionedCall!^lstm_319/StatefulPartitionedCall!^lstm_320/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2D
 lstm_318/StatefulPartitionedCall lstm_318/StatefulPartitionedCall2D
 lstm_319/StatefulPartitionedCall lstm_319/StatefulPartitionedCall2D
 lstm_320/StatefulPartitionedCall lstm_320/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
дJ

D__inference_lstm_320_layer_call_and_return_conditional_losses_544274
inputs_0=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile=
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_544190*
condR
while_cond_544189*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
Е
У
while_cond_540165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540165___redundant_placeholder04
0while_while_cond_540165___redundant_placeholder14
0while_while_cond_540165___redundant_placeholder24
0while_while_cond_540165___redundant_placeholder3
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
џ7
Ъ
while_body_544047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_544332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_544332___redundant_placeholder04
0while_while_cond_544332___redundant_placeholder14
0while_while_cond_544332___redundant_placeholder24
0while_while_cond_544332___redundant_placeholder3
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
8
а
while_body_541340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
ж
Ѓ
)sequential_106_lstm_319_while_cond_539314L
Hsequential_106_lstm_319_while_sequential_106_lstm_319_while_loop_counterR
Nsequential_106_lstm_319_while_sequential_106_lstm_319_while_maximum_iterations-
)sequential_106_lstm_319_while_placeholder/
+sequential_106_lstm_319_while_placeholder_1/
+sequential_106_lstm_319_while_placeholder_2/
+sequential_106_lstm_319_while_placeholder_3N
Jsequential_106_lstm_319_while_less_sequential_106_lstm_319_strided_slice_1d
`sequential_106_lstm_319_while_sequential_106_lstm_319_while_cond_539314___redundant_placeholder0d
`sequential_106_lstm_319_while_sequential_106_lstm_319_while_cond_539314___redundant_placeholder1d
`sequential_106_lstm_319_while_sequential_106_lstm_319_while_cond_539314___redundant_placeholder2d
`sequential_106_lstm_319_while_sequential_106_lstm_319_while_cond_539314___redundant_placeholder3*
&sequential_106_lstm_319_while_identity
Т
"sequential_106/lstm_319/while/LessLess)sequential_106_lstm_319_while_placeholderJsequential_106_lstm_319_while_less_sequential_106_lstm_319_strided_slice_1*
T0*
_output_shapes
: {
&sequential_106/lstm_319/while/IdentityIdentity&sequential_106/lstm_319/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_106_lstm_319_while_identity/sequential_106/lstm_319/while/Identity:output:0*(
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
р"
н
while_body_540516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_89_540540_0:2(-
while_lstm_cell_89_540542_0:
()
while_lstm_cell_89_540544_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_89_540540:2(+
while_lstm_cell_89_540542:
('
while_lstm_cell_89_540544:(Ђ*while/lstm_cell_89/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_89/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_89_540540_0while_lstm_cell_89_540542_0while_lstm_cell_89_540544_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540457м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_89/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_89/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_89/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_89_540540while_lstm_cell_89_540540_0"8
while_lstm_cell_89_540542while_lstm_cell_89_540542_0"8
while_lstm_cell_89_540544while_lstm_cell_89_540544_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_89/StatefulPartitionedCall*while/lstm_cell_89/StatefulPartitionedCall: 
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
8

D__inference_lstm_320_layer_call_and_return_conditional_losses_540585

inputs%
lstm_cell_89_540503:2(%
lstm_cell_89_540505:
(!
lstm_cell_89_540507:(
identityЂ$lstm_cell_89/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_89/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_89_540503lstm_cell_89_540505lstm_cell_89_540507*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_540457n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_89_540503lstm_cell_89_540505lstm_cell_89_540507*
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
bodyR
while_body_540516*
condR
while_cond_540515*K
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
u
NoOpNoOp%^lstm_cell_89/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_89/StatefulPartitionedCall$lstm_cell_89/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
J

D__inference_lstm_320_layer_call_and_return_conditional_losses_544560

inputs=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_544476*
condR
while_cond_544475*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ЖT
д
)sequential_106_lstm_318_while_body_539176L
Hsequential_106_lstm_318_while_sequential_106_lstm_318_while_loop_counterR
Nsequential_106_lstm_318_while_sequential_106_lstm_318_while_maximum_iterations-
)sequential_106_lstm_318_while_placeholder/
+sequential_106_lstm_318_while_placeholder_1/
+sequential_106_lstm_318_while_placeholder_2/
+sequential_106_lstm_318_while_placeholder_3K
Gsequential_106_lstm_318_while_sequential_106_lstm_318_strided_slice_1_0
sequential_106_lstm_318_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_318_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_106_lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0:	`
Msequential_106_lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0:	d[
Lsequential_106_lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0:	*
&sequential_106_lstm_318_while_identity,
(sequential_106_lstm_318_while_identity_1,
(sequential_106_lstm_318_while_identity_2,
(sequential_106_lstm_318_while_identity_3,
(sequential_106_lstm_318_while_identity_4,
(sequential_106_lstm_318_while_identity_5I
Esequential_106_lstm_318_while_sequential_106_lstm_318_strided_slice_1
sequential_106_lstm_318_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_318_tensorarrayunstack_tensorlistfromtensor\
Isequential_106_lstm_318_while_lstm_cell_87_matmul_readvariableop_resource:	^
Ksequential_106_lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource:	dY
Jsequential_106_lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource:	ЂAsequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpЂ@sequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpЂBsequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp 
Osequential_106/lstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Asequential_106/lstm_318/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_106_lstm_318_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_318_tensorarrayunstack_tensorlistfromtensor_0)sequential_106_lstm_318_while_placeholderXsequential_106/lstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Э
@sequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOpKsequential_106_lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_106/lstm_318/while/lstm_cell_87/MatMulMatMulHsequential_106/lstm_318/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџб
Bsequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOpMsequential_106_lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0щ
3sequential_106/lstm_318/while/lstm_cell_87/MatMul_1MatMul+sequential_106_lstm_318_while_placeholder_2Jsequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџц
.sequential_106/lstm_318/while/lstm_cell_87/addAddV2;sequential_106/lstm_318/while/lstm_cell_87/MatMul:product:0=sequential_106/lstm_318/while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЫ
Asequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOpLsequential_106_lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0я
2sequential_106/lstm_318/while/lstm_cell_87/BiasAddBiasAdd2sequential_106/lstm_318/while/lstm_cell_87/add:z:0Isequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ|
:sequential_106/lstm_318/while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_106/lstm_318/while/lstm_cell_87/splitSplitCsequential_106/lstm_318/while/lstm_cell_87/split/split_dim:output:0;sequential_106/lstm_318/while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitЊ
2sequential_106/lstm_318/while/lstm_cell_87/SigmoidSigmoid9sequential_106/lstm_318/while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЌ
4sequential_106/lstm_318/while/lstm_cell_87/Sigmoid_1Sigmoid9sequential_106/lstm_318/while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЮ
.sequential_106/lstm_318/while/lstm_cell_87/mulMul8sequential_106/lstm_318/while/lstm_cell_87/Sigmoid_1:y:0+sequential_106_lstm_318_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdЄ
/sequential_106/lstm_318/while/lstm_cell_87/ReluRelu9sequential_106/lstm_318/while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdр
0sequential_106/lstm_318/while/lstm_cell_87/mul_1Mul6sequential_106/lstm_318/while/lstm_cell_87/Sigmoid:y:0=sequential_106/lstm_318/while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdе
0sequential_106/lstm_318/while/lstm_cell_87/add_1AddV22sequential_106/lstm_318/while/lstm_cell_87/mul:z:04sequential_106/lstm_318/while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЌ
4sequential_106/lstm_318/while/lstm_cell_87/Sigmoid_2Sigmoid9sequential_106/lstm_318/while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdЁ
1sequential_106/lstm_318/while/lstm_cell_87/Relu_1Relu4sequential_106/lstm_318/while/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdф
0sequential_106/lstm_318/while/lstm_cell_87/mul_2Mul8sequential_106/lstm_318/while/lstm_cell_87/Sigmoid_2:y:0?sequential_106/lstm_318/while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
Bsequential_106/lstm_318/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_106_lstm_318_while_placeholder_1)sequential_106_lstm_318_while_placeholder4sequential_106/lstm_318/while/lstm_cell_87/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_106/lstm_318/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_106/lstm_318/while/addAddV2)sequential_106_lstm_318_while_placeholder,sequential_106/lstm_318/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_106/lstm_318/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_106/lstm_318/while/add_1AddV2Hsequential_106_lstm_318_while_sequential_106_lstm_318_while_loop_counter.sequential_106/lstm_318/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_106/lstm_318/while/IdentityIdentity'sequential_106/lstm_318/while/add_1:z:0#^sequential_106/lstm_318/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_106/lstm_318/while/Identity_1IdentityNsequential_106_lstm_318_while_sequential_106_lstm_318_while_maximum_iterations#^sequential_106/lstm_318/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_106/lstm_318/while/Identity_2Identity%sequential_106/lstm_318/while/add:z:0#^sequential_106/lstm_318/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_106/lstm_318/while/Identity_3IdentityRsequential_106/lstm_318/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_106/lstm_318/while/NoOp*
T0*
_output_shapes
: С
(sequential_106/lstm_318/while/Identity_4Identity4sequential_106/lstm_318/while/lstm_cell_87/mul_2:z:0#^sequential_106/lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdС
(sequential_106/lstm_318/while/Identity_5Identity4sequential_106/lstm_318/while/lstm_cell_87/add_1:z:0#^sequential_106/lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdА
"sequential_106/lstm_318/while/NoOpNoOpB^sequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpA^sequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpC^sequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_106_lstm_318_while_identity/sequential_106/lstm_318/while/Identity:output:0"]
(sequential_106_lstm_318_while_identity_11sequential_106/lstm_318/while/Identity_1:output:0"]
(sequential_106_lstm_318_while_identity_21sequential_106/lstm_318/while/Identity_2:output:0"]
(sequential_106_lstm_318_while_identity_31sequential_106/lstm_318/while/Identity_3:output:0"]
(sequential_106_lstm_318_while_identity_41sequential_106/lstm_318/while/Identity_4:output:0"]
(sequential_106_lstm_318_while_identity_51sequential_106/lstm_318/while/Identity_5:output:0"
Jsequential_106_lstm_318_while_lstm_cell_87_biasadd_readvariableop_resourceLsequential_106_lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0"
Ksequential_106_lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resourceMsequential_106_lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0"
Isequential_106_lstm_318_while_lstm_cell_87_matmul_readvariableop_resourceKsequential_106_lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0"
Esequential_106_lstm_318_while_sequential_106_lstm_318_strided_slice_1Gsequential_106_lstm_318_while_sequential_106_lstm_318_strided_slice_1_0"
sequential_106_lstm_318_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_318_tensorarrayunstack_tensorlistfromtensorsequential_106_lstm_318_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_318_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
Asequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpAsequential_106/lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2
@sequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp@sequential_106/lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp2
Bsequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOpBsequential_106/lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
ы
і
-__inference_lstm_cell_88_layer_call_fn_544694

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_539961o
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
J

D__inference_lstm_320_layer_call_and_return_conditional_losses_541259

inputs=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_541175*
condR
while_cond_541174*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8
а
while_body_543244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
И
)__inference_lstm_318_layer_call_fn_542723
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_539694|
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

Ж
)__inference_lstm_319_layer_call_fn_543361

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
D__inference_lstm_319_layer_call_and_return_conditional_losses_540893s
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
і
Г
)__inference_lstm_320_layer_call_fn_543977

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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541043o
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
Е
У
while_cond_540658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540658___redundant_placeholder04
0while_while_cond_540658___redundant_placeholder14
0while_while_cond_540658___redundant_placeholder24
0while_while_cond_540658___redundant_placeholder3
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
В

ї
lstm_319_while_cond_542482.
*lstm_319_while_lstm_319_while_loop_counter4
0lstm_319_while_lstm_319_while_maximum_iterations
lstm_319_while_placeholder 
lstm_319_while_placeholder_1 
lstm_319_while_placeholder_2 
lstm_319_while_placeholder_30
,lstm_319_while_less_lstm_319_strided_slice_1F
Blstm_319_while_lstm_319_while_cond_542482___redundant_placeholder0F
Blstm_319_while_lstm_319_while_cond_542482___redundant_placeholder1F
Blstm_319_while_lstm_319_while_cond_542482___redundant_placeholder2F
Blstm_319_while_lstm_319_while_cond_542482___redundant_placeholder3
lstm_319_while_identity

lstm_319/while/LessLesslstm_319_while_placeholder,lstm_319_while_less_lstm_319_strided_slice_1*
T0*
_output_shapes
: ]
lstm_319/while/IdentityIdentitylstm_319/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_319_while_identity lstm_319/while/Identity:output:0*(
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
8
а
while_body_543431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
J

D__inference_lstm_320_layer_call_and_return_conditional_losses_541043

inputs=
+lstm_cell_89_matmul_readvariableop_resource:2(?
-lstm_cell_89_matmul_1_readvariableop_resource:
(:
,lstm_cell_89_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_89/BiasAdd/ReadVariableOpЂ"lstm_cell_89/MatMul/ReadVariableOpЂ$lstm_cell_89/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_89/MatMul/ReadVariableOpReadVariableOp+lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_89/MatMulMatMulstrided_slice_2:output:0*lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_89/MatMul_1MatMulzeros:output:0,lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_89/addAddV2lstm_cell_89/MatMul:product:0lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_89/BiasAddBiasAddlstm_cell_89/add:z:0+lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_89/splitSplit%lstm_cell_89/split/split_dim:output:0lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_89/SigmoidSigmoidlstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_1Sigmoidlstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_89/mulMullstm_cell_89/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_89/ReluRelulstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_1Mullstm_cell_89/Sigmoid:y:0lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_89/add_1AddV2lstm_cell_89/mul:z:0lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_89/Sigmoid_2Sigmoidlstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_89/Relu_1Relulstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_89/mul_2Mullstm_cell_89/Sigmoid_2:y:0!lstm_cell_89/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_89_matmul_readvariableop_resource-lstm_cell_89_matmul_1_readvariableop_resource,lstm_cell_89_biasadd_readvariableop_resource*
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
bodyR
while_body_540959*
condR
while_cond_540958*K
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
Р
NoOpNoOp$^lstm_cell_89/BiasAdd/ReadVariableOp#^lstm_cell_89/MatMul/ReadVariableOp%^lstm_cell_89/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_89/BiasAdd/ReadVariableOp#lstm_cell_89/BiasAdd/ReadVariableOp2H
"lstm_cell_89/MatMul/ReadVariableOp"lstm_cell_89/MatMul/ReadVariableOp2L
$lstm_cell_89/MatMul_1/ReadVariableOp$lstm_cell_89/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8
а
while_body_542958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
8
а
while_body_540659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
8

D__inference_lstm_319_layer_call_and_return_conditional_losses_540044

inputs&
lstm_cell_88_539962:	dШ&
lstm_cell_88_539964:	2Ш"
lstm_cell_88_539966:	Ш
identityЂ$lstm_cell_88/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_88/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_88_539962lstm_cell_88_539964lstm_cell_88_539966*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_539961n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_88_539962lstm_cell_88_539964lstm_cell_88_539966*
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
bodyR
while_body_539975*
condR
while_cond_539974*K
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
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_88/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_88/StatefulPartitionedCall$lstm_cell_88/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
Е
У
while_cond_543243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543243___redundant_placeholder04
0while_while_cond_543243___redundant_placeholder14
0while_while_cond_543243___redundant_placeholder24
0while_while_cond_543243___redundant_placeholder3
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
К
о
!__inference__wrapped_model_539544
lstm_318_inputV
Csequential_106_lstm_318_lstm_cell_87_matmul_readvariableop_resource:	X
Esequential_106_lstm_318_lstm_cell_87_matmul_1_readvariableop_resource:	dS
Dsequential_106_lstm_318_lstm_cell_87_biasadd_readvariableop_resource:	V
Csequential_106_lstm_319_lstm_cell_88_matmul_readvariableop_resource:	dШX
Esequential_106_lstm_319_lstm_cell_88_matmul_1_readvariableop_resource:	2ШS
Dsequential_106_lstm_319_lstm_cell_88_biasadd_readvariableop_resource:	ШU
Csequential_106_lstm_320_lstm_cell_89_matmul_readvariableop_resource:2(W
Esequential_106_lstm_320_lstm_cell_89_matmul_1_readvariableop_resource:
(R
Dsequential_106_lstm_320_lstm_cell_89_biasadd_readvariableop_resource:(I
7sequential_106_dense_106_matmul_readvariableop_resource:
F
8sequential_106_dense_106_biasadd_readvariableop_resource:
identityЂ/sequential_106/dense_106/BiasAdd/ReadVariableOpЂ.sequential_106/dense_106/MatMul/ReadVariableOpЂ;sequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpЂ:sequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOpЂ<sequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpЂsequential_106/lstm_318/whileЂ;sequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpЂ:sequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOpЂ<sequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpЂsequential_106/lstm_319/whileЂ;sequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpЂ:sequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOpЂ<sequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpЂsequential_106/lstm_320/while[
sequential_106/lstm_318/ShapeShapelstm_318_input*
T0*
_output_shapes
:u
+sequential_106/lstm_318/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_106/lstm_318/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_106/lstm_318/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_106/lstm_318/strided_sliceStridedSlice&sequential_106/lstm_318/Shape:output:04sequential_106/lstm_318/strided_slice/stack:output:06sequential_106/lstm_318/strided_slice/stack_1:output:06sequential_106/lstm_318/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_106/lstm_318/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
$sequential_106/lstm_318/zeros/packedPack.sequential_106/lstm_318/strided_slice:output:0/sequential_106/lstm_318/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_106/lstm_318/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_106/lstm_318/zerosFill-sequential_106/lstm_318/zeros/packed:output:0,sequential_106/lstm_318/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
(sequential_106/lstm_318/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
&sequential_106/lstm_318/zeros_1/packedPack.sequential_106/lstm_318/strided_slice:output:01sequential_106/lstm_318/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_106/lstm_318/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_106/lstm_318/zeros_1Fill/sequential_106/lstm_318/zeros_1/packed:output:0.sequential_106/lstm_318/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd{
&sequential_106/lstm_318/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
!sequential_106/lstm_318/transpose	Transposelstm_318_input/sequential_106/lstm_318/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџt
sequential_106/lstm_318/Shape_1Shape%sequential_106/lstm_318/transpose:y:0*
T0*
_output_shapes
:w
-sequential_106/lstm_318/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_318/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_318/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_106/lstm_318/strided_slice_1StridedSlice(sequential_106/lstm_318/Shape_1:output:06sequential_106/lstm_318/strided_slice_1/stack:output:08sequential_106/lstm_318/strided_slice_1/stack_1:output:08sequential_106/lstm_318/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_106/lstm_318/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_106/lstm_318/TensorArrayV2TensorListReserve<sequential_106/lstm_318/TensorArrayV2/element_shape:output:00sequential_106/lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_106/lstm_318/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ј
?sequential_106/lstm_318/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_106/lstm_318/transpose:y:0Vsequential_106/lstm_318/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_106/lstm_318/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_318/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_318/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_106/lstm_318/strided_slice_2StridedSlice%sequential_106/lstm_318/transpose:y:06sequential_106/lstm_318/strided_slice_2/stack:output:08sequential_106/lstm_318/strided_slice_2/stack_1:output:08sequential_106/lstm_318/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskП
:sequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOpReadVariableOpCsequential_106_lstm_318_lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0о
+sequential_106/lstm_318/lstm_cell_87/MatMulMatMul0sequential_106/lstm_318/strided_slice_2:output:0Bsequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџУ
<sequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOpEsequential_106_lstm_318_lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0и
-sequential_106/lstm_318/lstm_cell_87/MatMul_1MatMul&sequential_106/lstm_318/zeros:output:0Dsequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд
(sequential_106/lstm_318/lstm_cell_87/addAddV25sequential_106/lstm_318/lstm_cell_87/MatMul:product:07sequential_106/lstm_318/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџН
;sequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOpDsequential_106_lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0н
,sequential_106/lstm_318/lstm_cell_87/BiasAddBiasAdd,sequential_106/lstm_318/lstm_cell_87/add:z:0Csequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџv
4sequential_106/lstm_318/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_106/lstm_318/lstm_cell_87/splitSplit=sequential_106/lstm_318/lstm_cell_87/split/split_dim:output:05sequential_106/lstm_318/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
,sequential_106/lstm_318/lstm_cell_87/SigmoidSigmoid3sequential_106/lstm_318/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd 
.sequential_106/lstm_318/lstm_cell_87/Sigmoid_1Sigmoid3sequential_106/lstm_318/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdП
(sequential_106/lstm_318/lstm_cell_87/mulMul2sequential_106/lstm_318/lstm_cell_87/Sigmoid_1:y:0(sequential_106/lstm_318/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_106/lstm_318/lstm_cell_87/ReluRelu3sequential_106/lstm_318/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЮ
*sequential_106/lstm_318/lstm_cell_87/mul_1Mul0sequential_106/lstm_318/lstm_cell_87/Sigmoid:y:07sequential_106/lstm_318/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdУ
*sequential_106/lstm_318/lstm_cell_87/add_1AddV2,sequential_106/lstm_318/lstm_cell_87/mul:z:0.sequential_106/lstm_318/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd 
.sequential_106/lstm_318/lstm_cell_87/Sigmoid_2Sigmoid3sequential_106/lstm_318/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
+sequential_106/lstm_318/lstm_cell_87/Relu_1Relu.sequential_106/lstm_318/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdв
*sequential_106/lstm_318/lstm_cell_87/mul_2Mul2sequential_106/lstm_318/lstm_cell_87/Sigmoid_2:y:09sequential_106/lstm_318/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
5sequential_106/lstm_318/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
'sequential_106/lstm_318/TensorArrayV2_1TensorListReserve>sequential_106/lstm_318/TensorArrayV2_1/element_shape:output:00sequential_106/lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_106/lstm_318/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_106/lstm_318/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_106/lstm_318/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_106/lstm_318/whileWhile3sequential_106/lstm_318/while/loop_counter:output:09sequential_106/lstm_318/while/maximum_iterations:output:0%sequential_106/lstm_318/time:output:00sequential_106/lstm_318/TensorArrayV2_1:handle:0&sequential_106/lstm_318/zeros:output:0(sequential_106/lstm_318/zeros_1:output:00sequential_106/lstm_318/strided_slice_1:output:0Osequential_106/lstm_318/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_106_lstm_318_lstm_cell_87_matmul_readvariableop_resourceEsequential_106_lstm_318_lstm_cell_87_matmul_1_readvariableop_resourceDsequential_106_lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_106_lstm_318_while_body_539176*5
cond-R+
)sequential_106_lstm_318_while_cond_539175*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Hsequential_106/lstm_318/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
:sequential_106/lstm_318/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_106/lstm_318/while:output:3Qsequential_106/lstm_318/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0
-sequential_106/lstm_318/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_106/lstm_318/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_318/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_106/lstm_318/strided_slice_3StridedSliceCsequential_106/lstm_318/TensorArrayV2Stack/TensorListStack:tensor:06sequential_106/lstm_318/strided_slice_3/stack:output:08sequential_106/lstm_318/strided_slice_3/stack_1:output:08sequential_106/lstm_318/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask}
(sequential_106/lstm_318/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_106/lstm_318/transpose_1	TransposeCsequential_106/lstm_318/TensorArrayV2Stack/TensorListStack:tensor:01sequential_106/lstm_318/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџds
sequential_106/lstm_318/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_106/lstm_319/ShapeShape'sequential_106/lstm_318/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_106/lstm_319/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_106/lstm_319/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_106/lstm_319/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_106/lstm_319/strided_sliceStridedSlice&sequential_106/lstm_319/Shape:output:04sequential_106/lstm_319/strided_slice/stack:output:06sequential_106/lstm_319/strided_slice/stack_1:output:06sequential_106/lstm_319/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_106/lstm_319/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Л
$sequential_106/lstm_319/zeros/packedPack.sequential_106/lstm_319/strided_slice:output:0/sequential_106/lstm_319/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_106/lstm_319/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_106/lstm_319/zerosFill-sequential_106/lstm_319/zeros/packed:output:0,sequential_106/lstm_319/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
(sequential_106/lstm_319/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2П
&sequential_106/lstm_319/zeros_1/packedPack.sequential_106/lstm_319/strided_slice:output:01sequential_106/lstm_319/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_106/lstm_319/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_106/lstm_319/zeros_1Fill/sequential_106/lstm_319/zeros_1/packed:output:0.sequential_106/lstm_319/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
&sequential_106/lstm_319/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
!sequential_106/lstm_319/transpose	Transpose'sequential_106/lstm_318/transpose_1:y:0/sequential_106/lstm_319/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdt
sequential_106/lstm_319/Shape_1Shape%sequential_106/lstm_319/transpose:y:0*
T0*
_output_shapes
:w
-sequential_106/lstm_319/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_319/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_319/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_106/lstm_319/strided_slice_1StridedSlice(sequential_106/lstm_319/Shape_1:output:06sequential_106/lstm_319/strided_slice_1/stack:output:08sequential_106/lstm_319/strided_slice_1/stack_1:output:08sequential_106/lstm_319/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_106/lstm_319/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_106/lstm_319/TensorArrayV2TensorListReserve<sequential_106/lstm_319/TensorArrayV2/element_shape:output:00sequential_106/lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_106/lstm_319/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ј
?sequential_106/lstm_319/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_106/lstm_319/transpose:y:0Vsequential_106/lstm_319/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_106/lstm_319/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_319/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_319/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_106/lstm_319/strided_slice_2StridedSlice%sequential_106/lstm_319/transpose:y:06sequential_106/lstm_319/strided_slice_2/stack:output:08sequential_106/lstm_319/strided_slice_2/stack_1:output:08sequential_106/lstm_319/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskП
:sequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOpReadVariableOpCsequential_106_lstm_319_lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0о
+sequential_106/lstm_319/lstm_cell_88/MatMulMatMul0sequential_106/lstm_319/strided_slice_2:output:0Bsequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШУ
<sequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOpEsequential_106_lstm_319_lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0и
-sequential_106/lstm_319/lstm_cell_88/MatMul_1MatMul&sequential_106/lstm_319/zeros:output:0Dsequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШд
(sequential_106/lstm_319/lstm_cell_88/addAddV25sequential_106/lstm_319/lstm_cell_88/MatMul:product:07sequential_106/lstm_319/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШН
;sequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOpDsequential_106_lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0н
,sequential_106/lstm_319/lstm_cell_88/BiasAddBiasAdd,sequential_106/lstm_319/lstm_cell_88/add:z:0Csequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШv
4sequential_106/lstm_319/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_106/lstm_319/lstm_cell_88/splitSplit=sequential_106/lstm_319/lstm_cell_88/split/split_dim:output:05sequential_106/lstm_319/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
,sequential_106/lstm_319/lstm_cell_88/SigmoidSigmoid3sequential_106/lstm_319/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
.sequential_106/lstm_319/lstm_cell_88/Sigmoid_1Sigmoid3sequential_106/lstm_319/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2П
(sequential_106/lstm_319/lstm_cell_88/mulMul2sequential_106/lstm_319/lstm_cell_88/Sigmoid_1:y:0(sequential_106/lstm_319/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)sequential_106/lstm_319/lstm_cell_88/ReluRelu3sequential_106/lstm_319/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ю
*sequential_106/lstm_319/lstm_cell_88/mul_1Mul0sequential_106/lstm_319/lstm_cell_88/Sigmoid:y:07sequential_106/lstm_319/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2У
*sequential_106/lstm_319/lstm_cell_88/add_1AddV2,sequential_106/lstm_319/lstm_cell_88/mul:z:0.sequential_106/lstm_319/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
.sequential_106/lstm_319/lstm_cell_88/Sigmoid_2Sigmoid3sequential_106/lstm_319/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_106/lstm_319/lstm_cell_88/Relu_1Relu.sequential_106/lstm_319/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
*sequential_106/lstm_319/lstm_cell_88/mul_2Mul2sequential_106/lstm_319/lstm_cell_88/Sigmoid_2:y:09sequential_106/lstm_319/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
5sequential_106/lstm_319/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
'sequential_106/lstm_319/TensorArrayV2_1TensorListReserve>sequential_106/lstm_319/TensorArrayV2_1/element_shape:output:00sequential_106/lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_106/lstm_319/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_106/lstm_319/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_106/lstm_319/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_106/lstm_319/whileWhile3sequential_106/lstm_319/while/loop_counter:output:09sequential_106/lstm_319/while/maximum_iterations:output:0%sequential_106/lstm_319/time:output:00sequential_106/lstm_319/TensorArrayV2_1:handle:0&sequential_106/lstm_319/zeros:output:0(sequential_106/lstm_319/zeros_1:output:00sequential_106/lstm_319/strided_slice_1:output:0Osequential_106/lstm_319/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_106_lstm_319_lstm_cell_88_matmul_readvariableop_resourceEsequential_106_lstm_319_lstm_cell_88_matmul_1_readvariableop_resourceDsequential_106_lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_106_lstm_319_while_body_539315*5
cond-R+
)sequential_106_lstm_319_while_cond_539314*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Hsequential_106/lstm_319/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
:sequential_106/lstm_319/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_106/lstm_319/while:output:3Qsequential_106/lstm_319/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-sequential_106/lstm_319/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_106/lstm_319/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_319/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_106/lstm_319/strided_slice_3StridedSliceCsequential_106/lstm_319/TensorArrayV2Stack/TensorListStack:tensor:06sequential_106/lstm_319/strided_slice_3/stack:output:08sequential_106/lstm_319/strided_slice_3/stack_1:output:08sequential_106/lstm_319/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask}
(sequential_106/lstm_319/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_106/lstm_319/transpose_1	TransposeCsequential_106/lstm_319/TensorArrayV2Stack/TensorListStack:tensor:01sequential_106/lstm_319/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2s
sequential_106/lstm_319/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_106/lstm_320/ShapeShape'sequential_106/lstm_319/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_106/lstm_320/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_106/lstm_320/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_106/lstm_320/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_106/lstm_320/strided_sliceStridedSlice&sequential_106/lstm_320/Shape:output:04sequential_106/lstm_320/strided_slice/stack:output:06sequential_106/lstm_320/strided_slice/stack_1:output:06sequential_106/lstm_320/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_106/lstm_320/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Л
$sequential_106/lstm_320/zeros/packedPack.sequential_106/lstm_320/strided_slice:output:0/sequential_106/lstm_320/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_106/lstm_320/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_106/lstm_320/zerosFill-sequential_106/lstm_320/zeros/packed:output:0,sequential_106/lstm_320/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
(sequential_106/lstm_320/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
П
&sequential_106/lstm_320/zeros_1/packedPack.sequential_106/lstm_320/strided_slice:output:01sequential_106/lstm_320/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_106/lstm_320/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_106/lstm_320/zeros_1Fill/sequential_106/lstm_320/zeros_1/packed:output:0.sequential_106/lstm_320/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
&sequential_106/lstm_320/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
!sequential_106/lstm_320/transpose	Transpose'sequential_106/lstm_319/transpose_1:y:0/sequential_106/lstm_320/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2t
sequential_106/lstm_320/Shape_1Shape%sequential_106/lstm_320/transpose:y:0*
T0*
_output_shapes
:w
-sequential_106/lstm_320/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_320/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_320/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_106/lstm_320/strided_slice_1StridedSlice(sequential_106/lstm_320/Shape_1:output:06sequential_106/lstm_320/strided_slice_1/stack:output:08sequential_106/lstm_320/strided_slice_1/stack_1:output:08sequential_106/lstm_320/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_106/lstm_320/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_106/lstm_320/TensorArrayV2TensorListReserve<sequential_106/lstm_320/TensorArrayV2/element_shape:output:00sequential_106/lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_106/lstm_320/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ј
?sequential_106/lstm_320/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_106/lstm_320/transpose:y:0Vsequential_106/lstm_320/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_106/lstm_320/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_320/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_106/lstm_320/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_106/lstm_320/strided_slice_2StridedSlice%sequential_106/lstm_320/transpose:y:06sequential_106/lstm_320/strided_slice_2/stack:output:08sequential_106/lstm_320/strided_slice_2/stack_1:output:08sequential_106/lstm_320/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskО
:sequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOpReadVariableOpCsequential_106_lstm_320_lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0н
+sequential_106/lstm_320/lstm_cell_89/MatMulMatMul0sequential_106/lstm_320/strided_slice_2:output:0Bsequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Т
<sequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOpEsequential_106_lstm_320_lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0з
-sequential_106/lstm_320/lstm_cell_89/MatMul_1MatMul&sequential_106/lstm_320/zeros:output:0Dsequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(г
(sequential_106/lstm_320/lstm_cell_89/addAddV25sequential_106/lstm_320/lstm_cell_89/MatMul:product:07sequential_106/lstm_320/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(М
;sequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOpDsequential_106_lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0м
,sequential_106/lstm_320/lstm_cell_89/BiasAddBiasAdd,sequential_106/lstm_320/lstm_cell_89/add:z:0Csequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(v
4sequential_106/lstm_320/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_106/lstm_320/lstm_cell_89/splitSplit=sequential_106/lstm_320/lstm_cell_89/split/split_dim:output:05sequential_106/lstm_320/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
,sequential_106/lstm_320/lstm_cell_89/SigmoidSigmoid3sequential_106/lstm_320/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
 
.sequential_106/lstm_320/lstm_cell_89/Sigmoid_1Sigmoid3sequential_106/lstm_320/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
П
(sequential_106/lstm_320/lstm_cell_89/mulMul2sequential_106/lstm_320/lstm_cell_89/Sigmoid_1:y:0(sequential_106/lstm_320/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

)sequential_106/lstm_320/lstm_cell_89/ReluRelu3sequential_106/lstm_320/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
*sequential_106/lstm_320/lstm_cell_89/mul_1Mul0sequential_106/lstm_320/lstm_cell_89/Sigmoid:y:07sequential_106/lstm_320/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
У
*sequential_106/lstm_320/lstm_cell_89/add_1AddV2,sequential_106/lstm_320/lstm_cell_89/mul:z:0.sequential_106/lstm_320/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
 
.sequential_106/lstm_320/lstm_cell_89/Sigmoid_2Sigmoid3sequential_106/lstm_320/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_106/lstm_320/lstm_cell_89/Relu_1Relu.sequential_106/lstm_320/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
в
*sequential_106/lstm_320/lstm_cell_89/mul_2Mul2sequential_106/lstm_320/lstm_cell_89/Sigmoid_2:y:09sequential_106/lstm_320/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

5sequential_106/lstm_320/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
'sequential_106/lstm_320/TensorArrayV2_1TensorListReserve>sequential_106/lstm_320/TensorArrayV2_1/element_shape:output:00sequential_106/lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_106/lstm_320/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_106/lstm_320/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_106/lstm_320/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_106/lstm_320/whileWhile3sequential_106/lstm_320/while/loop_counter:output:09sequential_106/lstm_320/while/maximum_iterations:output:0%sequential_106/lstm_320/time:output:00sequential_106/lstm_320/TensorArrayV2_1:handle:0&sequential_106/lstm_320/zeros:output:0(sequential_106/lstm_320/zeros_1:output:00sequential_106/lstm_320/strided_slice_1:output:0Osequential_106/lstm_320/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_106_lstm_320_lstm_cell_89_matmul_readvariableop_resourceEsequential_106_lstm_320_lstm_cell_89_matmul_1_readvariableop_resourceDsequential_106_lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
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
_stateful_parallelism( *5
body-R+
)sequential_106_lstm_320_while_body_539454*5
cond-R+
)sequential_106_lstm_320_while_cond_539453*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
Hsequential_106/lstm_320/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
:sequential_106/lstm_320/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_106/lstm_320/while:output:3Qsequential_106/lstm_320/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0
-sequential_106/lstm_320/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_106/lstm_320/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_106/lstm_320/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_106/lstm_320/strided_slice_3StridedSliceCsequential_106/lstm_320/TensorArrayV2Stack/TensorListStack:tensor:06sequential_106/lstm_320/strided_slice_3/stack:output:08sequential_106/lstm_320/strided_slice_3/stack_1:output:08sequential_106/lstm_320/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_mask}
(sequential_106/lstm_320/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_106/lstm_320/transpose_1	TransposeCsequential_106/lstm_320/TensorArrayV2Stack/TensorListStack:tensor:01sequential_106/lstm_320/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
s
sequential_106/lstm_320/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    І
.sequential_106/dense_106/MatMul/ReadVariableOpReadVariableOp7sequential_106_dense_106_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Х
sequential_106/dense_106/MatMulMatMul0sequential_106/lstm_320/strided_slice_3:output:06sequential_106/dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
/sequential_106/dense_106/BiasAdd/ReadVariableOpReadVariableOp8sequential_106_dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
 sequential_106/dense_106/BiasAddBiasAdd)sequential_106/dense_106/MatMul:product:07sequential_106/dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
IdentityIdentity)sequential_106/dense_106/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЗ
NoOpNoOp0^sequential_106/dense_106/BiasAdd/ReadVariableOp/^sequential_106/dense_106/MatMul/ReadVariableOp<^sequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp;^sequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOp=^sequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp^sequential_106/lstm_318/while<^sequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp;^sequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOp=^sequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp^sequential_106/lstm_319/while<^sequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp;^sequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOp=^sequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp^sequential_106/lstm_320/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2b
/sequential_106/dense_106/BiasAdd/ReadVariableOp/sequential_106/dense_106/BiasAdd/ReadVariableOp2`
.sequential_106/dense_106/MatMul/ReadVariableOp.sequential_106/dense_106/MatMul/ReadVariableOp2z
;sequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp;sequential_106/lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp2x
:sequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOp:sequential_106/lstm_318/lstm_cell_87/MatMul/ReadVariableOp2|
<sequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp<sequential_106/lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp2>
sequential_106/lstm_318/whilesequential_106/lstm_318/while2z
;sequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp;sequential_106/lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp2x
:sequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOp:sequential_106/lstm_319/lstm_cell_88/MatMul/ReadVariableOp2|
<sequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp<sequential_106/lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp2>
sequential_106/lstm_319/whilesequential_106/lstm_319/while2z
;sequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp;sequential_106/lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp2x
:sequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOp:sequential_106/lstm_320/lstm_cell_89/MatMul/ReadVariableOp2|
<sequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp<sequential_106/lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp2>
sequential_106/lstm_320/whilesequential_106/lstm_320/while:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
м


/__inference_sequential_106_layer_call_fn_541858

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
identityЂStatefulPartitionedCallд
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
GPU 2J 8 *S
fNRL
J__inference_sequential_106_layer_call_and_return_conditional_losses_541657o
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
н

H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544677

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
ѓЄ

"__inference__traced_restore_545146
file_prefix3
!assignvariableop_dense_106_kernel:
/
!assignvariableop_1_dense_106_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_318_lstm_cell_318_kernel:	M
:assignvariableop_8_lstm_318_lstm_cell_318_recurrent_kernel:	d=
.assignvariableop_9_lstm_318_lstm_cell_318_bias:	D
1assignvariableop_10_lstm_319_lstm_cell_319_kernel:	dШN
;assignvariableop_11_lstm_319_lstm_cell_319_recurrent_kernel:	2Ш>
/assignvariableop_12_lstm_319_lstm_cell_319_bias:	ШC
1assignvariableop_13_lstm_320_lstm_cell_320_kernel:2(M
;assignvariableop_14_lstm_320_lstm_cell_320_recurrent_kernel:
(=
/assignvariableop_15_lstm_320_lstm_cell_320_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_106_kernel_m:
7
)assignvariableop_19_adam_dense_106_bias_m:K
8assignvariableop_20_adam_lstm_318_lstm_cell_318_kernel_m:	U
Bassignvariableop_21_adam_lstm_318_lstm_cell_318_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_318_lstm_cell_318_bias_m:	K
8assignvariableop_23_adam_lstm_319_lstm_cell_319_kernel_m:	dШU
Bassignvariableop_24_adam_lstm_319_lstm_cell_319_recurrent_kernel_m:	2ШE
6assignvariableop_25_adam_lstm_319_lstm_cell_319_bias_m:	ШJ
8assignvariableop_26_adam_lstm_320_lstm_cell_320_kernel_m:2(T
Bassignvariableop_27_adam_lstm_320_lstm_cell_320_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_320_lstm_cell_320_bias_m:(=
+assignvariableop_29_adam_dense_106_kernel_v:
7
)assignvariableop_30_adam_dense_106_bias_v:K
8assignvariableop_31_adam_lstm_318_lstm_cell_318_kernel_v:	U
Bassignvariableop_32_adam_lstm_318_lstm_cell_318_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_318_lstm_cell_318_bias_v:	K
8assignvariableop_34_adam_lstm_319_lstm_cell_319_kernel_v:	dШU
Bassignvariableop_35_adam_lstm_319_lstm_cell_319_recurrent_kernel_v:	2ШE
6assignvariableop_36_adam_lstm_319_lstm_cell_319_bias_v:	ШJ
8assignvariableop_37_adam_lstm_320_lstm_cell_320_kernel_v:2(T
Bassignvariableop_38_adam_lstm_320_lstm_cell_320_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_320_lstm_cell_320_bias_v:(
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
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_106_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_106_biasIdentity_1:output:0"/device:CPU:0*
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
:
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_318_lstm_cell_318_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_318_lstm_cell_318_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_318_lstm_cell_318_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_319_lstm_cell_319_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_319_lstm_cell_319_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_319_lstm_cell_319_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_320_lstm_cell_320_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_320_lstm_cell_320_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_320_lstm_cell_320_biasIdentity_15:output:0"/device:CPU:0*
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
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_106_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_106_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_318_lstm_cell_318_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_318_lstm_cell_318_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_318_lstm_cell_318_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_319_lstm_cell_319_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_319_lstm_cell_319_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_319_lstm_cell_319_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_320_lstm_cell_320_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_320_lstm_cell_320_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_320_lstm_cell_320_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_106_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_106_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_318_lstm_cell_318_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_318_lstm_cell_318_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_318_lstm_cell_318_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_319_lstm_cell_319_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_319_lstm_cell_319_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_319_lstm_cell_319_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_320_lstm_cell_320_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_320_lstm_cell_320_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_320_lstm_cell_320_bias_vIdentity_39:output:0"/device:CPU:0*
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
З
я
J__inference_sequential_106_layer_call_and_return_conditional_losses_541068

inputs"
lstm_318_540744:	"
lstm_318_540746:	d
lstm_318_540748:	"
lstm_319_540894:	dШ"
lstm_319_540896:	2Ш
lstm_319_540898:	Ш!
lstm_320_541044:2(!
lstm_320_541046:
(
lstm_320_541048:("
dense_106_541062:

dense_106_541064:
identityЂ!dense_106/StatefulPartitionedCallЂ lstm_318/StatefulPartitionedCallЂ lstm_319/StatefulPartitionedCallЂ lstm_320/StatefulPartitionedCall
 lstm_318/StatefulPartitionedCallStatefulPartitionedCallinputslstm_318_540744lstm_318_540746lstm_318_540748*
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_540743Њ
 lstm_319/StatefulPartitionedCallStatefulPartitionedCall)lstm_318/StatefulPartitionedCall:output:0lstm_319_540894lstm_319_540896lstm_319_540898*
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_540893І
 lstm_320/StatefulPartitionedCallStatefulPartitionedCall)lstm_319/StatefulPartitionedCall:output:0lstm_320_541044lstm_320_541046lstm_320_541048*
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541043
!dense_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_320/StatefulPartitionedCall:output:0dense_106_541062dense_106_541064*
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
GPU 2J 8 *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_541061y
IdentityIdentity*dense_106/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_106/StatefulPartitionedCall!^lstm_318/StatefulPartitionedCall!^lstm_319/StatefulPartitionedCall!^lstm_320/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2D
 lstm_318/StatefulPartitionedCall lstm_318/StatefulPartitionedCall2D
 lstm_319/StatefulPartitionedCall lstm_319/StatefulPartitionedCall2D
 lstm_320/StatefulPartitionedCall lstm_320/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_542814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_542814___redundant_placeholder04
0while_while_cond_542814___redundant_placeholder14
0while_while_cond_542814___redundant_placeholder24
0while_while_cond_542814___redundant_placeholder3
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
џ7
Ъ
while_body_544190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
Е
У
while_cond_540958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540958___redundant_placeholder04
0while_while_cond_540958___redundant_placeholder14
0while_while_cond_540958___redundant_placeholder24
0while_while_cond_540958___redundant_placeholder3
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
З
я
J__inference_sequential_106_layer_call_and_return_conditional_losses_541657

inputs"
lstm_318_541630:	"
lstm_318_541632:	d
lstm_318_541634:	"
lstm_319_541637:	dШ"
lstm_319_541639:	2Ш
lstm_319_541641:	Ш!
lstm_320_541644:2(!
lstm_320_541646:
(
lstm_320_541648:("
dense_106_541651:

dense_106_541653:
identityЂ!dense_106/StatefulPartitionedCallЂ lstm_318/StatefulPartitionedCallЂ lstm_319/StatefulPartitionedCallЂ lstm_320/StatefulPartitionedCall
 lstm_318/StatefulPartitionedCallStatefulPartitionedCallinputslstm_318_541630lstm_318_541632lstm_318_541634*
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_541589Њ
 lstm_319/StatefulPartitionedCallStatefulPartitionedCall)lstm_318/StatefulPartitionedCall:output:0lstm_319_541637lstm_319_541639lstm_319_541641*
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_541424І
 lstm_320/StatefulPartitionedCallStatefulPartitionedCall)lstm_319/StatefulPartitionedCall:output:0lstm_320_541644lstm_320_541646lstm_320_541648*
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_541259
!dense_106/StatefulPartitionedCallStatefulPartitionedCall)lstm_320/StatefulPartitionedCall:output:0dense_106_541651dense_106_541653*
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
GPU 2J 8 *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_541061y
IdentityIdentity*dense_106/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_106/StatefulPartitionedCall!^lstm_318/StatefulPartitionedCall!^lstm_319/StatefulPartitionedCall!^lstm_320/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2D
 lstm_318/StatefulPartitionedCall lstm_318/StatefulPartitionedCall2D
 lstm_319/StatefulPartitionedCall lstm_319/StatefulPartitionedCall2D
 lstm_320/StatefulPartitionedCall lstm_320/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м


/__inference_sequential_106_layer_call_fn_541831

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
identityЂStatefulPartitionedCallд
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
GPU 2J 8 *S
fNRL
J__inference_sequential_106_layer_call_and_return_conditional_losses_541068o
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
Е
У
while_cond_543716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_543716___redundant_placeholder04
0while_while_cond_543716___redundant_placeholder14
0while_while_cond_543716___redundant_placeholder24
0while_while_cond_543716___redundant_placeholder3
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
лB
№

lstm_319_while_body_542483.
*lstm_319_while_lstm_319_while_loop_counter4
0lstm_319_while_lstm_319_while_maximum_iterations
lstm_319_while_placeholder 
lstm_319_while_placeholder_1 
lstm_319_while_placeholder_2 
lstm_319_while_placeholder_3-
)lstm_319_while_lstm_319_strided_slice_1_0i
elstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0:	dШQ
>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШL
=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
lstm_319_while_identity
lstm_319_while_identity_1
lstm_319_while_identity_2
lstm_319_while_identity_3
lstm_319_while_identity_4
lstm_319_while_identity_5+
'lstm_319_while_lstm_319_strided_slice_1g
clstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensorM
:lstm_319_while_lstm_cell_88_matmul_readvariableop_resource:	dШO
<lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШJ
;lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpЂ1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpЂ3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp
@lstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_319/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0lstm_319_while_placeholderIlstm_319/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_319/while/lstm_cell_88/MatMulMatMul9lstm_319/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_319/while/lstm_cell_88/MatMul_1MatMullstm_319_while_placeholder_2;lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_319/while/lstm_cell_88/addAddV2,lstm_319/while/lstm_cell_88/MatMul:product:0.lstm_319/while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_319/while/lstm_cell_88/BiasAddBiasAdd#lstm_319/while/lstm_cell_88/add:z:0:lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_319/while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_319/while/lstm_cell_88/splitSplit4lstm_319/while/lstm_cell_88/split/split_dim:output:0,lstm_319/while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_319/while/lstm_cell_88/SigmoidSigmoid*lstm_319/while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_319/while/lstm_cell_88/Sigmoid_1Sigmoid*lstm_319/while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_319/while/lstm_cell_88/mulMul)lstm_319/while/lstm_cell_88/Sigmoid_1:y:0lstm_319_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_319/while/lstm_cell_88/ReluRelu*lstm_319/while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_319/while/lstm_cell_88/mul_1Mul'lstm_319/while/lstm_cell_88/Sigmoid:y:0.lstm_319/while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_319/while/lstm_cell_88/add_1AddV2#lstm_319/while/lstm_cell_88/mul:z:0%lstm_319/while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_319/while/lstm_cell_88/Sigmoid_2Sigmoid*lstm_319/while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_319/while/lstm_cell_88/Relu_1Relu%lstm_319/while/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_319/while/lstm_cell_88/mul_2Mul)lstm_319/while/lstm_cell_88/Sigmoid_2:y:00lstm_319/while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_319/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_319_while_placeholder_1lstm_319_while_placeholder%lstm_319/while/lstm_cell_88/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_319/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_319/while/addAddV2lstm_319_while_placeholderlstm_319/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_319/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_319/while/add_1AddV2*lstm_319_while_lstm_319_while_loop_counterlstm_319/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_319/while/IdentityIdentitylstm_319/while/add_1:z:0^lstm_319/while/NoOp*
T0*
_output_shapes
: 
lstm_319/while/Identity_1Identity0lstm_319_while_lstm_319_while_maximum_iterations^lstm_319/while/NoOp*
T0*
_output_shapes
: t
lstm_319/while/Identity_2Identitylstm_319/while/add:z:0^lstm_319/while/NoOp*
T0*
_output_shapes
: Ё
lstm_319/while/Identity_3IdentityClstm_319/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_319/while/NoOp*
T0*
_output_shapes
: 
lstm_319/while/Identity_4Identity%lstm_319/while/lstm_cell_88/mul_2:z:0^lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/while/Identity_5Identity%lstm_319/while/lstm_cell_88/add_1:z:0^lstm_319/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_319/while/NoOpNoOp3^lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2^lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp4^lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_319_while_identity lstm_319/while/Identity:output:0"?
lstm_319_while_identity_1"lstm_319/while/Identity_1:output:0"?
lstm_319_while_identity_2"lstm_319/while/Identity_2:output:0"?
lstm_319_while_identity_3"lstm_319/while/Identity_3:output:0"?
lstm_319_while_identity_4"lstm_319/while/Identity_4:output:0"?
lstm_319_while_identity_5"lstm_319/while/Identity_5:output:0"T
'lstm_319_while_lstm_319_strided_slice_1)lstm_319_while_lstm_319_strided_slice_1_0"|
;lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource=lstm_319_while_lstm_cell_88_biasadd_readvariableop_resource_0"~
<lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource>lstm_319_while_lstm_cell_88_matmul_1_readvariableop_resource_0"z
:lstm_319_while_lstm_cell_88_matmul_readvariableop_resource<lstm_319_while_lstm_cell_88_matmul_readvariableop_resource_0"Ь
clstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensorelstm_319_while_tensorarrayv2read_tensorlistgetitem_lstm_319_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2lstm_319/while/lstm_cell_88/BiasAdd/ReadVariableOp2f
1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp1lstm_319/while/lstm_cell_88/MatMul/ReadVariableOp2j
3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp3lstm_319/while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
8
а
while_body_541505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
8
а
while_body_543860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_88_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_88_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_88_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_88_matmul_readvariableop_resource:	dШF
3while_lstm_cell_88_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_88_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_88/BiasAdd/ReadVariableOpЂ(while/lstm_cell_88/MatMul/ReadVariableOpЂ*while/lstm_cell_88/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_88_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_88/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_88_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_88/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_88/addAddV2#while/lstm_cell_88/MatMul:product:0%while/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_88_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_88/BiasAddBiasAddwhile/lstm_cell_88/add:z:01while/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_88/splitSplit+while/lstm_cell_88/split/split_dim:output:0#while/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_88/SigmoidSigmoid!while/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_1Sigmoid!while/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mulMul while/lstm_cell_88/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_88/ReluRelu!while/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_1Mulwhile/lstm_cell_88/Sigmoid:y:0%while/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/add_1AddV2while/lstm_cell_88/mul:z:0while/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_88/Sigmoid_2Sigmoid!while/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_88/Relu_1Reluwhile/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_88/mul_2Mul while/lstm_cell_88/Sigmoid_2:y:0'while/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_88/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_88/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_88/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_88/BiasAdd/ReadVariableOp)^while/lstm_cell_88/MatMul/ReadVariableOp+^while/lstm_cell_88/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_88_biasadd_readvariableop_resource4while_lstm_cell_88_biasadd_readvariableop_resource_0"l
3while_lstm_cell_88_matmul_1_readvariableop_resource5while_lstm_cell_88_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_88_matmul_readvariableop_resource3while_lstm_cell_88_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_88/BiasAdd/ReadVariableOp)while/lstm_cell_88/BiasAdd/ReadVariableOp2T
(while/lstm_cell_88/MatMul/ReadVariableOp(while/lstm_cell_88/MatMul/ReadVariableOp2X
*while/lstm_cell_88/MatMul_1/ReadVariableOp*while/lstm_cell_88/MatMul_1/ReadVariableOp: 
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
8
а
while_body_543101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_87_matmul_readvariableop_resource_0:	H
5while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_87_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_87_matmul_readvariableop_resource:	F
3while_lstm_cell_87_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_87/BiasAdd/ReadVariableOpЂ(while/lstm_cell_87/MatMul/ReadVariableOpЂ*while/lstm_cell_87/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_87/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_87/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_87/addAddV2#while/lstm_cell_87/MatMul:product:0%while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_87/BiasAddBiasAddwhile/lstm_cell_87/add:z:01while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_87/splitSplit+while/lstm_cell_87/split/split_dim:output:0#while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_87/SigmoidSigmoid!while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_1Sigmoid!while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mulMul while/lstm_cell_87/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_87/ReluRelu!while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_1Mulwhile/lstm_cell_87/Sigmoid:y:0%while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/add_1AddV2while/lstm_cell_87/mul:z:0while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_87/Sigmoid_2Sigmoid!while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_87/Relu_1Reluwhile/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_87/mul_2Mul while/lstm_cell_87/Sigmoid_2:y:0'while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_87/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_87/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_87/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_87/BiasAdd/ReadVariableOp)^while/lstm_cell_87/MatMul/ReadVariableOp+^while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_87_biasadd_readvariableop_resource4while_lstm_cell_87_biasadd_readvariableop_resource_0"l
3while_lstm_cell_87_matmul_1_readvariableop_resource5while_lstm_cell_87_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_87_matmul_readvariableop_resource3while_lstm_cell_87_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_87/BiasAdd/ReadVariableOp)while/lstm_cell_87/BiasAdd/ReadVariableOp2T
(while/lstm_cell_87/MatMul/ReadVariableOp(while/lstm_cell_87/MatMul/ReadVariableOp2X
*while/lstm_cell_87/MatMul_1/ReadVariableOp*while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
е

H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539757

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
ЄJ

D__inference_lstm_318_layer_call_and_return_conditional_losses_541589

inputs>
+lstm_cell_87_matmul_readvariableop_resource:	@
-lstm_cell_87_matmul_1_readvariableop_resource:	d;
,lstm_cell_87_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_87/BiasAdd/ReadVariableOpЂ"lstm_cell_87/MatMul/ReadVariableOpЂ$lstm_cell_87/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_87/MatMul/ReadVariableOpReadVariableOp+lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_87/MatMulMatMulstrided_slice_2:output:0*lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_87/MatMul_1MatMulzeros:output:0,lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_87/addAddV2lstm_cell_87/MatMul:product:0lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_87/BiasAddBiasAddlstm_cell_87/add:z:0+lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_87/splitSplit%lstm_cell_87/split/split_dim:output:0lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_87/SigmoidSigmoidlstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_1Sigmoidlstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_87/mulMullstm_cell_87/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_87/ReluRelulstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_1Mullstm_cell_87/Sigmoid:y:0lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_87/add_1AddV2lstm_cell_87/mul:z:0lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_87/Sigmoid_2Sigmoidlstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_87/Relu_1Relulstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_87/mul_2Mullstm_cell_87/Sigmoid_2:y:0!lstm_cell_87/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_87_matmul_readvariableop_resource-lstm_cell_87_matmul_1_readvariableop_resource,lstm_cell_87_biasadd_readvariableop_resource*
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
bodyR
while_body_541505*
condR
while_cond_541504*K
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
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_87/BiasAdd/ReadVariableOp#^lstm_cell_87/MatMul/ReadVariableOp%^lstm_cell_87/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_87/BiasAdd/ReadVariableOp#lstm_cell_87/BiasAdd/ReadVariableOp2H
"lstm_cell_87/MatMul/ReadVariableOp"lstm_cell_87/MatMul/ReadVariableOp2L
$lstm_cell_87/MatMul_1/ReadVariableOp$lstm_cell_87/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_539611

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
Е
У
while_cond_539624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_539624___redundant_placeholder04
0while_while_cond_539624___redundant_placeholder14
0while_while_cond_539624___redundant_placeholder24
0while_while_cond_539624___redundant_placeholder3
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
е

H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_539961

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
Е
У
while_cond_539974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_539974___redundant_placeholder04
0while_while_cond_539974___redundant_placeholder14
0while_while_cond_539974___redundant_placeholder24
0while_while_cond_539974___redundant_placeholder3
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
н

H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544645

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
Е
У
while_cond_541504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_541504___redundant_placeholder04
0while_while_cond_541504___redundant_placeholder14
0while_while_cond_541504___redundant_placeholder24
0while_while_cond_541504___redundant_placeholder3
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
Е
У
while_cond_540515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_540515___redundant_placeholder04
0while_while_cond_540515___redundant_placeholder14
0while_while_cond_540515___redundant_placeholder24
0while_while_cond_540515___redundant_placeholder3
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
ЄJ

D__inference_lstm_319_layer_call_and_return_conditional_losses_543944

inputs>
+lstm_cell_88_matmul_readvariableop_resource:	dШ@
-lstm_cell_88_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_88_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_88/BiasAdd/ReadVariableOpЂ"lstm_cell_88/MatMul/ReadVariableOpЂ$lstm_cell_88/MatMul_1/ReadVariableOpЂwhile;
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
shrink_axis_mask
"lstm_cell_88/MatMul/ReadVariableOpReadVariableOp+lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_88/MatMulMatMulstrided_slice_2:output:0*lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_88/MatMul_1MatMulzeros:output:0,lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_88/addAddV2lstm_cell_88/MatMul:product:0lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_88/BiasAddBiasAddlstm_cell_88/add:z:0+lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_88/splitSplit%lstm_cell_88/split/split_dim:output:0lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_88/SigmoidSigmoidlstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_1Sigmoidlstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_88/mulMullstm_cell_88/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_88/ReluRelulstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_1Mullstm_cell_88/Sigmoid:y:0lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_88/add_1AddV2lstm_cell_88/mul:z:0lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_88/Sigmoid_2Sigmoidlstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_88/Relu_1Relulstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_88/mul_2Mullstm_cell_88/Sigmoid_2:y:0!lstm_cell_88/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_88_matmul_readvariableop_resource-lstm_cell_88_matmul_1_readvariableop_resource,lstm_cell_88_biasadd_readvariableop_resource*
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
bodyR
while_body_543860*
condR
while_cond_543859*K
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
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_88/BiasAdd/ReadVariableOp#^lstm_cell_88/MatMul/ReadVariableOp%^lstm_cell_88/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_88/BiasAdd/ReadVariableOp#lstm_cell_88/BiasAdd/ReadVariableOp2H
"lstm_cell_88/MatMul/ReadVariableOp"lstm_cell_88/MatMul/ReadVariableOp2L
$lstm_cell_88/MatMul_1/ReadVariableOp$lstm_cell_88/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
є

Ѓ
/__inference_sequential_106_layer_call_fn_541709
lstm_318_input
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
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCalllstm_318_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_106_layer_call_and_return_conditional_losses_541657o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_318_input
Ц

J__inference_sequential_106_layer_call_and_return_conditional_losses_542712

inputsG
4lstm_318_lstm_cell_87_matmul_readvariableop_resource:	I
6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource:	dD
5lstm_318_lstm_cell_87_biasadd_readvariableop_resource:	G
4lstm_319_lstm_cell_88_matmul_readvariableop_resource:	dШI
6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource:	2ШD
5lstm_319_lstm_cell_88_biasadd_readvariableop_resource:	ШF
4lstm_320_lstm_cell_89_matmul_readvariableop_resource:2(H
6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource:
(C
5lstm_320_lstm_cell_89_biasadd_readvariableop_resource:(:
(dense_106_matmul_readvariableop_resource:
7
)dense_106_biasadd_readvariableop_resource:
identityЂ dense_106/BiasAdd/ReadVariableOpЂdense_106/MatMul/ReadVariableOpЂ,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpЂ+lstm_318/lstm_cell_87/MatMul/ReadVariableOpЂ-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpЂlstm_318/whileЂ,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpЂ+lstm_319/lstm_cell_88/MatMul/ReadVariableOpЂ-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpЂlstm_319/whileЂ,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpЂ+lstm_320/lstm_cell_89/MatMul/ReadVariableOpЂ-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpЂlstm_320/whileD
lstm_318/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_318/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_318/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_318/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_318/strided_sliceStridedSlicelstm_318/Shape:output:0%lstm_318/strided_slice/stack:output:0'lstm_318/strided_slice/stack_1:output:0'lstm_318/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_318/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_318/zeros/packedPacklstm_318/strided_slice:output:0 lstm_318/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_318/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_318/zerosFilllstm_318/zeros/packed:output:0lstm_318/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd[
lstm_318/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_318/zeros_1/packedPacklstm_318/strided_slice:output:0"lstm_318/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_318/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_318/zeros_1Fill lstm_318/zeros_1/packed:output:0lstm_318/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdl
lstm_318/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_318/transpose	Transposeinputs lstm_318/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџV
lstm_318/Shape_1Shapelstm_318/transpose:y:0*
T0*
_output_shapes
:h
lstm_318/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_318/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_318/strided_slice_1StridedSlicelstm_318/Shape_1:output:0'lstm_318/strided_slice_1/stack:output:0)lstm_318/strided_slice_1/stack_1:output:0)lstm_318/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_318/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_318/TensorArrayV2TensorListReserve-lstm_318/TensorArrayV2/element_shape:output:0!lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_318/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
0lstm_318/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_318/transpose:y:0Glstm_318/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_318/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_318/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_318/strided_slice_2StridedSlicelstm_318/transpose:y:0'lstm_318/strided_slice_2/stack:output:0)lstm_318/strided_slice_2/stack_1:output:0)lstm_318/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_318/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp4lstm_318_lstm_cell_87_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Б
lstm_318/lstm_cell_87/MatMulMatMul!lstm_318/strided_slice_2:output:03lstm_318/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ћ
lstm_318/lstm_cell_87/MatMul_1MatMullstm_318/zeros:output:05lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_318/lstm_cell_87/addAddV2&lstm_318/lstm_cell_87/MatMul:product:0(lstm_318/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp5lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_318/lstm_cell_87/BiasAddBiasAddlstm_318/lstm_cell_87/add:z:04lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_318/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_318/lstm_cell_87/splitSplit.lstm_318/lstm_cell_87/split/split_dim:output:0&lstm_318/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_318/lstm_cell_87/SigmoidSigmoid$lstm_318/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/Sigmoid_1Sigmoid$lstm_318/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/mulMul#lstm_318/lstm_cell_87/Sigmoid_1:y:0lstm_318/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_318/lstm_cell_87/ReluRelu$lstm_318/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_318/lstm_cell_87/mul_1Mul!lstm_318/lstm_cell_87/Sigmoid:y:0(lstm_318/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/add_1AddV2lstm_318/lstm_cell_87/mul:z:0lstm_318/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/lstm_cell_87/Sigmoid_2Sigmoid$lstm_318/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_318/lstm_cell_87/Relu_1Relulstm_318/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_318/lstm_cell_87/mul_2Mul#lstm_318/lstm_cell_87/Sigmoid_2:y:0*lstm_318/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdw
&lstm_318/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
lstm_318/TensorArrayV2_1TensorListReserve/lstm_318/TensorArrayV2_1/element_shape:output:0!lstm_318/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_318/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_318/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_318/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_318/whileWhile$lstm_318/while/loop_counter:output:0*lstm_318/while/maximum_iterations:output:0lstm_318/time:output:0!lstm_318/TensorArrayV2_1:handle:0lstm_318/zeros:output:0lstm_318/zeros_1:output:0!lstm_318/strided_slice_1:output:0@lstm_318/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_318_lstm_cell_87_matmul_readvariableop_resource6lstm_318_lstm_cell_87_matmul_1_readvariableop_resource5lstm_318_lstm_cell_87_biasadd_readvariableop_resource*
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
lstm_318_while_body_542344*&
condR
lstm_318_while_cond_542343*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
9lstm_318/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   н
+lstm_318/TensorArrayV2Stack/TensorListStackTensorListStacklstm_318/while:output:3Blstm_318/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0q
lstm_318/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_318/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_318/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_318/strided_slice_3StridedSlice4lstm_318/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_318/strided_slice_3/stack:output:0)lstm_318/strided_slice_3/stack_1:output:0)lstm_318/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskn
lstm_318/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_318/transpose_1	Transpose4lstm_318/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_318/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdd
lstm_318/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_319/ShapeShapelstm_318/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_319/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_319/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_319/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_319/strided_sliceStridedSlicelstm_319/Shape:output:0%lstm_319/strided_slice/stack:output:0'lstm_319/strided_slice/stack_1:output:0'lstm_319/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_319/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_319/zeros/packedPacklstm_319/strided_slice:output:0 lstm_319/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_319/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_319/zerosFilllstm_319/zeros/packed:output:0lstm_319/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_319/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_319/zeros_1/packedPacklstm_319/strided_slice:output:0"lstm_319/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_319/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_319/zeros_1Fill lstm_319/zeros_1/packed:output:0lstm_319/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_319/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_319/transpose	Transposelstm_318/transpose_1:y:0 lstm_319/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_319/Shape_1Shapelstm_319/transpose:y:0*
T0*
_output_shapes
:h
lstm_319/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_319/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_319/strided_slice_1StridedSlicelstm_319/Shape_1:output:0'lstm_319/strided_slice_1/stack:output:0)lstm_319/strided_slice_1/stack_1:output:0)lstm_319/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_319/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_319/TensorArrayV2TensorListReserve-lstm_319/TensorArrayV2/element_shape:output:0!lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_319/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_319/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_319/transpose:y:0Glstm_319/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_319/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_319/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_319/strided_slice_2StridedSlicelstm_319/transpose:y:0'lstm_319/strided_slice_2/stack:output:0)lstm_319/strided_slice_2/stack_1:output:0)lstm_319/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_319/lstm_cell_88/MatMul/ReadVariableOpReadVariableOp4lstm_319_lstm_cell_88_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_319/lstm_cell_88/MatMulMatMul!lstm_319/strided_slice_2:output:03lstm_319/lstm_cell_88/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOpReadVariableOp6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_319/lstm_cell_88/MatMul_1MatMullstm_319/zeros:output:05lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_319/lstm_cell_88/addAddV2&lstm_319/lstm_cell_88/MatMul:product:0(lstm_319/lstm_cell_88/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOpReadVariableOp5lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_319/lstm_cell_88/BiasAddBiasAddlstm_319/lstm_cell_88/add:z:04lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_319/lstm_cell_88/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_319/lstm_cell_88/splitSplit.lstm_319/lstm_cell_88/split/split_dim:output:0&lstm_319/lstm_cell_88/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_319/lstm_cell_88/SigmoidSigmoid$lstm_319/lstm_cell_88/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/Sigmoid_1Sigmoid$lstm_319/lstm_cell_88/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/mulMul#lstm_319/lstm_cell_88/Sigmoid_1:y:0lstm_319/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_319/lstm_cell_88/ReluRelu$lstm_319/lstm_cell_88/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_319/lstm_cell_88/mul_1Mul!lstm_319/lstm_cell_88/Sigmoid:y:0(lstm_319/lstm_cell_88/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/add_1AddV2lstm_319/lstm_cell_88/mul:z:0lstm_319/lstm_cell_88/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_319/lstm_cell_88/Sigmoid_2Sigmoid$lstm_319/lstm_cell_88/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_319/lstm_cell_88/Relu_1Relulstm_319/lstm_cell_88/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_319/lstm_cell_88/mul_2Mul#lstm_319/lstm_cell_88/Sigmoid_2:y:0*lstm_319/lstm_cell_88/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_319/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_319/TensorArrayV2_1TensorListReserve/lstm_319/TensorArrayV2_1/element_shape:output:0!lstm_319/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_319/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_319/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_319/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_319/whileWhile$lstm_319/while/loop_counter:output:0*lstm_319/while/maximum_iterations:output:0lstm_319/time:output:0!lstm_319/TensorArrayV2_1:handle:0lstm_319/zeros:output:0lstm_319/zeros_1:output:0!lstm_319/strided_slice_1:output:0@lstm_319/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_319_lstm_cell_88_matmul_readvariableop_resource6lstm_319_lstm_cell_88_matmul_1_readvariableop_resource5lstm_319_lstm_cell_88_biasadd_readvariableop_resource*
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
lstm_319_while_body_542483*&
condR
lstm_319_while_cond_542482*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_319/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_319/TensorArrayV2Stack/TensorListStackTensorListStacklstm_319/while:output:3Blstm_319/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_319/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_319/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_319/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_319/strided_slice_3StridedSlice4lstm_319/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_319/strided_slice_3/stack:output:0)lstm_319/strided_slice_3/stack_1:output:0)lstm_319/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_319/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_319/transpose_1	Transpose4lstm_319/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_319/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_319/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_320/ShapeShapelstm_319/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_320/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_320/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_320/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_320/strided_sliceStridedSlicelstm_320/Shape:output:0%lstm_320/strided_slice/stack:output:0'lstm_320/strided_slice/stack_1:output:0'lstm_320/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_320/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_320/zeros/packedPacklstm_320/strided_slice:output:0 lstm_320/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_320/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_320/zerosFilllstm_320/zeros/packed:output:0lstm_320/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_320/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_320/zeros_1/packedPacklstm_320/strided_slice:output:0"lstm_320/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_320/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_320/zeros_1Fill lstm_320/zeros_1/packed:output:0lstm_320/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_320/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_320/transpose	Transposelstm_319/transpose_1:y:0 lstm_320/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_320/Shape_1Shapelstm_320/transpose:y:0*
T0*
_output_shapes
:h
lstm_320/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_320/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_320/strided_slice_1StridedSlicelstm_320/Shape_1:output:0'lstm_320/strided_slice_1/stack:output:0)lstm_320/strided_slice_1/stack_1:output:0)lstm_320/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_320/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_320/TensorArrayV2TensorListReserve-lstm_320/TensorArrayV2/element_shape:output:0!lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_320/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_320/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_320/transpose:y:0Glstm_320/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_320/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_320/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_320/strided_slice_2StridedSlicelstm_320/transpose:y:0'lstm_320/strided_slice_2/stack:output:0)lstm_320/strided_slice_2/stack_1:output:0)lstm_320/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_320/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp4lstm_320_lstm_cell_89_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_320/lstm_cell_89/MatMulMatMul!lstm_320/strided_slice_2:output:03lstm_320/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_320/lstm_cell_89/MatMul_1MatMullstm_320/zeros:output:05lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_320/lstm_cell_89/addAddV2&lstm_320/lstm_cell_89/MatMul:product:0(lstm_320/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp5lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_320/lstm_cell_89/BiasAddBiasAddlstm_320/lstm_cell_89/add:z:04lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_320/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_320/lstm_cell_89/splitSplit.lstm_320/lstm_cell_89/split/split_dim:output:0&lstm_320/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_320/lstm_cell_89/SigmoidSigmoid$lstm_320/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/Sigmoid_1Sigmoid$lstm_320/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/mulMul#lstm_320/lstm_cell_89/Sigmoid_1:y:0lstm_320/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_320/lstm_cell_89/ReluRelu$lstm_320/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_320/lstm_cell_89/mul_1Mul!lstm_320/lstm_cell_89/Sigmoid:y:0(lstm_320/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/add_1AddV2lstm_320/lstm_cell_89/mul:z:0lstm_320/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_320/lstm_cell_89/Sigmoid_2Sigmoid$lstm_320/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_320/lstm_cell_89/Relu_1Relulstm_320/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_320/lstm_cell_89/mul_2Mul#lstm_320/lstm_cell_89/Sigmoid_2:y:0*lstm_320/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_320/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_320/TensorArrayV2_1TensorListReserve/lstm_320/TensorArrayV2_1/element_shape:output:0!lstm_320/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_320/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_320/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_320/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_320/whileWhile$lstm_320/while/loop_counter:output:0*lstm_320/while/maximum_iterations:output:0lstm_320/time:output:0!lstm_320/TensorArrayV2_1:handle:0lstm_320/zeros:output:0lstm_320/zeros_1:output:0!lstm_320/strided_slice_1:output:0@lstm_320/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_320_lstm_cell_89_matmul_readvariableop_resource6lstm_320_lstm_cell_89_matmul_1_readvariableop_resource5lstm_320_lstm_cell_89_biasadd_readvariableop_resource*
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
lstm_320_while_body_542622*&
condR
lstm_320_while_cond_542621*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_320/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_320/TensorArrayV2Stack/TensorListStackTensorListStacklstm_320/while:output:3Blstm_320/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_320/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_320/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_320/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_320/strided_slice_3StridedSlice4lstm_320/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_320/strided_slice_3/stack:output:0)lstm_320/strided_slice_3/stack_1:output:0)lstm_320/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_320/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_320/transpose_1	Transpose4lstm_320/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_320/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_320/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_106/MatMulMatMul!lstm_320/strided_slice_3:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_106/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџх
NoOpNoOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp-^lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp,^lstm_318/lstm_cell_87/MatMul/ReadVariableOp.^lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp^lstm_318/while-^lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp,^lstm_319/lstm_cell_88/MatMul/ReadVariableOp.^lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp^lstm_319/while-^lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp,^lstm_320/lstm_cell_89/MatMul/ReadVariableOp.^lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp^lstm_320/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2\
,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp,lstm_318/lstm_cell_87/BiasAdd/ReadVariableOp2Z
+lstm_318/lstm_cell_87/MatMul/ReadVariableOp+lstm_318/lstm_cell_87/MatMul/ReadVariableOp2^
-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp-lstm_318/lstm_cell_87/MatMul_1/ReadVariableOp2 
lstm_318/whilelstm_318/while2\
,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp,lstm_319/lstm_cell_88/BiasAdd/ReadVariableOp2Z
+lstm_319/lstm_cell_88/MatMul/ReadVariableOp+lstm_319/lstm_cell_88/MatMul/ReadVariableOp2^
-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp-lstm_319/lstm_cell_88/MatMul_1/ReadVariableOp2 
lstm_319/whilelstm_319/while2\
,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp,lstm_320/lstm_cell_89/BiasAdd/ReadVariableOp2Z
+lstm_320/lstm_cell_89/MatMul/ReadVariableOp+lstm_320/lstm_cell_89/MatMul/ReadVariableOp2^
-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp-lstm_320/lstm_cell_89/MatMul_1/ReadVariableOp2 
lstm_320/whilelstm_320/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
8

D__inference_lstm_319_layer_call_and_return_conditional_losses_540235

inputs&
lstm_cell_88_540153:	dШ&
lstm_cell_88_540155:	2Ш"
lstm_cell_88_540157:	Ш
identityЂ$lstm_cell_88/StatefulPartitionedCallЂwhile;
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
shrink_axis_maskѕ
$lstm_cell_88/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_88_540153lstm_cell_88_540155lstm_cell_88_540157*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_540107n
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
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_88_540153lstm_cell_88_540155lstm_cell_88_540157*
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
bodyR
while_body_540166*
condR
while_cond_540165*K
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
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_88/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_88/StatefulPartitionedCall$lstm_cell_88/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
лB
№

lstm_318_while_body_542344.
*lstm_318_while_lstm_318_while_loop_counter4
0lstm_318_while_lstm_318_while_maximum_iterations
lstm_318_while_placeholder 
lstm_318_while_placeholder_1 
lstm_318_while_placeholder_2 
lstm_318_while_placeholder_3-
)lstm_318_while_lstm_318_strided_slice_1_0i
elstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0:	Q
>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0:	dL
=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0:	
lstm_318_while_identity
lstm_318_while_identity_1
lstm_318_while_identity_2
lstm_318_while_identity_3
lstm_318_while_identity_4
lstm_318_while_identity_5+
'lstm_318_while_lstm_318_strided_slice_1g
clstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensorM
:lstm_318_while_lstm_cell_87_matmul_readvariableop_resource:	O
<lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource:	dJ
;lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource:	Ђ2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpЂ1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpЂ3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp
@lstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   г
2lstm_318/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0lstm_318_while_placeholderIlstm_318/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOpReadVariableOp<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0е
"lstm_318/while/lstm_cell_87/MatMulMatMul9lstm_318/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOpReadVariableOp>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0М
$lstm_318/while/lstm_cell_87/MatMul_1MatMullstm_318_while_placeholder_2;lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_318/while/lstm_cell_87/addAddV2,lstm_318/while/lstm_cell_87/MatMul:product:0.lstm_318/while/lstm_cell_87/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOpReadVariableOp=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_318/while/lstm_cell_87/BiasAddBiasAdd#lstm_318/while/lstm_cell_87/add:z:0:lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_318/while/lstm_cell_87/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_318/while/lstm_cell_87/splitSplit4lstm_318/while/lstm_cell_87/split/split_dim:output:0,lstm_318/while/lstm_cell_87/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_318/while/lstm_cell_87/SigmoidSigmoid*lstm_318/while/lstm_cell_87/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_318/while/lstm_cell_87/Sigmoid_1Sigmoid*lstm_318/while/lstm_cell_87/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_318/while/lstm_cell_87/mulMul)lstm_318/while/lstm_cell_87/Sigmoid_1:y:0lstm_318_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_318/while/lstm_cell_87/ReluRelu*lstm_318/while/lstm_cell_87/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_318/while/lstm_cell_87/mul_1Mul'lstm_318/while/lstm_cell_87/Sigmoid:y:0.lstm_318/while/lstm_cell_87/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_318/while/lstm_cell_87/add_1AddV2#lstm_318/while/lstm_cell_87/mul:z:0%lstm_318/while/lstm_cell_87/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_318/while/lstm_cell_87/Sigmoid_2Sigmoid*lstm_318/while/lstm_cell_87/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_318/while/lstm_cell_87/Relu_1Relu%lstm_318/while/lstm_cell_87/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_318/while/lstm_cell_87/mul_2Mul)lstm_318/while/lstm_cell_87/Sigmoid_2:y:00lstm_318/while/lstm_cell_87/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdщ
3lstm_318/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_318_while_placeholder_1lstm_318_while_placeholder%lstm_318/while/lstm_cell_87/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_318/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_318/while/addAddV2lstm_318_while_placeholderlstm_318/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_318/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_318/while/add_1AddV2*lstm_318_while_lstm_318_while_loop_counterlstm_318/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_318/while/IdentityIdentitylstm_318/while/add_1:z:0^lstm_318/while/NoOp*
T0*
_output_shapes
: 
lstm_318/while/Identity_1Identity0lstm_318_while_lstm_318_while_maximum_iterations^lstm_318/while/NoOp*
T0*
_output_shapes
: t
lstm_318/while/Identity_2Identitylstm_318/while/add:z:0^lstm_318/while/NoOp*
T0*
_output_shapes
: Ё
lstm_318/while/Identity_3IdentityClstm_318/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_318/while/NoOp*
T0*
_output_shapes
: 
lstm_318/while/Identity_4Identity%lstm_318/while/lstm_cell_87/mul_2:z:0^lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_318/while/Identity_5Identity%lstm_318/while/lstm_cell_87/add_1:z:0^lstm_318/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdє
lstm_318/while/NoOpNoOp3^lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2^lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp4^lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_318_while_identity lstm_318/while/Identity:output:0"?
lstm_318_while_identity_1"lstm_318/while/Identity_1:output:0"?
lstm_318_while_identity_2"lstm_318/while/Identity_2:output:0"?
lstm_318_while_identity_3"lstm_318/while/Identity_3:output:0"?
lstm_318_while_identity_4"lstm_318/while/Identity_4:output:0"?
lstm_318_while_identity_5"lstm_318/while/Identity_5:output:0"T
'lstm_318_while_lstm_318_strided_slice_1)lstm_318_while_lstm_318_strided_slice_1_0"|
;lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource=lstm_318_while_lstm_cell_87_biasadd_readvariableop_resource_0"~
<lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource>lstm_318_while_lstm_cell_87_matmul_1_readvariableop_resource_0"z
:lstm_318_while_lstm_cell_87_matmul_readvariableop_resource<lstm_318_while_lstm_cell_87_matmul_readvariableop_resource_0"Ь
clstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensorelstm_318_while_tensorarrayv2read_tensorlistgetitem_lstm_318_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2lstm_318/while/lstm_cell_87/BiasAdd/ReadVariableOp2f
1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp1lstm_318/while/lstm_cell_87/MatMul/ReadVariableOp2j
3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp3lstm_318/while/lstm_cell_87/MatMul_1/ReadVariableOp: 
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
В

ї
lstm_318_while_cond_542343.
*lstm_318_while_lstm_318_while_loop_counter4
0lstm_318_while_lstm_318_while_maximum_iterations
lstm_318_while_placeholder 
lstm_318_while_placeholder_1 
lstm_318_while_placeholder_2 
lstm_318_while_placeholder_30
,lstm_318_while_less_lstm_318_strided_slice_1F
Blstm_318_while_lstm_318_while_cond_542343___redundant_placeholder0F
Blstm_318_while_lstm_318_while_cond_542343___redundant_placeholder1F
Blstm_318_while_lstm_318_while_cond_542343___redundant_placeholder2F
Blstm_318_while_lstm_318_while_cond_542343___redundant_placeholder3
lstm_318_while_identity

lstm_318/while/LessLesslstm_318_while_placeholder,lstm_318_while_less_lstm_318_strided_slice_1*
T0*
_output_shapes
: ]
lstm_318/while/IdentityIdentitylstm_318/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_318_while_identity lstm_318/while/Identity:output:0*(
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
ЉT
Ю
)sequential_106_lstm_320_while_body_539454L
Hsequential_106_lstm_320_while_sequential_106_lstm_320_while_loop_counterR
Nsequential_106_lstm_320_while_sequential_106_lstm_320_while_maximum_iterations-
)sequential_106_lstm_320_while_placeholder/
+sequential_106_lstm_320_while_placeholder_1/
+sequential_106_lstm_320_while_placeholder_2/
+sequential_106_lstm_320_while_placeholder_3K
Gsequential_106_lstm_320_while_sequential_106_lstm_320_strided_slice_1_0
sequential_106_lstm_320_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_320_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_106_lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0:2(_
Msequential_106_lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(Z
Lsequential_106_lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0:(*
&sequential_106_lstm_320_while_identity,
(sequential_106_lstm_320_while_identity_1,
(sequential_106_lstm_320_while_identity_2,
(sequential_106_lstm_320_while_identity_3,
(sequential_106_lstm_320_while_identity_4,
(sequential_106_lstm_320_while_identity_5I
Esequential_106_lstm_320_while_sequential_106_lstm_320_strided_slice_1
sequential_106_lstm_320_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_320_tensorarrayunstack_tensorlistfromtensor[
Isequential_106_lstm_320_while_lstm_cell_89_matmul_readvariableop_resource:2(]
Ksequential_106_lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource:
(X
Jsequential_106_lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource:(ЂAsequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpЂ@sequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpЂBsequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp 
Osequential_106/lstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
Asequential_106/lstm_320/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_106_lstm_320_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_320_tensorarrayunstack_tensorlistfromtensor_0)sequential_106_lstm_320_while_placeholderXsequential_106/lstm_320/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ь
@sequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOpKsequential_106_lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_106/lstm_320/while/lstm_cell_89/MatMulMatMulHsequential_106/lstm_320/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(а
Bsequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOpMsequential_106_lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ш
3sequential_106/lstm_320/while/lstm_cell_89/MatMul_1MatMul+sequential_106_lstm_320_while_placeholder_2Jsequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(х
.sequential_106/lstm_320/while/lstm_cell_89/addAddV2;sequential_106/lstm_320/while/lstm_cell_89/MatMul:product:0=sequential_106/lstm_320/while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ъ
Asequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOpLsequential_106_lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ю
2sequential_106/lstm_320/while/lstm_cell_89/BiasAddBiasAdd2sequential_106/lstm_320/while/lstm_cell_89/add:z:0Isequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(|
:sequential_106/lstm_320/while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_106/lstm_320/while/lstm_cell_89/splitSplitCsequential_106/lstm_320/while/lstm_cell_89/split/split_dim:output:0;sequential_106/lstm_320/while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitЊ
2sequential_106/lstm_320/while/lstm_cell_89/SigmoidSigmoid9sequential_106/lstm_320/while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
4sequential_106/lstm_320/while/lstm_cell_89/Sigmoid_1Sigmoid9sequential_106/lstm_320/while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
.sequential_106/lstm_320/while/lstm_cell_89/mulMul8sequential_106/lstm_320/while/lstm_cell_89/Sigmoid_1:y:0+sequential_106_lstm_320_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
Є
/sequential_106/lstm_320/while/lstm_cell_89/ReluRelu9sequential_106/lstm_320/while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
р
0sequential_106/lstm_320/while/lstm_cell_89/mul_1Mul6sequential_106/lstm_320/while/lstm_cell_89/Sigmoid:y:0=sequential_106/lstm_320/while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
е
0sequential_106/lstm_320/while/lstm_cell_89/add_1AddV22sequential_106/lstm_320/while/lstm_cell_89/mul:z:04sequential_106/lstm_320/while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
4sequential_106/lstm_320/while/lstm_cell_89/Sigmoid_2Sigmoid9sequential_106/lstm_320/while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
1sequential_106/lstm_320/while/lstm_cell_89/Relu_1Relu4sequential_106/lstm_320/while/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
ф
0sequential_106/lstm_320/while/lstm_cell_89/mul_2Mul8sequential_106/lstm_320/while/lstm_cell_89/Sigmoid_2:y:0?sequential_106/lstm_320/while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Bsequential_106/lstm_320/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_106_lstm_320_while_placeholder_1)sequential_106_lstm_320_while_placeholder4sequential_106/lstm_320/while/lstm_cell_89/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_106/lstm_320/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_106/lstm_320/while/addAddV2)sequential_106_lstm_320_while_placeholder,sequential_106/lstm_320/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_106/lstm_320/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_106/lstm_320/while/add_1AddV2Hsequential_106_lstm_320_while_sequential_106_lstm_320_while_loop_counter.sequential_106/lstm_320/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_106/lstm_320/while/IdentityIdentity'sequential_106/lstm_320/while/add_1:z:0#^sequential_106/lstm_320/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_106/lstm_320/while/Identity_1IdentityNsequential_106_lstm_320_while_sequential_106_lstm_320_while_maximum_iterations#^sequential_106/lstm_320/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_106/lstm_320/while/Identity_2Identity%sequential_106/lstm_320/while/add:z:0#^sequential_106/lstm_320/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_106/lstm_320/while/Identity_3IdentityRsequential_106/lstm_320/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_106/lstm_320/while/NoOp*
T0*
_output_shapes
: С
(sequential_106/lstm_320/while/Identity_4Identity4sequential_106/lstm_320/while/lstm_cell_89/mul_2:z:0#^sequential_106/lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
С
(sequential_106/lstm_320/while/Identity_5Identity4sequential_106/lstm_320/while/lstm_cell_89/add_1:z:0#^sequential_106/lstm_320/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
А
"sequential_106/lstm_320/while/NoOpNoOpB^sequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpA^sequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOpC^sequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_106_lstm_320_while_identity/sequential_106/lstm_320/while/Identity:output:0"]
(sequential_106_lstm_320_while_identity_11sequential_106/lstm_320/while/Identity_1:output:0"]
(sequential_106_lstm_320_while_identity_21sequential_106/lstm_320/while/Identity_2:output:0"]
(sequential_106_lstm_320_while_identity_31sequential_106/lstm_320/while/Identity_3:output:0"]
(sequential_106_lstm_320_while_identity_41sequential_106/lstm_320/while/Identity_4:output:0"]
(sequential_106_lstm_320_while_identity_51sequential_106/lstm_320/while/Identity_5:output:0"
Jsequential_106_lstm_320_while_lstm_cell_89_biasadd_readvariableop_resourceLsequential_106_lstm_320_while_lstm_cell_89_biasadd_readvariableop_resource_0"
Ksequential_106_lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resourceMsequential_106_lstm_320_while_lstm_cell_89_matmul_1_readvariableop_resource_0"
Isequential_106_lstm_320_while_lstm_cell_89_matmul_readvariableop_resourceKsequential_106_lstm_320_while_lstm_cell_89_matmul_readvariableop_resource_0"
Esequential_106_lstm_320_while_sequential_106_lstm_320_strided_slice_1Gsequential_106_lstm_320_while_sequential_106_lstm_320_strided_slice_1_0"
sequential_106_lstm_320_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_320_tensorarrayunstack_tensorlistfromtensorsequential_106_lstm_320_while_tensorarrayv2read_tensorlistgetitem_sequential_106_lstm_320_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2
Asequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOpAsequential_106/lstm_320/while/lstm_cell_89/BiasAdd/ReadVariableOp2
@sequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp@sequential_106/lstm_320/while/lstm_cell_89/MatMul/ReadVariableOp2
Bsequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOpBsequential_106/lstm_320/while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
џ7
Ъ
while_body_544333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_89_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_89_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_89_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_89_matmul_readvariableop_resource:2(E
3while_lstm_cell_89_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_89_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_89/BiasAdd/ReadVariableOpЂ(while/lstm_cell_89/MatMul/ReadVariableOpЂ*while/lstm_cell_89/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_89/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_89_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_89/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_89/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_89_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_89/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_89/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_89/addAddV2#while/lstm_cell_89/MatMul:product:0%while/lstm_cell_89/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_89/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_89_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_89/BiasAddBiasAddwhile/lstm_cell_89/add:z:01while/lstm_cell_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_89/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_89/splitSplit+while/lstm_cell_89/split/split_dim:output:0#while/lstm_cell_89/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_89/SigmoidSigmoid!while/lstm_cell_89/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_1Sigmoid!while/lstm_cell_89/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mulMul while/lstm_cell_89/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_89/ReluRelu!while/lstm_cell_89/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_1Mulwhile/lstm_cell_89/Sigmoid:y:0%while/lstm_cell_89/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/add_1AddV2while/lstm_cell_89/mul:z:0while/lstm_cell_89/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_89/Sigmoid_2Sigmoid!while/lstm_cell_89/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_89/Relu_1Reluwhile/lstm_cell_89/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_89/mul_2Mul while/lstm_cell_89/Sigmoid_2:y:0'while/lstm_cell_89/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_89/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_89/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_89/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_89/BiasAdd/ReadVariableOp)^while/lstm_cell_89/MatMul/ReadVariableOp+^while/lstm_cell_89/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_89_biasadd_readvariableop_resource4while_lstm_cell_89_biasadd_readvariableop_resource_0"l
3while_lstm_cell_89_matmul_1_readvariableop_resource5while_lstm_cell_89_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_89_matmul_readvariableop_resource3while_lstm_cell_89_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_89/BiasAdd/ReadVariableOp)while/lstm_cell_89/BiasAdd/ReadVariableOp2T
(while/lstm_cell_89/MatMul/ReadVariableOp(while/lstm_cell_89/MatMul/ReadVariableOp2X
*while/lstm_cell_89/MatMul_1/ReadVariableOp*while/lstm_cell_89/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_318_layer_call_fn_542745

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
D__inference_lstm_318_layer_call_and_return_conditional_losses_540743s
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
е

H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_540107

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
 
_user_specified_namestates"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*О
serving_defaultЊ
M
lstm_318_input;
 serving_default_lstm_318_input:0џџџџџџџџџ=
	dense_1060
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:б
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
": 
2dense_106/kernel
:2dense_106/bias
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
0:.	2lstm_318/lstm_cell_318/kernel
::8	d2'lstm_318/lstm_cell_318/recurrent_kernel
*:(2lstm_318/lstm_cell_318/bias
0:.	dШ2lstm_319/lstm_cell_319/kernel
::8	2Ш2'lstm_319/lstm_cell_319/recurrent_kernel
*:(Ш2lstm_319/lstm_cell_319/bias
/:-2(2lstm_320/lstm_cell_320/kernel
9:7
(2'lstm_320/lstm_cell_320/recurrent_kernel
):'(2lstm_320/lstm_cell_320/bias
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
':%
2Adam/dense_106/kernel/m
!:2Adam/dense_106/bias/m
5:3	2$Adam/lstm_318/lstm_cell_318/kernel/m
?:=	d2.Adam/lstm_318/lstm_cell_318/recurrent_kernel/m
/:-2"Adam/lstm_318/lstm_cell_318/bias/m
5:3	dШ2$Adam/lstm_319/lstm_cell_319/kernel/m
?:=	2Ш2.Adam/lstm_319/lstm_cell_319/recurrent_kernel/m
/:-Ш2"Adam/lstm_319/lstm_cell_319/bias/m
4:22(2$Adam/lstm_320/lstm_cell_320/kernel/m
>:<
(2.Adam/lstm_320/lstm_cell_320/recurrent_kernel/m
.:,(2"Adam/lstm_320/lstm_cell_320/bias/m
':%
2Adam/dense_106/kernel/v
!:2Adam/dense_106/bias/v
5:3	2$Adam/lstm_318/lstm_cell_318/kernel/v
?:=	d2.Adam/lstm_318/lstm_cell_318/recurrent_kernel/v
/:-2"Adam/lstm_318/lstm_cell_318/bias/v
5:3	dШ2$Adam/lstm_319/lstm_cell_319/kernel/v
?:=	2Ш2.Adam/lstm_319/lstm_cell_319/recurrent_kernel/v
/:-Ш2"Adam/lstm_319/lstm_cell_319/bias/v
4:22(2$Adam/lstm_320/lstm_cell_320/kernel/v
>:<
(2.Adam/lstm_320/lstm_cell_320/recurrent_kernel/v
.:,(2"Adam/lstm_320/lstm_cell_320/bias/v
2
/__inference_sequential_106_layer_call_fn_541093
/__inference_sequential_106_layer_call_fn_541831
/__inference_sequential_106_layer_call_fn_541858
/__inference_sequential_106_layer_call_fn_541709Р
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
і2ѓ
J__inference_sequential_106_layer_call_and_return_conditional_losses_542285
J__inference_sequential_106_layer_call_and_return_conditional_losses_542712
J__inference_sequential_106_layer_call_and_return_conditional_losses_541739
J__inference_sequential_106_layer_call_and_return_conditional_losses_541769Р
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
!__inference__wrapped_model_539544lstm_318_input"
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
)__inference_lstm_318_layer_call_fn_542723
)__inference_lstm_318_layer_call_fn_542734
)__inference_lstm_318_layer_call_fn_542745
)__inference_lstm_318_layer_call_fn_542756е
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_542899
D__inference_lstm_318_layer_call_and_return_conditional_losses_543042
D__inference_lstm_318_layer_call_and_return_conditional_losses_543185
D__inference_lstm_318_layer_call_and_return_conditional_losses_543328е
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
)__inference_lstm_319_layer_call_fn_543339
)__inference_lstm_319_layer_call_fn_543350
)__inference_lstm_319_layer_call_fn_543361
)__inference_lstm_319_layer_call_fn_543372е
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_543515
D__inference_lstm_319_layer_call_and_return_conditional_losses_543658
D__inference_lstm_319_layer_call_and_return_conditional_losses_543801
D__inference_lstm_319_layer_call_and_return_conditional_losses_543944е
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
)__inference_lstm_320_layer_call_fn_543955
)__inference_lstm_320_layer_call_fn_543966
)__inference_lstm_320_layer_call_fn_543977
)__inference_lstm_320_layer_call_fn_543988е
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_544131
D__inference_lstm_320_layer_call_and_return_conditional_losses_544274
D__inference_lstm_320_layer_call_and_return_conditional_losses_544417
D__inference_lstm_320_layer_call_and_return_conditional_losses_544560е
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
д2б
*__inference_dense_106_layer_call_fn_544569Ђ
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
я2ь
E__inference_dense_106_layer_call_and_return_conditional_losses_544579Ђ
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
$__inference_signature_wrapper_541804lstm_318_input"
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
-__inference_lstm_cell_87_layer_call_fn_544596
-__inference_lstm_cell_87_layer_call_fn_544613О
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
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544645
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544677О
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
Ђ2
-__inference_lstm_cell_88_layer_call_fn_544694
-__inference_lstm_cell_88_layer_call_fn_544711О
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
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544743
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544775О
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
Ђ2
-__inference_lstm_cell_89_layer_call_fn_544792
-__inference_lstm_cell_89_layer_call_fn_544809О
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
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544841
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544873О
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
 Ї
!__inference__wrapped_model_539544-./012345!";Ђ8
1Ђ.
,)
lstm_318_inputџџџџџџџџџ
Њ "5Њ2
0
	dense_106# 
	dense_106џџџџџџџџџЅ
E__inference_dense_106_layer_call_and_return_conditional_losses_544579\!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_106_layer_call_fn_544569O!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџг
D__inference_lstm_318_layer_call_and_return_conditional_losses_542899-./OЂL
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_543042-./OЂL
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_543185q-./?Ђ<
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
D__inference_lstm_318_layer_call_and_return_conditional_losses_543328q-./?Ђ<
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
)__inference_lstm_318_layer_call_fn_542723}-./OЂL
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
)__inference_lstm_318_layer_call_fn_542734}-./OЂL
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
)__inference_lstm_318_layer_call_fn_542745d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџd
)__inference_lstm_318_layer_call_fn_542756d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџdг
D__inference_lstm_319_layer_call_and_return_conditional_losses_543515012OЂL
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_543658012OЂL
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_543801q012?Ђ<
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
D__inference_lstm_319_layer_call_and_return_conditional_losses_543944q012?Ђ<
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
)__inference_lstm_319_layer_call_fn_543339}012OЂL
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
)__inference_lstm_319_layer_call_fn_543350}012OЂL
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
)__inference_lstm_319_layer_call_fn_543361d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџ2
)__inference_lstm_319_layer_call_fn_543372d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџ2Х
D__inference_lstm_320_layer_call_and_return_conditional_losses_544131}345OЂL
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_544274}345OЂL
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_544417m345?Ђ<
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
D__inference_lstm_320_layer_call_and_return_conditional_losses_544560m345?Ђ<
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
)__inference_lstm_320_layer_call_fn_543955p345OЂL
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
)__inference_lstm_320_layer_call_fn_543966p345OЂL
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
)__inference_lstm_320_layer_call_fn_543977`345?Ђ<
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
)__inference_lstm_320_layer_call_fn_543988`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ
Ъ
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544645§-./Ђ}
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
 Ъ
H__inference_lstm_cell_87_layer_call_and_return_conditional_losses_544677§-./Ђ}
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
 
-__inference_lstm_cell_87_layer_call_fn_544596э-./Ђ}
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
1/1џџџџџџџџџd
-__inference_lstm_cell_87_layer_call_fn_544613э-./Ђ}
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
1/1џџџџџџџџџdЪ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544743§012Ђ}
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
 Ъ
H__inference_lstm_cell_88_layer_call_and_return_conditional_losses_544775§012Ђ}
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
 
-__inference_lstm_cell_88_layer_call_fn_544694э012Ђ}
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
1/1џџџџџџџџџ2
-__inference_lstm_cell_88_layer_call_fn_544711э012Ђ}
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
1/1џџџџџџџџџ2Ъ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544841§345Ђ}
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
 Ъ
H__inference_lstm_cell_89_layer_call_and_return_conditional_losses_544873§345Ђ}
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
 
-__inference_lstm_cell_89_layer_call_fn_544792э345Ђ}
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

-__inference_lstm_cell_89_layer_call_fn_544809э345Ђ}
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
Ч
J__inference_sequential_106_layer_call_and_return_conditional_losses_541739y-./012345!"CЂ@
9Ђ6
,)
lstm_318_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ч
J__inference_sequential_106_layer_call_and_return_conditional_losses_541769y-./012345!"CЂ@
9Ђ6
,)
lstm_318_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_106_layer_call_and_return_conditional_losses_542285q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_106_layer_call_and_return_conditional_losses_542712q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
/__inference_sequential_106_layer_call_fn_541093l-./012345!"CЂ@
9Ђ6
,)
lstm_318_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_106_layer_call_fn_541709l-./012345!"CЂ@
9Ђ6
,)
lstm_318_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
/__inference_sequential_106_layer_call_fn_541831d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_106_layer_call_fn_541858d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџМ
$__inference_signature_wrapper_541804-./012345!"MЂJ
Ђ 
CЊ@
>
lstm_318_input,)
lstm_318_inputџџџџџџџџџ"5Њ2
0
	dense_106# 
	dense_106џџџџџџџџџ