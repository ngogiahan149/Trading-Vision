зе/
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28№┐-
|
dense_267/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_267/kernel
u
$dense_267/kernel/Read/ReadVariableOpReadVariableOpdense_267/kernel*
_output_shapes

:
*
dtype0
t
dense_267/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_267/bias
m
"dense_267/bias/Read/ReadVariableOpReadVariableOpdense_267/bias*
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
Ќ
lstm_801/lstm_cell_801/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_801/lstm_cell_801/kernel
љ
1lstm_801/lstm_cell_801/kernel/Read/ReadVariableOpReadVariableOplstm_801/lstm_cell_801/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_801/lstm_cell_801/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_801/lstm_cell_801/recurrent_kernel
ц
;lstm_801/lstm_cell_801/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_801/lstm_cell_801/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_801/lstm_cell_801/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_801/lstm_cell_801/bias
ѕ
/lstm_801/lstm_cell_801/bias/Read/ReadVariableOpReadVariableOplstm_801/lstm_cell_801/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_802/lstm_cell_802/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_802/lstm_cell_802/kernel
љ
1lstm_802/lstm_cell_802/kernel/Read/ReadVariableOpReadVariableOplstm_802/lstm_cell_802/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_802/lstm_cell_802/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_802/lstm_cell_802/recurrent_kernel
ц
;lstm_802/lstm_cell_802/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_802/lstm_cell_802/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_802/lstm_cell_802/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_802/lstm_cell_802/bias
ѕ
/lstm_802/lstm_cell_802/bias/Read/ReadVariableOpReadVariableOplstm_802/lstm_cell_802/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_803/lstm_cell_803/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_803/lstm_cell_803/kernel
Ј
1lstm_803/lstm_cell_803/kernel/Read/ReadVariableOpReadVariableOplstm_803/lstm_cell_803/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_803/lstm_cell_803/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_803/lstm_cell_803/recurrent_kernel
Б
;lstm_803/lstm_cell_803/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_803/lstm_cell_803/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_803/lstm_cell_803/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_803/lstm_cell_803/bias
Є
/lstm_803/lstm_cell_803/bias/Read/ReadVariableOpReadVariableOplstm_803/lstm_cell_803/bias*
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
і
Adam/dense_267/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_267/kernel/m
Ѓ
+Adam/dense_267/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_267/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_267/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_267/bias/m
{
)Adam/dense_267/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_267/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_801/lstm_cell_801/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_801/lstm_cell_801/kernel/m
ъ
8Adam/lstm_801/lstm_cell_801/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_801/lstm_cell_801/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_801/lstm_cell_801/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_801/lstm_cell_801/recurrent_kernel/m
▓
BAdam/lstm_801/lstm_cell_801/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_801/lstm_cell_801/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_801/lstm_cell_801/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_801/lstm_cell_801/bias/m
ќ
6Adam/lstm_801/lstm_cell_801/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_801/lstm_cell_801/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_802/lstm_cell_802/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_802/lstm_cell_802/kernel/m
ъ
8Adam/lstm_802/lstm_cell_802/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_802/lstm_cell_802/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_802/lstm_cell_802/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_802/lstm_cell_802/recurrent_kernel/m
▓
BAdam/lstm_802/lstm_cell_802/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_802/lstm_cell_802/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_802/lstm_cell_802/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_802/lstm_cell_802/bias/m
ќ
6Adam/lstm_802/lstm_cell_802/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_802/lstm_cell_802/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_803/lstm_cell_803/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_803/lstm_cell_803/kernel/m
Ю
8Adam/lstm_803/lstm_cell_803/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_803/lstm_cell_803/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_803/lstm_cell_803/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_803/lstm_cell_803/recurrent_kernel/m
▒
BAdam/lstm_803/lstm_cell_803/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_803/lstm_cell_803/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_803/lstm_cell_803/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_803/lstm_cell_803/bias/m
Ћ
6Adam/lstm_803/lstm_cell_803/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_803/lstm_cell_803/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_267/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_267/kernel/v
Ѓ
+Adam/dense_267/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_267/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_267/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_267/bias/v
{
)Adam/dense_267/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_267/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_801/lstm_cell_801/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_801/lstm_cell_801/kernel/v
ъ
8Adam/lstm_801/lstm_cell_801/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_801/lstm_cell_801/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_801/lstm_cell_801/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_801/lstm_cell_801/recurrent_kernel/v
▓
BAdam/lstm_801/lstm_cell_801/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_801/lstm_cell_801/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_801/lstm_cell_801/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_801/lstm_cell_801/bias/v
ќ
6Adam/lstm_801/lstm_cell_801/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_801/lstm_cell_801/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_802/lstm_cell_802/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_802/lstm_cell_802/kernel/v
ъ
8Adam/lstm_802/lstm_cell_802/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_802/lstm_cell_802/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_802/lstm_cell_802/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_802/lstm_cell_802/recurrent_kernel/v
▓
BAdam/lstm_802/lstm_cell_802/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_802/lstm_cell_802/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_802/lstm_cell_802/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_802/lstm_cell_802/bias/v
ќ
6Adam/lstm_802/lstm_cell_802/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_802/lstm_cell_802/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_803/lstm_cell_803/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_803/lstm_cell_803/kernel/v
Ю
8Adam/lstm_803/lstm_cell_803/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_803/lstm_cell_803/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_803/lstm_cell_803/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_803/lstm_cell_803/recurrent_kernel/v
▒
BAdam/lstm_803/lstm_cell_803/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_803/lstm_cell_803/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_803/lstm_cell_803/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_803/lstm_cell_803/bias/v
Ћ
6Adam/lstm_803/lstm_cell_803/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_803/lstm_cell_803/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
А?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▄>
valueм>B¤> B╚>
Ї
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
ї
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
Г
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
ј
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
╣

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
ј
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
╣

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
ј
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
╣

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_267/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_267/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
VARIABLE_VALUElstm_801/lstm_cell_801/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_801/lstm_cell_801/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_801/lstm_cell_801/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_802/lstm_cell_802/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_802/lstm_cell_802/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_802/lstm_cell_802/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_803/lstm_cell_803/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_803/lstm_cell_803/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_803/lstm_cell_803/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
Г
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
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
l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_267/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_267/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_801/lstm_cell_801/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_801/lstm_cell_801/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_801/lstm_cell_801/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_802/lstm_cell_802/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_802/lstm_cell_802/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_802/lstm_cell_802/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_803/lstm_cell_803/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_803/lstm_cell_803/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_803/lstm_cell_803/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_267/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_267/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_801/lstm_cell_801/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_801/lstm_cell_801/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_801/lstm_cell_801/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_802/lstm_cell_802/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_802/lstm_cell_802/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_802/lstm_cell_802/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_803/lstm_cell_803/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_803/lstm_cell_803/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_803/lstm_cell_803/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_801_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_801_inputlstm_801/lstm_cell_801/kernel'lstm_801/lstm_cell_801/recurrent_kernellstm_801/lstm_cell_801/biaslstm_802/lstm_cell_802/kernel'lstm_802/lstm_cell_802/recurrent_kernellstm_802/lstm_cell_802/biaslstm_803/lstm_cell_803/kernel'lstm_803/lstm_cell_803/recurrent_kernellstm_803/lstm_cell_803/biasdense_267/kerneldense_267/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_4875634
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_267/kernel/Read/ReadVariableOp"dense_267/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_801/lstm_cell_801/kernel/Read/ReadVariableOp;lstm_801/lstm_cell_801/recurrent_kernel/Read/ReadVariableOp/lstm_801/lstm_cell_801/bias/Read/ReadVariableOp1lstm_802/lstm_cell_802/kernel/Read/ReadVariableOp;lstm_802/lstm_cell_802/recurrent_kernel/Read/ReadVariableOp/lstm_802/lstm_cell_802/bias/Read/ReadVariableOp1lstm_803/lstm_cell_803/kernel/Read/ReadVariableOp;lstm_803/lstm_cell_803/recurrent_kernel/Read/ReadVariableOp/lstm_803/lstm_cell_803/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_267/kernel/m/Read/ReadVariableOp)Adam/dense_267/bias/m/Read/ReadVariableOp8Adam/lstm_801/lstm_cell_801/kernel/m/Read/ReadVariableOpBAdam/lstm_801/lstm_cell_801/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_801/lstm_cell_801/bias/m/Read/ReadVariableOp8Adam/lstm_802/lstm_cell_802/kernel/m/Read/ReadVariableOpBAdam/lstm_802/lstm_cell_802/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_802/lstm_cell_802/bias/m/Read/ReadVariableOp8Adam/lstm_803/lstm_cell_803/kernel/m/Read/ReadVariableOpBAdam/lstm_803/lstm_cell_803/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_803/lstm_cell_803/bias/m/Read/ReadVariableOp+Adam/dense_267/kernel/v/Read/ReadVariableOp)Adam/dense_267/bias/v/Read/ReadVariableOp8Adam/lstm_801/lstm_cell_801/kernel/v/Read/ReadVariableOpBAdam/lstm_801/lstm_cell_801/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_801/lstm_cell_801/bias/v/Read/ReadVariableOp8Adam/lstm_802/lstm_cell_802/kernel/v/Read/ReadVariableOpBAdam/lstm_802/lstm_cell_802/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_802/lstm_cell_802/bias/v/Read/ReadVariableOp8Adam/lstm_803/lstm_cell_803/kernel/v/Read/ReadVariableOpBAdam/lstm_803/lstm_cell_803/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_803/lstm_cell_803/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_4878846
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_267/kerneldense_267/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_801/lstm_cell_801/kernel'lstm_801/lstm_cell_801/recurrent_kernellstm_801/lstm_cell_801/biaslstm_802/lstm_cell_802/kernel'lstm_802/lstm_cell_802/recurrent_kernellstm_802/lstm_cell_802/biaslstm_803/lstm_cell_803/kernel'lstm_803/lstm_cell_803/recurrent_kernellstm_803/lstm_cell_803/biastotalcountAdam/dense_267/kernel/mAdam/dense_267/bias/m$Adam/lstm_801/lstm_cell_801/kernel/m.Adam/lstm_801/lstm_cell_801/recurrent_kernel/m"Adam/lstm_801/lstm_cell_801/bias/m$Adam/lstm_802/lstm_cell_802/kernel/m.Adam/lstm_802/lstm_cell_802/recurrent_kernel/m"Adam/lstm_802/lstm_cell_802/bias/m$Adam/lstm_803/lstm_cell_803/kernel/m.Adam/lstm_803/lstm_cell_803/recurrent_kernel/m"Adam/lstm_803/lstm_cell_803/bias/mAdam/dense_267/kernel/vAdam/dense_267/bias/v$Adam/lstm_801/lstm_cell_801/kernel/v.Adam/lstm_801/lstm_cell_801/recurrent_kernel/v"Adam/lstm_801/lstm_cell_801/bias/v$Adam/lstm_802/lstm_cell_802/kernel/v.Adam/lstm_802/lstm_cell_802/recurrent_kernel/v"Adam/lstm_802/lstm_cell_802/bias/v$Adam/lstm_803/lstm_cell_803/kernel/v.Adam/lstm_803/lstm_cell_803/recurrent_kernel/v"Adam/lstm_803/lstm_cell_803/bias/v*4
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_4878976░■+
О
є
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873587

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Ѓ
и
*__inference_lstm_801_layer_call_fn_4876575

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4874573s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е8
І
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874415

inputs'
lstm_cell_803_4874333:2('
lstm_cell_803_4874335:
(#
lstm_cell_803_4874337:(
identityѕб%lstm_cell_803/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_803/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_803_4874333lstm_cell_803_4874335lstm_cell_803_4874337*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874287n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_803_4874333lstm_cell_803_4874335lstm_cell_803_4874337*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4874346*
condR
while_cond_4874345*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_803/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_803/StatefulPartitionedCall%lstm_cell_803/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_802_layer_call_fn_4877180
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874065|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
║
╚
while_cond_4877876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877876___redundant_placeholder05
1while_while_cond_4877876___redundant_placeholder15
1while_while_cond_4877876___redundant_placeholder25
1while_while_cond_4877876___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
»8
ј
E__inference_lstm_801_layer_call_and_return_conditional_losses_4873524

inputs(
lstm_cell_801_4873442:	љ(
lstm_cell_801_4873444:	dљ$
lstm_cell_801_4873446:	љ
identityѕб%lstm_cell_801/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_801/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_801_4873442lstm_cell_801_4873444lstm_cell_801_4873446*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873441n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_801_4873442lstm_cell_801_4873444lstm_cell_801_4873446*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4873455*
condR
while_cond_4873454*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_801/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_801/StatefulPartitionedCall%lstm_cell_801/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878671

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
ПJ
а
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878390

inputs>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4878306*
condR
while_cond_4878305*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878703

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
║
╚
while_cond_4877073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877073___redundant_placeholder05
1while_while_cond_4877073___redundant_placeholder15
1while_while_cond_4877073___redundant_placeholder25
1while_while_cond_4877073___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4876644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4876644___redundant_placeholder05
1while_while_cond_4876644___redundant_placeholder15
1while_while_cond_4876644___redundant_placeholder25
1while_while_cond_4876644___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
љ
Х
*__inference_lstm_803_layer_call_fn_4877785
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
я

ю
0__inference_sequential_267_layer_call_fn_4875661

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_267_layer_call_and_return_conditional_losses_4874898o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_802_layer_call_fn_4877169
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4873874|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
─8
н
while_body_4874789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
═
Ѓ
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874287

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
═
Ѓ
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874141

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
║
╚
while_cond_4874788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4874788___redundant_placeholder05
1while_while_cond_4874788___redundant_placeholder15
1while_while_cond_4874788___redundant_placeholder25
1while_while_cond_4874788___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4877546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877546___redundant_placeholder05
1while_while_cond_4877546___redundant_placeholder15
1while_while_cond_4877546___redundant_placeholder25
1while_while_cond_4877546___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_801_layer_call_and_return_conditional_losses_4874573

inputs?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4874489*
condR
while_cond_4874488*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_801_while_cond_4876173.
*lstm_801_while_lstm_801_while_loop_counter4
0lstm_801_while_lstm_801_while_maximum_iterations
lstm_801_while_placeholder 
lstm_801_while_placeholder_1 
lstm_801_while_placeholder_2 
lstm_801_while_placeholder_30
,lstm_801_while_less_lstm_801_strided_slice_1G
Clstm_801_while_lstm_801_while_cond_4876173___redundant_placeholder0G
Clstm_801_while_lstm_801_while_cond_4876173___redundant_placeholder1G
Clstm_801_while_lstm_801_while_cond_4876173___redundant_placeholder2G
Clstm_801_while_lstm_801_while_cond_4876173___redundant_placeholder3
lstm_801_while_identity
є
lstm_801/while/LessLesslstm_801_while_placeholder,lstm_801_while_less_lstm_801_strided_slice_1*
T0*
_output_shapes
: ]
lstm_801/while/IdentityIdentitylstm_801/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_801_while_identity lstm_801/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876729
inputs_0?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4876645*
condR
while_cond_4876644*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
─8
н
while_body_4878163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4874345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4874345___redundant_placeholder05
1while_while_cond_4874345___redundant_placeholder15
1while_while_cond_4874345___redundant_placeholder25
1while_while_cond_4874345___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
АC
Щ

lstm_802_while_body_4876313.
*lstm_802_while_lstm_802_while_loop_counter4
0lstm_802_while_lstm_802_while_maximum_iterations
lstm_802_while_placeholder 
lstm_802_while_placeholder_1 
lstm_802_while_placeholder_2 
lstm_802_while_placeholder_3-
)lstm_802_while_lstm_802_strided_slice_1_0i
elstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚R
?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚M
>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
lstm_802_while_identity
lstm_802_while_identity_1
lstm_802_while_identity_2
lstm_802_while_identity_3
lstm_802_while_identity_4
lstm_802_while_identity_5+
'lstm_802_while_lstm_802_strided_slice_1g
clstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensorN
;lstm_802_while_lstm_cell_802_matmul_readvariableop_resource:	d╚P
=lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚K
<lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpб2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpб4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpЉ
@lstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_802/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0lstm_802_while_placeholderIlstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_802/while/lstm_cell_802/MatMulMatMul9lstm_802/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_802/while/lstm_cell_802/MatMul_1MatMullstm_802_while_placeholder_2<lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_802/while/lstm_cell_802/addAddV2-lstm_802/while/lstm_cell_802/MatMul:product:0/lstm_802/while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_802/while/lstm_cell_802/BiasAddBiasAdd$lstm_802/while/lstm_cell_802/add:z:0;lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_802/while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_802/while/lstm_cell_802/splitSplit5lstm_802/while/lstm_cell_802/split/split_dim:output:0-lstm_802/while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_802/while/lstm_cell_802/SigmoidSigmoid+lstm_802/while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_802/while/lstm_cell_802/Sigmoid_1Sigmoid+lstm_802/while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_802/while/lstm_cell_802/mulMul*lstm_802/while/lstm_cell_802/Sigmoid_1:y:0lstm_802_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_802/while/lstm_cell_802/ReluRelu+lstm_802/while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_802/while/lstm_cell_802/mul_1Mul(lstm_802/while/lstm_cell_802/Sigmoid:y:0/lstm_802/while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_802/while/lstm_cell_802/add_1AddV2$lstm_802/while/lstm_cell_802/mul:z:0&lstm_802/while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_802/while/lstm_cell_802/Sigmoid_2Sigmoid+lstm_802/while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_802/while/lstm_cell_802/Relu_1Relu&lstm_802/while/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_802/while/lstm_cell_802/mul_2Mul*lstm_802/while/lstm_cell_802/Sigmoid_2:y:01lstm_802/while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_802/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_802_while_placeholder_1lstm_802_while_placeholder&lstm_802/while/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_802/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_802/while/addAddV2lstm_802_while_placeholderlstm_802/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_802/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_802/while/add_1AddV2*lstm_802_while_lstm_802_while_loop_counterlstm_802/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_802/while/IdentityIdentitylstm_802/while/add_1:z:0^lstm_802/while/NoOp*
T0*
_output_shapes
: ј
lstm_802/while/Identity_1Identity0lstm_802_while_lstm_802_while_maximum_iterations^lstm_802/while/NoOp*
T0*
_output_shapes
: t
lstm_802/while/Identity_2Identitylstm_802/while/add:z:0^lstm_802/while/NoOp*
T0*
_output_shapes
: А
lstm_802/while/Identity_3IdentityClstm_802/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_802/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_802/while/Identity_4Identity&lstm_802/while/lstm_cell_802/mul_2:z:0^lstm_802/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_802/while/Identity_5Identity&lstm_802/while/lstm_cell_802/add_1:z:0^lstm_802/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_802/while/NoOpNoOp4^lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp3^lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp5^lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_802_while_identity lstm_802/while/Identity:output:0"?
lstm_802_while_identity_1"lstm_802/while/Identity_1:output:0"?
lstm_802_while_identity_2"lstm_802/while/Identity_2:output:0"?
lstm_802_while_identity_3"lstm_802/while/Identity_3:output:0"?
lstm_802_while_identity_4"lstm_802/while/Identity_4:output:0"?
lstm_802_while_identity_5"lstm_802/while/Identity_5:output:0"T
'lstm_802_while_lstm_802_strided_slice_1)lstm_802_while_lstm_802_strided_slice_1_0"~
<lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0"ђ
=lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0"|
;lstm_802_while_lstm_cell_802_matmul_readvariableop_resource=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0"╠
clstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensorelstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp2h
2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp2l
4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_802_layer_call_fn_4877191

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874723s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
љ
Х
*__inference_lstm_803_layer_call_fn_4877796
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
к
ў
+__inference_dense_267_layer_call_fn_4878399

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ћC
З

lstm_803_while_body_4876025.
*lstm_803_while_lstm_803_while_loop_counter4
0lstm_803_while_lstm_803_while_maximum_iterations
lstm_803_while_placeholder 
lstm_803_while_placeholder_1 
lstm_803_while_placeholder_2 
lstm_803_while_placeholder_3-
)lstm_803_while_lstm_803_strided_slice_1_0i
elstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0:2(Q
?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(L
>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0:(
lstm_803_while_identity
lstm_803_while_identity_1
lstm_803_while_identity_2
lstm_803_while_identity_3
lstm_803_while_identity_4
lstm_803_while_identity_5+
'lstm_803_while_lstm_803_strided_slice_1g
clstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensorM
;lstm_803_while_lstm_cell_803_matmul_readvariableop_resource:2(O
=lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource:
(J
<lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpб2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpб4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpЉ
@lstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_803/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0lstm_803_while_placeholderIlstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_803/while/lstm_cell_803/MatMulMatMul9lstm_803/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_803/while/lstm_cell_803/MatMul_1MatMullstm_803_while_placeholder_2<lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_803/while/lstm_cell_803/addAddV2-lstm_803/while/lstm_cell_803/MatMul:product:0/lstm_803/while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_803/while/lstm_cell_803/BiasAddBiasAdd$lstm_803/while/lstm_cell_803/add:z:0;lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_803/while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_803/while/lstm_cell_803/splitSplit5lstm_803/while/lstm_cell_803/split/split_dim:output:0-lstm_803/while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_803/while/lstm_cell_803/SigmoidSigmoid+lstm_803/while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_803/while/lstm_cell_803/Sigmoid_1Sigmoid+lstm_803/while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_803/while/lstm_cell_803/mulMul*lstm_803/while/lstm_cell_803/Sigmoid_1:y:0lstm_803_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_803/while/lstm_cell_803/ReluRelu+lstm_803/while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_803/while/lstm_cell_803/mul_1Mul(lstm_803/while/lstm_cell_803/Sigmoid:y:0/lstm_803/while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_803/while/lstm_cell_803/add_1AddV2$lstm_803/while/lstm_cell_803/mul:z:0&lstm_803/while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_803/while/lstm_cell_803/Sigmoid_2Sigmoid+lstm_803/while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_803/while/lstm_cell_803/Relu_1Relu&lstm_803/while/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_803/while/lstm_cell_803/mul_2Mul*lstm_803/while/lstm_cell_803/Sigmoid_2:y:01lstm_803/while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_803/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_803_while_placeholder_1lstm_803_while_placeholder&lstm_803/while/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_803/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_803/while/addAddV2lstm_803_while_placeholderlstm_803/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_803/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_803/while/add_1AddV2*lstm_803_while_lstm_803_while_loop_counterlstm_803/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_803/while/IdentityIdentitylstm_803/while/add_1:z:0^lstm_803/while/NoOp*
T0*
_output_shapes
: ј
lstm_803/while/Identity_1Identity0lstm_803_while_lstm_803_while_maximum_iterations^lstm_803/while/NoOp*
T0*
_output_shapes
: t
lstm_803/while/Identity_2Identitylstm_803/while/add:z:0^lstm_803/while/NoOp*
T0*
_output_shapes
: А
lstm_803/while/Identity_3IdentityClstm_803/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_803/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_803/while/Identity_4Identity&lstm_803/while/lstm_cell_803/mul_2:z:0^lstm_803/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_803/while/Identity_5Identity&lstm_803/while/lstm_cell_803/add_1:z:0^lstm_803/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_803/while/NoOpNoOp4^lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp3^lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp5^lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_803_while_identity lstm_803/while/Identity:output:0"?
lstm_803_while_identity_1"lstm_803/while/Identity_1:output:0"?
lstm_803_while_identity_2"lstm_803/while/Identity_2:output:0"?
lstm_803_while_identity_3"lstm_803/while/Identity_3:output:0"?
lstm_803_while_identity_4"lstm_803/while/Identity_4:output:0"?
lstm_803_while_identity_5"lstm_803/while/Identity_5:output:0"T
'lstm_803_while_lstm_803_strided_slice_1)lstm_803_while_lstm_803_strided_slice_1_0"~
<lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0"ђ
=lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0"|
;lstm_803_while_lstm_cell_803_matmul_readvariableop_resource=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0"╠
clstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensorelstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp2h
2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp2l
4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Э
┤
*__inference_lstm_803_layer_call_fn_4877807

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874873

inputs>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4874789*
condR
while_cond_4874788*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Ж
Ѓ
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875569
lstm_801_input#
lstm_801_4875542:	љ#
lstm_801_4875544:	dљ
lstm_801_4875546:	љ#
lstm_802_4875549:	d╚#
lstm_802_4875551:	2╚
lstm_802_4875553:	╚"
lstm_803_4875556:2("
lstm_803_4875558:
(
lstm_803_4875560:(#
dense_267_4875563:

dense_267_4875565:
identityѕб!dense_267/StatefulPartitionedCallб lstm_801/StatefulPartitionedCallб lstm_802/StatefulPartitionedCallб lstm_803/StatefulPartitionedCallЊ
 lstm_801/StatefulPartitionedCallStatefulPartitionedCalllstm_801_inputlstm_801_4875542lstm_801_4875544lstm_801_4875546*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4874573«
 lstm_802/StatefulPartitionedCallStatefulPartitionedCall)lstm_801/StatefulPartitionedCall:output:0lstm_802_4875549lstm_802_4875551lstm_802_4875553*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874723ф
 lstm_803/StatefulPartitionedCallStatefulPartitionedCall)lstm_802/StatefulPartitionedCall:output:0lstm_803_4875556lstm_803_4875558lstm_803_4875560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874873џ
!dense_267/StatefulPartitionedCallStatefulPartitionedCall)lstm_803/StatefulPartitionedCall:output:0dense_267_4875563dense_267_4875565*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891y
IdentityIdentity*dense_267/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_267/StatefulPartitionedCall!^lstm_801/StatefulPartitionedCall!^lstm_802/StatefulPartitionedCall!^lstm_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_267/StatefulPartitionedCall!dense_267/StatefulPartitionedCall2D
 lstm_801/StatefulPartitionedCall lstm_801/StatefulPartitionedCall2D
 lstm_802/StatefulPartitionedCall lstm_802/StatefulPartitionedCall2D
 lstm_803/StatefulPartitionedCall lstm_803/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
АC
Щ

lstm_801_while_body_4876174.
*lstm_801_while_lstm_801_while_loop_counter4
0lstm_801_while_lstm_801_while_maximum_iterations
lstm_801_while_placeholder 
lstm_801_while_placeholder_1 
lstm_801_while_placeholder_2 
lstm_801_while_placeholder_3-
)lstm_801_while_lstm_801_strided_slice_1_0i
elstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0:	љR
?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљM
>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
lstm_801_while_identity
lstm_801_while_identity_1
lstm_801_while_identity_2
lstm_801_while_identity_3
lstm_801_while_identity_4
lstm_801_while_identity_5+
'lstm_801_while_lstm_801_strided_slice_1g
clstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensorN
;lstm_801_while_lstm_cell_801_matmul_readvariableop_resource:	љP
=lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource:	dљK
<lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpб2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpб4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpЉ
@lstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_801/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0lstm_801_while_placeholderIlstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_801/while/lstm_cell_801/MatMulMatMul9lstm_801/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_801/while/lstm_cell_801/MatMul_1MatMullstm_801_while_placeholder_2<lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_801/while/lstm_cell_801/addAddV2-lstm_801/while/lstm_cell_801/MatMul:product:0/lstm_801/while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_801/while/lstm_cell_801/BiasAddBiasAdd$lstm_801/while/lstm_cell_801/add:z:0;lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_801/while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_801/while/lstm_cell_801/splitSplit5lstm_801/while/lstm_cell_801/split/split_dim:output:0-lstm_801/while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_801/while/lstm_cell_801/SigmoidSigmoid+lstm_801/while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_801/while/lstm_cell_801/Sigmoid_1Sigmoid+lstm_801/while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_801/while/lstm_cell_801/mulMul*lstm_801/while/lstm_cell_801/Sigmoid_1:y:0lstm_801_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_801/while/lstm_cell_801/ReluRelu+lstm_801/while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_801/while/lstm_cell_801/mul_1Mul(lstm_801/while/lstm_cell_801/Sigmoid:y:0/lstm_801/while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_801/while/lstm_cell_801/add_1AddV2$lstm_801/while/lstm_cell_801/mul:z:0&lstm_801/while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_801/while/lstm_cell_801/Sigmoid_2Sigmoid+lstm_801/while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_801/while/lstm_cell_801/Relu_1Relu&lstm_801/while/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_801/while/lstm_cell_801/mul_2Mul*lstm_801/while/lstm_cell_801/Sigmoid_2:y:01lstm_801/while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_801/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_801_while_placeholder_1lstm_801_while_placeholder&lstm_801/while/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_801/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_801/while/addAddV2lstm_801_while_placeholderlstm_801/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_801/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_801/while/add_1AddV2*lstm_801_while_lstm_801_while_loop_counterlstm_801/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_801/while/IdentityIdentitylstm_801/while/add_1:z:0^lstm_801/while/NoOp*
T0*
_output_shapes
: ј
lstm_801/while/Identity_1Identity0lstm_801_while_lstm_801_while_maximum_iterations^lstm_801/while/NoOp*
T0*
_output_shapes
: t
lstm_801/while/Identity_2Identitylstm_801/while/add:z:0^lstm_801/while/NoOp*
T0*
_output_shapes
: А
lstm_801/while/Identity_3IdentityClstm_801/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_801/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_801/while/Identity_4Identity&lstm_801/while/lstm_cell_801/mul_2:z:0^lstm_801/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_801/while/Identity_5Identity&lstm_801/while/lstm_cell_801/add_1:z:0^lstm_801/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_801/while/NoOpNoOp4^lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp3^lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp5^lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_801_while_identity lstm_801/while/Identity:output:0"?
lstm_801_while_identity_1"lstm_801/while/Identity_1:output:0"?
lstm_801_while_identity_2"lstm_801/while/Identity_2:output:0"?
lstm_801_while_identity_3"lstm_801/while/Identity_3:output:0"?
lstm_801_while_identity_4"lstm_801/while/Identity_4:output:0"?
lstm_801_while_identity_5"lstm_801/while/Identity_5:output:0"T
'lstm_801_while_lstm_801_strided_slice_1)lstm_801_while_lstm_801_strided_slice_1_0"~
<lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0"ђ
=lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0"|
;lstm_801_while_lstm_cell_801_matmul_readvariableop_resource=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0"╠
clstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensorelstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp2h
2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp2l
4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4877261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
е8
І
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874224

inputs'
lstm_cell_803_4874142:2('
lstm_cell_803_4874144:
(#
lstm_cell_803_4874146:(
identityѕб%lstm_cell_803/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_803/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_803_4874142lstm_cell_803_4874144lstm_cell_803_4874146*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874141n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_803_4874142lstm_cell_803_4874144lstm_cell_803_4874146*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4874155*
condR
while_cond_4874154*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_803/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_803/StatefulPartitionedCall%lstm_cell_803/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
║
╚
while_cond_4875334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4875334___redundant_placeholder05
1while_while_cond_4875334___redundant_placeholder15
1while_while_cond_4875334___redundant_placeholder25
1while_while_cond_4875334___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_801_layer_call_fn_4876564
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4873715|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_4873995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4873995___redundant_placeholder05
1while_while_cond_4873995___redundant_placeholder15
1while_while_cond_4873995___redundant_placeholder25
1while_while_cond_4873995___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
ПJ
а
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878247

inputs>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4878163*
condR
while_cond_4878162*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_4874639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877631

inputs?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877547*
condR
while_cond_4877546*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_4877877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
▀
ѕ
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878573

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
─8
н
while_body_4875005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4874488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4874488___redundant_placeholder05
1while_while_cond_4874488___redundant_placeholder15
1while_while_cond_4874488___redundant_placeholder25
1while_while_cond_4874488___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4875335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4874489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Ж
Ѓ
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875599
lstm_801_input#
lstm_801_4875572:	љ#
lstm_801_4875574:	dљ
lstm_801_4875576:	љ#
lstm_802_4875579:	d╚#
lstm_802_4875581:	2╚
lstm_802_4875583:	╚"
lstm_803_4875586:2("
lstm_803_4875588:
(
lstm_803_4875590:(#
dense_267_4875593:

dense_267_4875595:
identityѕб!dense_267/StatefulPartitionedCallб lstm_801/StatefulPartitionedCallб lstm_802/StatefulPartitionedCallб lstm_803/StatefulPartitionedCallЊ
 lstm_801/StatefulPartitionedCallStatefulPartitionedCalllstm_801_inputlstm_801_4875572lstm_801_4875574lstm_801_4875576*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4875419«
 lstm_802/StatefulPartitionedCallStatefulPartitionedCall)lstm_801/StatefulPartitionedCall:output:0lstm_802_4875579lstm_802_4875581lstm_802_4875583*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4875254ф
 lstm_803/StatefulPartitionedCallStatefulPartitionedCall)lstm_802/StatefulPartitionedCall:output:0lstm_803_4875586lstm_803_4875588lstm_803_4875590*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4875089џ
!dense_267/StatefulPartitionedCallStatefulPartitionedCall)lstm_803/StatefulPartitionedCall:output:0dense_267_4875593dense_267_4875595*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891y
IdentityIdentity*dense_267/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_267/StatefulPartitionedCall!^lstm_801/StatefulPartitionedCall!^lstm_802/StatefulPartitionedCall!^lstm_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_267/StatefulPartitionedCall!dense_267/StatefulPartitionedCall2D
 lstm_801/StatefulPartitionedCall lstm_801/StatefulPartitionedCall2D
 lstm_802/StatefulPartitionedCall lstm_802/StatefulPartitionedCall2D
 lstm_803/StatefulPartitionedCall lstm_803/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
В
ш
/__inference_lstm_cell_803_layer_call_fn_4878639

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
█
е
*sequential_267_lstm_803_while_cond_4873283L
Hsequential_267_lstm_803_while_sequential_267_lstm_803_while_loop_counterR
Nsequential_267_lstm_803_while_sequential_267_lstm_803_while_maximum_iterations-
)sequential_267_lstm_803_while_placeholder/
+sequential_267_lstm_803_while_placeholder_1/
+sequential_267_lstm_803_while_placeholder_2/
+sequential_267_lstm_803_while_placeholder_3N
Jsequential_267_lstm_803_while_less_sequential_267_lstm_803_strided_slice_1e
asequential_267_lstm_803_while_sequential_267_lstm_803_while_cond_4873283___redundant_placeholder0e
asequential_267_lstm_803_while_sequential_267_lstm_803_while_cond_4873283___redundant_placeholder1e
asequential_267_lstm_803_while_sequential_267_lstm_803_while_cond_4873283___redundant_placeholder2e
asequential_267_lstm_803_while_sequential_267_lstm_803_while_cond_4873283___redundant_placeholder3*
&sequential_267_lstm_803_while_identity
┬
"sequential_267/lstm_803/while/LessLess)sequential_267_lstm_803_while_placeholderJsequential_267_lstm_803_while_less_sequential_267_lstm_803_strided_slice_1*
T0*
_output_shapes
: {
&sequential_267/lstm_803/while/IdentityIdentity&sequential_267/lstm_803/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_267_lstm_803_while_identity/sequential_267/lstm_803/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4877403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877403___redundant_placeholder05
1while_while_cond_4877403___redundant_placeholder15
1while_while_cond_4877403___redundant_placeholder25
1while_while_cond_4877403___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4873645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4873645___redundant_placeholder05
1while_while_cond_4873645___redundant_placeholder15
1while_while_cond_4873645___redundant_placeholder25
1while_while_cond_4873645___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_801_layer_call_and_return_conditional_losses_4875419

inputs?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4875335*
condR
while_cond_4875334*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874065

inputs(
lstm_cell_802_4873983:	d╚(
lstm_cell_802_4873985:	2╚$
lstm_cell_802_4873987:	╚
identityѕб%lstm_cell_802/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_802/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_802_4873983lstm_cell_802_4873985lstm_cell_802_4873987*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873937n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_802_4873983lstm_cell_802_4873985lstm_cell_802_4873987*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4873996*
condR
while_cond_4873995*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_802/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_802/StatefulPartitionedCall%lstm_cell_802/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877158

inputs?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877074*
condR
while_cond_4877073*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Э
┤
*__inference_lstm_803_layer_call_fn_4877818

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4875089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Ј#
ы
while_body_4873805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_802_4873829_0:	d╚0
while_lstm_cell_802_4873831_0:	2╚,
while_lstm_cell_802_4873833_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_802_4873829:	d╚.
while_lstm_cell_802_4873831:	2╚*
while_lstm_cell_802_4873833:	╚ѕб+while/lstm_cell_802/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_802/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_802_4873829_0while_lstm_cell_802_4873831_0while_lstm_cell_802_4873833_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873791П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_802/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_802/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_802/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_802/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_802_4873829while_lstm_cell_802_4873829_0"<
while_lstm_cell_802_4873831while_lstm_cell_802_4873831_0"<
while_lstm_cell_802_4873833while_lstm_cell_802_4873833_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_802/StatefulPartitionedCall+while/lstm_cell_802/StatefulPartitionedCall: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
█
е
*sequential_267_lstm_802_while_cond_4873144L
Hsequential_267_lstm_802_while_sequential_267_lstm_802_while_loop_counterR
Nsequential_267_lstm_802_while_sequential_267_lstm_802_while_maximum_iterations-
)sequential_267_lstm_802_while_placeholder/
+sequential_267_lstm_802_while_placeholder_1/
+sequential_267_lstm_802_while_placeholder_2/
+sequential_267_lstm_802_while_placeholder_3N
Jsequential_267_lstm_802_while_less_sequential_267_lstm_802_strided_slice_1e
asequential_267_lstm_802_while_sequential_267_lstm_802_while_cond_4873144___redundant_placeholder0e
asequential_267_lstm_802_while_sequential_267_lstm_802_while_cond_4873144___redundant_placeholder1e
asequential_267_lstm_802_while_sequential_267_lstm_802_while_cond_4873144___redundant_placeholder2e
asequential_267_lstm_802_while_sequential_267_lstm_802_while_cond_4873144___redundant_placeholder3*
&sequential_267_lstm_802_while_identity
┬
"sequential_267/lstm_802/while/LessLess)sequential_267_lstm_802_while_placeholderJsequential_267_lstm_802_while_less_sequential_267_lstm_802_strided_slice_1*
T0*
_output_shapes
: {
&sequential_267/lstm_802/while/IdentityIdentity&sequential_267/lstm_802/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_267_lstm_802_while_identity/sequential_267/lstm_802/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Зц
ю
#__inference__traced_restore_4878976
file_prefix3
!assignvariableop_dense_267_kernel:
/
!assignvariableop_1_dense_267_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_801_lstm_cell_801_kernel:	љM
:assignvariableop_8_lstm_801_lstm_cell_801_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_801_lstm_cell_801_bias:	љD
1assignvariableop_10_lstm_802_lstm_cell_802_kernel:	d╚N
;assignvariableop_11_lstm_802_lstm_cell_802_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_802_lstm_cell_802_bias:	╚C
1assignvariableop_13_lstm_803_lstm_cell_803_kernel:2(M
;assignvariableop_14_lstm_803_lstm_cell_803_recurrent_kernel:
(=
/assignvariableop_15_lstm_803_lstm_cell_803_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_267_kernel_m:
7
)assignvariableop_19_adam_dense_267_bias_m:K
8assignvariableop_20_adam_lstm_801_lstm_cell_801_kernel_m:	љU
Bassignvariableop_21_adam_lstm_801_lstm_cell_801_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_801_lstm_cell_801_bias_m:	љK
8assignvariableop_23_adam_lstm_802_lstm_cell_802_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_802_lstm_cell_802_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_802_lstm_cell_802_bias_m:	╚J
8assignvariableop_26_adam_lstm_803_lstm_cell_803_kernel_m:2(T
Bassignvariableop_27_adam_lstm_803_lstm_cell_803_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_803_lstm_cell_803_bias_m:(=
+assignvariableop_29_adam_dense_267_kernel_v:
7
)assignvariableop_30_adam_dense_267_bias_v:K
8assignvariableop_31_adam_lstm_801_lstm_cell_801_kernel_v:	љU
Bassignvariableop_32_adam_lstm_801_lstm_cell_801_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_801_lstm_cell_801_bias_v:	љK
8assignvariableop_34_adam_lstm_802_lstm_cell_802_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_802_lstm_cell_802_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_802_lstm_cell_802_bias_v:	╚J
8assignvariableop_37_adam_lstm_803_lstm_cell_803_kernel_v:2(T
Bassignvariableop_38_adam_lstm_803_lstm_cell_803_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_803_lstm_cell_803_bias_v:(
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╚
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOpAssignVariableOp!assignvariableop_dense_267_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_267_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_801_lstm_cell_801_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_801_lstm_cell_801_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_801_lstm_cell_801_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_802_lstm_cell_802_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_802_lstm_cell_802_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_802_lstm_cell_802_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_803_lstm_cell_803_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_803_lstm_cell_803_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_803_lstm_cell_803_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_267_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_267_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_801_lstm_cell_801_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_801_lstm_cell_801_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_801_lstm_cell_801_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_802_lstm_cell_802_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_802_lstm_cell_802_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_802_lstm_cell_802_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_803_lstm_cell_803_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_803_lstm_cell_803_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_803_lstm_cell_803_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_267_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_267_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_801_lstm_cell_801_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_801_lstm_cell_801_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_801_lstm_cell_801_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_802_lstm_cell_802_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_802_lstm_cell_802_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_802_lstm_cell_802_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_803_lstm_cell_803_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_803_lstm_cell_803_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_803_lstm_cell_803_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
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
њK
б
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878104
inputs_0>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4878020*
condR
while_cond_4878019*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_802_layer_call_fn_4878524

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873791o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
№
Э
/__inference_lstm_cell_801_layer_call_fn_4878426

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873441o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
О
є
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873937

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Л8
┌
while_body_4877404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
ћC
З

lstm_803_while_body_4876452.
*lstm_803_while_lstm_803_while_loop_counter4
0lstm_803_while_lstm_803_while_maximum_iterations
lstm_803_while_placeholder 
lstm_803_while_placeholder_1 
lstm_803_while_placeholder_2 
lstm_803_while_placeholder_3-
)lstm_803_while_lstm_803_strided_slice_1_0i
elstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0:2(Q
?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(L
>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0:(
lstm_803_while_identity
lstm_803_while_identity_1
lstm_803_while_identity_2
lstm_803_while_identity_3
lstm_803_while_identity_4
lstm_803_while_identity_5+
'lstm_803_while_lstm_803_strided_slice_1g
clstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensorM
;lstm_803_while_lstm_cell_803_matmul_readvariableop_resource:2(O
=lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource:
(J
<lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpб2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpб4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpЉ
@lstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_803/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0lstm_803_while_placeholderIlstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_803/while/lstm_cell_803/MatMulMatMul9lstm_803/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_803/while/lstm_cell_803/MatMul_1MatMullstm_803_while_placeholder_2<lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_803/while/lstm_cell_803/addAddV2-lstm_803/while/lstm_cell_803/MatMul:product:0/lstm_803/while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_803/while/lstm_cell_803/BiasAddBiasAdd$lstm_803/while/lstm_cell_803/add:z:0;lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_803/while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_803/while/lstm_cell_803/splitSplit5lstm_803/while/lstm_cell_803/split/split_dim:output:0-lstm_803/while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_803/while/lstm_cell_803/SigmoidSigmoid+lstm_803/while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_803/while/lstm_cell_803/Sigmoid_1Sigmoid+lstm_803/while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_803/while/lstm_cell_803/mulMul*lstm_803/while/lstm_cell_803/Sigmoid_1:y:0lstm_803_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_803/while/lstm_cell_803/ReluRelu+lstm_803/while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_803/while/lstm_cell_803/mul_1Mul(lstm_803/while/lstm_cell_803/Sigmoid:y:0/lstm_803/while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_803/while/lstm_cell_803/add_1AddV2$lstm_803/while/lstm_cell_803/mul:z:0&lstm_803/while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_803/while/lstm_cell_803/Sigmoid_2Sigmoid+lstm_803/while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_803/while/lstm_cell_803/Relu_1Relu&lstm_803/while/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_803/while/lstm_cell_803/mul_2Mul*lstm_803/while/lstm_cell_803/Sigmoid_2:y:01lstm_803/while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_803/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_803_while_placeholder_1lstm_803_while_placeholder&lstm_803/while/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_803/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_803/while/addAddV2lstm_803_while_placeholderlstm_803/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_803/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_803/while/add_1AddV2*lstm_803_while_lstm_803_while_loop_counterlstm_803/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_803/while/IdentityIdentitylstm_803/while/add_1:z:0^lstm_803/while/NoOp*
T0*
_output_shapes
: ј
lstm_803/while/Identity_1Identity0lstm_803_while_lstm_803_while_maximum_iterations^lstm_803/while/NoOp*
T0*
_output_shapes
: t
lstm_803/while/Identity_2Identitylstm_803/while/add:z:0^lstm_803/while/NoOp*
T0*
_output_shapes
: А
lstm_803/while/Identity_3IdentityClstm_803/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_803/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_803/while/Identity_4Identity&lstm_803/while/lstm_cell_803/mul_2:z:0^lstm_803/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_803/while/Identity_5Identity&lstm_803/while/lstm_cell_803/add_1:z:0^lstm_803/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_803/while/NoOpNoOp4^lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp3^lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp5^lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_803_while_identity lstm_803/while/Identity:output:0"?
lstm_803_while_identity_1"lstm_803/while/Identity_1:output:0"?
lstm_803_while_identity_2"lstm_803/while/Identity_2:output:0"?
lstm_803_while_identity_3"lstm_803/while/Identity_3:output:0"?
lstm_803_while_identity_4"lstm_803/while/Identity_4:output:0"?
lstm_803_while_identity_5"lstm_803/while/Identity_5:output:0"T
'lstm_803_while_lstm_803_strided_slice_1)lstm_803_while_lstm_803_strided_slice_1_0"~
<lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource>lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0"ђ
=lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource?lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0"|
;lstm_803_while_lstm_cell_803_matmul_readvariableop_resource=lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0"╠
clstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensorelstm_803_while_tensorarrayv2read_tensorlistgetitem_lstm_803_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp3lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp2h
2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp2lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp2l
4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp4lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4878305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4878305___redundant_placeholder05
1while_while_cond_4878305___redundant_placeholder15
1while_while_cond_4878305___redundant_placeholder25
1while_while_cond_4878305___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
▀
ѕ
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878605

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
РJ
Б
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877015

inputs?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4876931*
condR
while_cond_4876930*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4878162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4878162___redundant_placeholder05
1while_while_cond_4878162___redundant_placeholder15
1while_while_cond_4878162___redundant_placeholder25
1while_while_cond_4878162___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4877689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877689___redundant_placeholder05
1while_while_cond_4877689___redundant_placeholder15
1while_while_cond_4877689___redundant_placeholder25
1while_while_cond_4877689___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4877260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4877260___redundant_placeholder05
1while_while_cond_4877260___redundant_placeholder15
1while_while_cond_4877260___redundant_placeholder25
1while_while_cond_4877260___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874723

inputs?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4874639*
condR
while_cond_4874638*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
чT
я
*sequential_267_lstm_801_while_body_4873006L
Hsequential_267_lstm_801_while_sequential_267_lstm_801_while_loop_counterR
Nsequential_267_lstm_801_while_sequential_267_lstm_801_while_maximum_iterations-
)sequential_267_lstm_801_while_placeholder/
+sequential_267_lstm_801_while_placeholder_1/
+sequential_267_lstm_801_while_placeholder_2/
+sequential_267_lstm_801_while_placeholder_3K
Gsequential_267_lstm_801_while_sequential_267_lstm_801_strided_slice_1_0ѕ
Ѓsequential_267_lstm_801_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_801_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_267_lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0:	љa
Nsequential_267_lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљ\
Msequential_267_lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ*
&sequential_267_lstm_801_while_identity,
(sequential_267_lstm_801_while_identity_1,
(sequential_267_lstm_801_while_identity_2,
(sequential_267_lstm_801_while_identity_3,
(sequential_267_lstm_801_while_identity_4,
(sequential_267_lstm_801_while_identity_5I
Esequential_267_lstm_801_while_sequential_267_lstm_801_strided_slice_1є
Ђsequential_267_lstm_801_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_801_tensorarrayunstack_tensorlistfromtensor]
Jsequential_267_lstm_801_while_lstm_cell_801_matmul_readvariableop_resource:	љ_
Lsequential_267_lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource:	dљZ
Ksequential_267_lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource:	љѕбBsequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpбAsequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpбCsequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpа
Osequential_267/lstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_267/lstm_801/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_267_lstm_801_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_801_tensorarrayunstack_tensorlistfromtensor_0)sequential_267_lstm_801_while_placeholderXsequential_267/lstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOpLsequential_267_lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_267/lstm_801/while/lstm_cell_801/MatMulMatMulHsequential_267/lstm_801/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOpNsequential_267_lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_267/lstm_801/while/lstm_cell_801/MatMul_1MatMul+sequential_267_lstm_801_while_placeholder_2Ksequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_267/lstm_801/while/lstm_cell_801/addAddV2<sequential_267/lstm_801/while/lstm_cell_801/MatMul:product:0>sequential_267/lstm_801/while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOpMsequential_267_lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_267/lstm_801/while/lstm_cell_801/BiasAddBiasAdd3sequential_267/lstm_801/while/lstm_cell_801/add:z:0Jsequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_267/lstm_801/while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_267/lstm_801/while/lstm_cell_801/splitSplitDsequential_267/lstm_801/while/lstm_cell_801/split/split_dim:output:0<sequential_267/lstm_801/while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_267/lstm_801/while/lstm_cell_801/SigmoidSigmoid:sequential_267/lstm_801/while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_267/lstm_801/while/lstm_cell_801/Sigmoid_1Sigmoid:sequential_267/lstm_801/while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_267/lstm_801/while/lstm_cell_801/mulMul9sequential_267/lstm_801/while/lstm_cell_801/Sigmoid_1:y:0+sequential_267_lstm_801_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_267/lstm_801/while/lstm_cell_801/ReluRelu:sequential_267/lstm_801/while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_267/lstm_801/while/lstm_cell_801/mul_1Mul7sequential_267/lstm_801/while/lstm_cell_801/Sigmoid:y:0>sequential_267/lstm_801/while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_267/lstm_801/while/lstm_cell_801/add_1AddV23sequential_267/lstm_801/while/lstm_cell_801/mul:z:05sequential_267/lstm_801/while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_267/lstm_801/while/lstm_cell_801/Sigmoid_2Sigmoid:sequential_267/lstm_801/while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_267/lstm_801/while/lstm_cell_801/Relu_1Relu5sequential_267/lstm_801/while/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_267/lstm_801/while/lstm_cell_801/mul_2Mul9sequential_267/lstm_801/while/lstm_cell_801/Sigmoid_2:y:0@sequential_267/lstm_801/while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_267/lstm_801/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_267_lstm_801_while_placeholder_1)sequential_267_lstm_801_while_placeholder5sequential_267/lstm_801/while/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_267/lstm_801/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_267/lstm_801/while/addAddV2)sequential_267_lstm_801_while_placeholder,sequential_267/lstm_801/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_267/lstm_801/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_267/lstm_801/while/add_1AddV2Hsequential_267_lstm_801_while_sequential_267_lstm_801_while_loop_counter.sequential_267/lstm_801/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_267/lstm_801/while/IdentityIdentity'sequential_267/lstm_801/while/add_1:z:0#^sequential_267/lstm_801/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_267/lstm_801/while/Identity_1IdentityNsequential_267_lstm_801_while_sequential_267_lstm_801_while_maximum_iterations#^sequential_267/lstm_801/while/NoOp*
T0*
_output_shapes
: А
(sequential_267/lstm_801/while/Identity_2Identity%sequential_267/lstm_801/while/add:z:0#^sequential_267/lstm_801/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_267/lstm_801/while/Identity_3IdentityRsequential_267/lstm_801/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_267/lstm_801/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_267/lstm_801/while/Identity_4Identity5sequential_267/lstm_801/while/lstm_cell_801/mul_2:z:0#^sequential_267/lstm_801/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_267/lstm_801/while/Identity_5Identity5sequential_267/lstm_801/while/lstm_cell_801/add_1:z:0#^sequential_267/lstm_801/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_267/lstm_801/while/NoOpNoOpC^sequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpB^sequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpD^sequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_267_lstm_801_while_identity/sequential_267/lstm_801/while/Identity:output:0"]
(sequential_267_lstm_801_while_identity_11sequential_267/lstm_801/while/Identity_1:output:0"]
(sequential_267_lstm_801_while_identity_21sequential_267/lstm_801/while/Identity_2:output:0"]
(sequential_267_lstm_801_while_identity_31sequential_267/lstm_801/while/Identity_3:output:0"]
(sequential_267_lstm_801_while_identity_41sequential_267/lstm_801/while/Identity_4:output:0"]
(sequential_267_lstm_801_while_identity_51sequential_267/lstm_801/while/Identity_5:output:0"ю
Ksequential_267_lstm_801_while_lstm_cell_801_biasadd_readvariableop_resourceMsequential_267_lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0"ъ
Lsequential_267_lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resourceNsequential_267_lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0"џ
Jsequential_267_lstm_801_while_lstm_cell_801_matmul_readvariableop_resourceLsequential_267_lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0"љ
Esequential_267_lstm_801_while_sequential_267_lstm_801_strided_slice_1Gsequential_267_lstm_801_while_sequential_267_lstm_801_strided_slice_1_0"і
Ђsequential_267_lstm_801_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_801_tensorarrayunstack_tensorlistfromtensorЃsequential_267_lstm_801_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_801_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpBsequential_267/lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp2є
Asequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpAsequential_267/lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp2і
Csequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpCsequential_267/lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4876645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
■Ђ
Џ
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876542

inputsH
5lstm_801_lstm_cell_801_matmul_readvariableop_resource:	љJ
7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource:	dљE
6lstm_801_lstm_cell_801_biasadd_readvariableop_resource:	љH
5lstm_802_lstm_cell_802_matmul_readvariableop_resource:	d╚J
7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource:	2╚E
6lstm_802_lstm_cell_802_biasadd_readvariableop_resource:	╚G
5lstm_803_lstm_cell_803_matmul_readvariableop_resource:2(I
7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource:
(D
6lstm_803_lstm_cell_803_biasadd_readvariableop_resource:(:
(dense_267_matmul_readvariableop_resource:
7
)dense_267_biasadd_readvariableop_resource:
identityѕб dense_267/BiasAdd/ReadVariableOpбdense_267/MatMul/ReadVariableOpб-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpб,lstm_801/lstm_cell_801/MatMul/ReadVariableOpб.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpбlstm_801/whileб-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpб,lstm_802/lstm_cell_802/MatMul/ReadVariableOpб.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpбlstm_802/whileб-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpб,lstm_803/lstm_cell_803/MatMul/ReadVariableOpб.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpбlstm_803/whileD
lstm_801/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_801/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_801/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_801/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_801/strided_sliceStridedSlicelstm_801/Shape:output:0%lstm_801/strided_slice/stack:output:0'lstm_801/strided_slice/stack_1:output:0'lstm_801/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_801/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_801/zeros/packedPacklstm_801/strided_slice:output:0 lstm_801/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_801/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_801/zerosFilllstm_801/zeros/packed:output:0lstm_801/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_801/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_801/zeros_1/packedPacklstm_801/strided_slice:output:0"lstm_801/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_801/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_801/zeros_1Fill lstm_801/zeros_1/packed:output:0lstm_801/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_801/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_801/transpose	Transposeinputs lstm_801/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_801/Shape_1Shapelstm_801/transpose:y:0*
T0*
_output_shapes
:h
lstm_801/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_801/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_801/strided_slice_1StridedSlicelstm_801/Shape_1:output:0'lstm_801/strided_slice_1/stack:output:0)lstm_801/strided_slice_1/stack_1:output:0)lstm_801/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_801/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_801/TensorArrayV2TensorListReserve-lstm_801/TensorArrayV2/element_shape:output:0!lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_801/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_801/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_801/transpose:y:0Glstm_801/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_801/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_801/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_801/strided_slice_2StridedSlicelstm_801/transpose:y:0'lstm_801/strided_slice_2/stack:output:0)lstm_801/strided_slice_2/stack_1:output:0)lstm_801/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_801/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp5lstm_801_lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_801/lstm_cell_801/MatMulMatMul!lstm_801/strided_slice_2:output:04lstm_801/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_801/lstm_cell_801/MatMul_1MatMullstm_801/zeros:output:06lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_801/lstm_cell_801/addAddV2'lstm_801/lstm_cell_801/MatMul:product:0)lstm_801/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp6lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_801/lstm_cell_801/BiasAddBiasAddlstm_801/lstm_cell_801/add:z:05lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_801/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_801/lstm_cell_801/splitSplit/lstm_801/lstm_cell_801/split/split_dim:output:0'lstm_801/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_801/lstm_cell_801/SigmoidSigmoid%lstm_801/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_801/lstm_cell_801/Sigmoid_1Sigmoid%lstm_801/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_801/lstm_cell_801/mulMul$lstm_801/lstm_cell_801/Sigmoid_1:y:0lstm_801/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_801/lstm_cell_801/ReluRelu%lstm_801/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dц
lstm_801/lstm_cell_801/mul_1Mul"lstm_801/lstm_cell_801/Sigmoid:y:0)lstm_801/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_801/lstm_cell_801/add_1AddV2lstm_801/lstm_cell_801/mul:z:0 lstm_801/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_801/lstm_cell_801/Sigmoid_2Sigmoid%lstm_801/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dy
lstm_801/lstm_cell_801/Relu_1Relu lstm_801/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_801/lstm_cell_801/mul_2Mul$lstm_801/lstm_cell_801/Sigmoid_2:y:0+lstm_801/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_801/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_801/TensorArrayV2_1TensorListReserve/lstm_801/TensorArrayV2_1/element_shape:output:0!lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_801/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_801/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_801/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_801/whileWhile$lstm_801/while/loop_counter:output:0*lstm_801/while/maximum_iterations:output:0lstm_801/time:output:0!lstm_801/TensorArrayV2_1:handle:0lstm_801/zeros:output:0lstm_801/zeros_1:output:0!lstm_801/strided_slice_1:output:0@lstm_801/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_801_lstm_cell_801_matmul_readvariableop_resource7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource6lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_801_while_body_4876174*'
condR
lstm_801_while_cond_4876173*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_801/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_801/TensorArrayV2Stack/TensorListStackTensorListStacklstm_801/while:output:3Blstm_801/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_801/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_801/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_801/strided_slice_3StridedSlice4lstm_801/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_801/strided_slice_3/stack:output:0)lstm_801/strided_slice_3/stack_1:output:0)lstm_801/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_801/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_801/transpose_1	Transpose4lstm_801/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_801/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_801/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_802/ShapeShapelstm_801/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_802/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_802/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_802/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_802/strided_sliceStridedSlicelstm_802/Shape:output:0%lstm_802/strided_slice/stack:output:0'lstm_802/strided_slice/stack_1:output:0'lstm_802/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_802/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_802/zeros/packedPacklstm_802/strided_slice:output:0 lstm_802/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_802/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_802/zerosFilllstm_802/zeros/packed:output:0lstm_802/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_802/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_802/zeros_1/packedPacklstm_802/strided_slice:output:0"lstm_802/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_802/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_802/zeros_1Fill lstm_802/zeros_1/packed:output:0lstm_802/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_802/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_802/transpose	Transposelstm_801/transpose_1:y:0 lstm_802/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_802/Shape_1Shapelstm_802/transpose:y:0*
T0*
_output_shapes
:h
lstm_802/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_802/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_802/strided_slice_1StridedSlicelstm_802/Shape_1:output:0'lstm_802/strided_slice_1/stack:output:0)lstm_802/strided_slice_1/stack_1:output:0)lstm_802/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_802/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_802/TensorArrayV2TensorListReserve-lstm_802/TensorArrayV2/element_shape:output:0!lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_802/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_802/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_802/transpose:y:0Glstm_802/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_802/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_802/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_802/strided_slice_2StridedSlicelstm_802/transpose:y:0'lstm_802/strided_slice_2/stack:output:0)lstm_802/strided_slice_2/stack_1:output:0)lstm_802/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_802/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp5lstm_802_lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_802/lstm_cell_802/MatMulMatMul!lstm_802/strided_slice_2:output:04lstm_802/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_802/lstm_cell_802/MatMul_1MatMullstm_802/zeros:output:06lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_802/lstm_cell_802/addAddV2'lstm_802/lstm_cell_802/MatMul:product:0)lstm_802/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp6lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_802/lstm_cell_802/BiasAddBiasAddlstm_802/lstm_cell_802/add:z:05lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_802/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_802/lstm_cell_802/splitSplit/lstm_802/lstm_cell_802/split/split_dim:output:0'lstm_802/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_802/lstm_cell_802/SigmoidSigmoid%lstm_802/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_802/lstm_cell_802/Sigmoid_1Sigmoid%lstm_802/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_802/lstm_cell_802/mulMul$lstm_802/lstm_cell_802/Sigmoid_1:y:0lstm_802/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_802/lstm_cell_802/ReluRelu%lstm_802/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_802/lstm_cell_802/mul_1Mul"lstm_802/lstm_cell_802/Sigmoid:y:0)lstm_802/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_802/lstm_cell_802/add_1AddV2lstm_802/lstm_cell_802/mul:z:0 lstm_802/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_802/lstm_cell_802/Sigmoid_2Sigmoid%lstm_802/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2y
lstm_802/lstm_cell_802/Relu_1Relu lstm_802/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_802/lstm_cell_802/mul_2Mul$lstm_802/lstm_cell_802/Sigmoid_2:y:0+lstm_802/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_802/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_802/TensorArrayV2_1TensorListReserve/lstm_802/TensorArrayV2_1/element_shape:output:0!lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_802/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_802/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_802/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_802/whileWhile$lstm_802/while/loop_counter:output:0*lstm_802/while/maximum_iterations:output:0lstm_802/time:output:0!lstm_802/TensorArrayV2_1:handle:0lstm_802/zeros:output:0lstm_802/zeros_1:output:0!lstm_802/strided_slice_1:output:0@lstm_802/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_802_lstm_cell_802_matmul_readvariableop_resource7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource6lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_802_while_body_4876313*'
condR
lstm_802_while_cond_4876312*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_802/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_802/TensorArrayV2Stack/TensorListStackTensorListStacklstm_802/while:output:3Blstm_802/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_802/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_802/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_802/strided_slice_3StridedSlice4lstm_802/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_802/strided_slice_3/stack:output:0)lstm_802/strided_slice_3/stack_1:output:0)lstm_802/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_802/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_802/transpose_1	Transpose4lstm_802/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_802/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_802/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_803/ShapeShapelstm_802/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_803/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_803/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_803/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_803/strided_sliceStridedSlicelstm_803/Shape:output:0%lstm_803/strided_slice/stack:output:0'lstm_803/strided_slice/stack_1:output:0'lstm_803/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_803/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_803/zeros/packedPacklstm_803/strided_slice:output:0 lstm_803/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_803/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_803/zerosFilllstm_803/zeros/packed:output:0lstm_803/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_803/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_803/zeros_1/packedPacklstm_803/strided_slice:output:0"lstm_803/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_803/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_803/zeros_1Fill lstm_803/zeros_1/packed:output:0lstm_803/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_803/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_803/transpose	Transposelstm_802/transpose_1:y:0 lstm_803/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_803/Shape_1Shapelstm_803/transpose:y:0*
T0*
_output_shapes
:h
lstm_803/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_803/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_803/strided_slice_1StridedSlicelstm_803/Shape_1:output:0'lstm_803/strided_slice_1/stack:output:0)lstm_803/strided_slice_1/stack_1:output:0)lstm_803/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_803/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_803/TensorArrayV2TensorListReserve-lstm_803/TensorArrayV2/element_shape:output:0!lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_803/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_803/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_803/transpose:y:0Glstm_803/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_803/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_803/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_803/strided_slice_2StridedSlicelstm_803/transpose:y:0'lstm_803/strided_slice_2/stack:output:0)lstm_803/strided_slice_2/stack_1:output:0)lstm_803/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_803/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp5lstm_803_lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_803/lstm_cell_803/MatMulMatMul!lstm_803/strided_slice_2:output:04lstm_803/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_803/lstm_cell_803/MatMul_1MatMullstm_803/zeros:output:06lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_803/lstm_cell_803/addAddV2'lstm_803/lstm_cell_803/MatMul:product:0)lstm_803/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp6lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_803/lstm_cell_803/BiasAddBiasAddlstm_803/lstm_cell_803/add:z:05lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_803/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_803/lstm_cell_803/splitSplit/lstm_803/lstm_cell_803/split/split_dim:output:0'lstm_803/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_803/lstm_cell_803/SigmoidSigmoid%lstm_803/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_803/lstm_cell_803/Sigmoid_1Sigmoid%lstm_803/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_803/lstm_cell_803/mulMul$lstm_803/lstm_cell_803/Sigmoid_1:y:0lstm_803/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_803/lstm_cell_803/ReluRelu%lstm_803/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_803/lstm_cell_803/mul_1Mul"lstm_803/lstm_cell_803/Sigmoid:y:0)lstm_803/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_803/lstm_cell_803/add_1AddV2lstm_803/lstm_cell_803/mul:z:0 lstm_803/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_803/lstm_cell_803/Sigmoid_2Sigmoid%lstm_803/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
y
lstm_803/lstm_cell_803/Relu_1Relu lstm_803/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_803/lstm_cell_803/mul_2Mul$lstm_803/lstm_cell_803/Sigmoid_2:y:0+lstm_803/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_803/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_803/TensorArrayV2_1TensorListReserve/lstm_803/TensorArrayV2_1/element_shape:output:0!lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_803/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_803/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_803/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_803/whileWhile$lstm_803/while/loop_counter:output:0*lstm_803/while/maximum_iterations:output:0lstm_803/time:output:0!lstm_803/TensorArrayV2_1:handle:0lstm_803/zeros:output:0lstm_803/zeros_1:output:0!lstm_803/strided_slice_1:output:0@lstm_803/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_803_lstm_cell_803_matmul_readvariableop_resource7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource6lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_803_while_body_4876452*'
condR
lstm_803_while_cond_4876451*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_803/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_803/TensorArrayV2Stack/TensorListStackTensorListStacklstm_803/while:output:3Blstm_803/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_803/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_803/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_803/strided_slice_3StridedSlice4lstm_803/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_803/strided_slice_3/stack:output:0)lstm_803/strided_slice_3/stack_1:output:0)lstm_803/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_803/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_803/transpose_1	Transpose4lstm_803/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_803/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_803/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_267/MatMul/ReadVariableOpReadVariableOp(dense_267_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_267/MatMulMatMul!lstm_803/strided_slice_3:output:0'dense_267/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_267/BiasAdd/ReadVariableOpReadVariableOp)dense_267_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_267/BiasAddBiasAdddense_267/MatMul:product:0(dense_267/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_267/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_267/BiasAdd/ReadVariableOp ^dense_267/MatMul/ReadVariableOp.^lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp-^lstm_801/lstm_cell_801/MatMul/ReadVariableOp/^lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp^lstm_801/while.^lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp-^lstm_802/lstm_cell_802/MatMul/ReadVariableOp/^lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp^lstm_802/while.^lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp-^lstm_803/lstm_cell_803/MatMul/ReadVariableOp/^lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp^lstm_803/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_267/BiasAdd/ReadVariableOp dense_267/BiasAdd/ReadVariableOp2B
dense_267/MatMul/ReadVariableOpdense_267/MatMul/ReadVariableOp2^
-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp2\
,lstm_801/lstm_cell_801/MatMul/ReadVariableOp,lstm_801/lstm_cell_801/MatMul/ReadVariableOp2`
.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp2 
lstm_801/whilelstm_801/while2^
-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp2\
,lstm_802/lstm_cell_802/MatMul/ReadVariableOp,lstm_802/lstm_cell_802/MatMul/ReadVariableOp2`
.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp2 
lstm_802/whilelstm_802/while2^
-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp2\
,lstm_803/lstm_cell_803/MatMul/ReadVariableOp,lstm_803/lstm_cell_803/MatMul/ReadVariableOp2`
.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp2 
lstm_803/whilelstm_803/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_803_layer_call_and_return_conditional_losses_4875089

inputs>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4875005*
condR
while_cond_4875004*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Ј#
ы
while_body_4873455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_801_4873479_0:	љ0
while_lstm_cell_801_4873481_0:	dљ,
while_lstm_cell_801_4873483_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_801_4873479:	љ.
while_lstm_cell_801_4873481:	dљ*
while_lstm_cell_801_4873483:	љѕб+while/lstm_cell_801/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_801/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_801_4873479_0while_lstm_cell_801_4873481_0while_lstm_cell_801_4873483_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873441П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_801/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_801/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_801/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_801/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_801_4873479while_lstm_cell_801_4873479_0"<
while_lstm_cell_801_4873481while_lstm_cell_801_4873481_0"<
while_lstm_cell_801_4873483while_lstm_cell_801_4873483_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_801/StatefulPartitionedCall+while/lstm_cell_801/StatefulPartitionedCall: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4875169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4875169___redundant_placeholder05
1while_while_cond_4875169___redundant_placeholder15
1while_while_cond_4875169___redundant_placeholder25
1while_while_cond_4875169___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
О
є
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873791

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Г
╣
*__inference_lstm_801_layer_call_fn_4876553
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4873524|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Л8
┌
while_body_4876931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
»8
ј
E__inference_lstm_802_layer_call_and_return_conditional_losses_4873874

inputs(
lstm_cell_802_4873792:	d╚(
lstm_cell_802_4873794:	2╚$
lstm_cell_802_4873796:	╚
identityѕб%lstm_cell_802/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_802/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_802_4873792lstm_cell_802_4873794lstm_cell_802_4873796*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873791n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_802_4873792lstm_cell_802_4873794lstm_cell_802_4873796*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4873805*
condR
while_cond_4873804*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_802/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_802/StatefulPartitionedCall%lstm_cell_802/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878507

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
РJ
Б
E__inference_lstm_802_layer_call_and_return_conditional_losses_4875254

inputs?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4875170*
condR
while_cond_4875169*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
АC
Щ

lstm_802_while_body_4875886.
*lstm_802_while_lstm_802_while_loop_counter4
0lstm_802_while_lstm_802_while_maximum_iterations
lstm_802_while_placeholder 
lstm_802_while_placeholder_1 
lstm_802_while_placeholder_2 
lstm_802_while_placeholder_3-
)lstm_802_while_lstm_802_strided_slice_1_0i
elstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚R
?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚M
>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
lstm_802_while_identity
lstm_802_while_identity_1
lstm_802_while_identity_2
lstm_802_while_identity_3
lstm_802_while_identity_4
lstm_802_while_identity_5+
'lstm_802_while_lstm_802_strided_slice_1g
clstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensorN
;lstm_802_while_lstm_cell_802_matmul_readvariableop_resource:	d╚P
=lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚K
<lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpб2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpб4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpЉ
@lstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_802/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0lstm_802_while_placeholderIlstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_802/while/lstm_cell_802/MatMulMatMul9lstm_802/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_802/while/lstm_cell_802/MatMul_1MatMullstm_802_while_placeholder_2<lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_802/while/lstm_cell_802/addAddV2-lstm_802/while/lstm_cell_802/MatMul:product:0/lstm_802/while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_802/while/lstm_cell_802/BiasAddBiasAdd$lstm_802/while/lstm_cell_802/add:z:0;lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_802/while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_802/while/lstm_cell_802/splitSplit5lstm_802/while/lstm_cell_802/split/split_dim:output:0-lstm_802/while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_802/while/lstm_cell_802/SigmoidSigmoid+lstm_802/while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_802/while/lstm_cell_802/Sigmoid_1Sigmoid+lstm_802/while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_802/while/lstm_cell_802/mulMul*lstm_802/while/lstm_cell_802/Sigmoid_1:y:0lstm_802_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_802/while/lstm_cell_802/ReluRelu+lstm_802/while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_802/while/lstm_cell_802/mul_1Mul(lstm_802/while/lstm_cell_802/Sigmoid:y:0/lstm_802/while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_802/while/lstm_cell_802/add_1AddV2$lstm_802/while/lstm_cell_802/mul:z:0&lstm_802/while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_802/while/lstm_cell_802/Sigmoid_2Sigmoid+lstm_802/while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_802/while/lstm_cell_802/Relu_1Relu&lstm_802/while/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_802/while/lstm_cell_802/mul_2Mul*lstm_802/while/lstm_cell_802/Sigmoid_2:y:01lstm_802/while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_802/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_802_while_placeholder_1lstm_802_while_placeholder&lstm_802/while/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_802/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_802/while/addAddV2lstm_802_while_placeholderlstm_802/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_802/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_802/while/add_1AddV2*lstm_802_while_lstm_802_while_loop_counterlstm_802/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_802/while/IdentityIdentitylstm_802/while/add_1:z:0^lstm_802/while/NoOp*
T0*
_output_shapes
: ј
lstm_802/while/Identity_1Identity0lstm_802_while_lstm_802_while_maximum_iterations^lstm_802/while/NoOp*
T0*
_output_shapes
: t
lstm_802/while/Identity_2Identitylstm_802/while/add:z:0^lstm_802/while/NoOp*
T0*
_output_shapes
: А
lstm_802/while/Identity_3IdentityClstm_802/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_802/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_802/while/Identity_4Identity&lstm_802/while/lstm_cell_802/mul_2:z:0^lstm_802/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_802/while/Identity_5Identity&lstm_802/while/lstm_cell_802/add_1:z:0^lstm_802/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_802/while/NoOpNoOp4^lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp3^lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp5^lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_802_while_identity lstm_802/while/Identity:output:0"?
lstm_802_while_identity_1"lstm_802/while/Identity_1:output:0"?
lstm_802_while_identity_2"lstm_802/while/Identity_2:output:0"?
lstm_802_while_identity_3"lstm_802/while/Identity_3:output:0"?
lstm_802_while_identity_4"lstm_802/while/Identity_4:output:0"?
lstm_802_while_identity_5"lstm_802/while/Identity_5:output:0"T
'lstm_802_while_lstm_802_strided_slice_1)lstm_802_while_lstm_802_strided_slice_1_0"~
<lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource>lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0"ђ
=lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource?lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0"|
;lstm_802_while_lstm_cell_802_matmul_readvariableop_resource=lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0"╠
clstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensorelstm_802_while_tensorarrayv2read_tensorlistgetitem_lstm_802_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp3lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp2h
2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp2lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp2l
4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp4lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ј#
ы
while_body_4873646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_801_4873670_0:	љ0
while_lstm_cell_801_4873672_0:	dљ,
while_lstm_cell_801_4873674_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_801_4873670:	љ.
while_lstm_cell_801_4873672:	dљ*
while_lstm_cell_801_4873674:	љѕб+while/lstm_cell_801/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_801/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_801_4873670_0while_lstm_cell_801_4873672_0while_lstm_cell_801_4873674_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873587П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_801/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_801/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_801/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_801/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_801_4873670while_lstm_cell_801_4873670_0"<
while_lstm_cell_801_4873672while_lstm_cell_801_4873672_0"<
while_lstm_cell_801_4873674while_lstm_cell_801_4873674_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_801/StatefulPartitionedCall+while/lstm_cell_801/StatefulPartitionedCall: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4874154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4874154___redundant_placeholder05
1while_while_cond_4874154___redundant_placeholder15
1while_while_cond_4874154___redundant_placeholder25
1while_while_cond_4874154___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
■Ђ
Џ
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876115

inputsH
5lstm_801_lstm_cell_801_matmul_readvariableop_resource:	љJ
7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource:	dљE
6lstm_801_lstm_cell_801_biasadd_readvariableop_resource:	љH
5lstm_802_lstm_cell_802_matmul_readvariableop_resource:	d╚J
7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource:	2╚E
6lstm_802_lstm_cell_802_biasadd_readvariableop_resource:	╚G
5lstm_803_lstm_cell_803_matmul_readvariableop_resource:2(I
7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource:
(D
6lstm_803_lstm_cell_803_biasadd_readvariableop_resource:(:
(dense_267_matmul_readvariableop_resource:
7
)dense_267_biasadd_readvariableop_resource:
identityѕб dense_267/BiasAdd/ReadVariableOpбdense_267/MatMul/ReadVariableOpб-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpб,lstm_801/lstm_cell_801/MatMul/ReadVariableOpб.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpбlstm_801/whileб-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpб,lstm_802/lstm_cell_802/MatMul/ReadVariableOpб.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpбlstm_802/whileб-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpб,lstm_803/lstm_cell_803/MatMul/ReadVariableOpб.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpбlstm_803/whileD
lstm_801/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_801/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_801/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_801/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_801/strided_sliceStridedSlicelstm_801/Shape:output:0%lstm_801/strided_slice/stack:output:0'lstm_801/strided_slice/stack_1:output:0'lstm_801/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_801/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_801/zeros/packedPacklstm_801/strided_slice:output:0 lstm_801/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_801/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_801/zerosFilllstm_801/zeros/packed:output:0lstm_801/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_801/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_801/zeros_1/packedPacklstm_801/strided_slice:output:0"lstm_801/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_801/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_801/zeros_1Fill lstm_801/zeros_1/packed:output:0lstm_801/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_801/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_801/transpose	Transposeinputs lstm_801/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_801/Shape_1Shapelstm_801/transpose:y:0*
T0*
_output_shapes
:h
lstm_801/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_801/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_801/strided_slice_1StridedSlicelstm_801/Shape_1:output:0'lstm_801/strided_slice_1/stack:output:0)lstm_801/strided_slice_1/stack_1:output:0)lstm_801/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_801/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_801/TensorArrayV2TensorListReserve-lstm_801/TensorArrayV2/element_shape:output:0!lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_801/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_801/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_801/transpose:y:0Glstm_801/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_801/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_801/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_801/strided_slice_2StridedSlicelstm_801/transpose:y:0'lstm_801/strided_slice_2/stack:output:0)lstm_801/strided_slice_2/stack_1:output:0)lstm_801/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_801/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp5lstm_801_lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_801/lstm_cell_801/MatMulMatMul!lstm_801/strided_slice_2:output:04lstm_801/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_801/lstm_cell_801/MatMul_1MatMullstm_801/zeros:output:06lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_801/lstm_cell_801/addAddV2'lstm_801/lstm_cell_801/MatMul:product:0)lstm_801/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp6lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_801/lstm_cell_801/BiasAddBiasAddlstm_801/lstm_cell_801/add:z:05lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_801/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_801/lstm_cell_801/splitSplit/lstm_801/lstm_cell_801/split/split_dim:output:0'lstm_801/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_801/lstm_cell_801/SigmoidSigmoid%lstm_801/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_801/lstm_cell_801/Sigmoid_1Sigmoid%lstm_801/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_801/lstm_cell_801/mulMul$lstm_801/lstm_cell_801/Sigmoid_1:y:0lstm_801/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_801/lstm_cell_801/ReluRelu%lstm_801/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dц
lstm_801/lstm_cell_801/mul_1Mul"lstm_801/lstm_cell_801/Sigmoid:y:0)lstm_801/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_801/lstm_cell_801/add_1AddV2lstm_801/lstm_cell_801/mul:z:0 lstm_801/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_801/lstm_cell_801/Sigmoid_2Sigmoid%lstm_801/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dy
lstm_801/lstm_cell_801/Relu_1Relu lstm_801/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_801/lstm_cell_801/mul_2Mul$lstm_801/lstm_cell_801/Sigmoid_2:y:0+lstm_801/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_801/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_801/TensorArrayV2_1TensorListReserve/lstm_801/TensorArrayV2_1/element_shape:output:0!lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_801/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_801/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_801/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_801/whileWhile$lstm_801/while/loop_counter:output:0*lstm_801/while/maximum_iterations:output:0lstm_801/time:output:0!lstm_801/TensorArrayV2_1:handle:0lstm_801/zeros:output:0lstm_801/zeros_1:output:0!lstm_801/strided_slice_1:output:0@lstm_801/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_801_lstm_cell_801_matmul_readvariableop_resource7lstm_801_lstm_cell_801_matmul_1_readvariableop_resource6lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_801_while_body_4875747*'
condR
lstm_801_while_cond_4875746*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_801/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_801/TensorArrayV2Stack/TensorListStackTensorListStacklstm_801/while:output:3Blstm_801/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_801/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_801/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_801/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_801/strided_slice_3StridedSlice4lstm_801/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_801/strided_slice_3/stack:output:0)lstm_801/strided_slice_3/stack_1:output:0)lstm_801/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_801/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_801/transpose_1	Transpose4lstm_801/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_801/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_801/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_802/ShapeShapelstm_801/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_802/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_802/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_802/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_802/strided_sliceStridedSlicelstm_802/Shape:output:0%lstm_802/strided_slice/stack:output:0'lstm_802/strided_slice/stack_1:output:0'lstm_802/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_802/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_802/zeros/packedPacklstm_802/strided_slice:output:0 lstm_802/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_802/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_802/zerosFilllstm_802/zeros/packed:output:0lstm_802/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_802/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_802/zeros_1/packedPacklstm_802/strided_slice:output:0"lstm_802/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_802/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_802/zeros_1Fill lstm_802/zeros_1/packed:output:0lstm_802/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_802/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_802/transpose	Transposelstm_801/transpose_1:y:0 lstm_802/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_802/Shape_1Shapelstm_802/transpose:y:0*
T0*
_output_shapes
:h
lstm_802/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_802/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_802/strided_slice_1StridedSlicelstm_802/Shape_1:output:0'lstm_802/strided_slice_1/stack:output:0)lstm_802/strided_slice_1/stack_1:output:0)lstm_802/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_802/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_802/TensorArrayV2TensorListReserve-lstm_802/TensorArrayV2/element_shape:output:0!lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_802/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_802/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_802/transpose:y:0Glstm_802/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_802/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_802/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_802/strided_slice_2StridedSlicelstm_802/transpose:y:0'lstm_802/strided_slice_2/stack:output:0)lstm_802/strided_slice_2/stack_1:output:0)lstm_802/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_802/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp5lstm_802_lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_802/lstm_cell_802/MatMulMatMul!lstm_802/strided_slice_2:output:04lstm_802/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_802/lstm_cell_802/MatMul_1MatMullstm_802/zeros:output:06lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_802/lstm_cell_802/addAddV2'lstm_802/lstm_cell_802/MatMul:product:0)lstm_802/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp6lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_802/lstm_cell_802/BiasAddBiasAddlstm_802/lstm_cell_802/add:z:05lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_802/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_802/lstm_cell_802/splitSplit/lstm_802/lstm_cell_802/split/split_dim:output:0'lstm_802/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_802/lstm_cell_802/SigmoidSigmoid%lstm_802/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_802/lstm_cell_802/Sigmoid_1Sigmoid%lstm_802/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_802/lstm_cell_802/mulMul$lstm_802/lstm_cell_802/Sigmoid_1:y:0lstm_802/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_802/lstm_cell_802/ReluRelu%lstm_802/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_802/lstm_cell_802/mul_1Mul"lstm_802/lstm_cell_802/Sigmoid:y:0)lstm_802/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_802/lstm_cell_802/add_1AddV2lstm_802/lstm_cell_802/mul:z:0 lstm_802/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_802/lstm_cell_802/Sigmoid_2Sigmoid%lstm_802/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2y
lstm_802/lstm_cell_802/Relu_1Relu lstm_802/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_802/lstm_cell_802/mul_2Mul$lstm_802/lstm_cell_802/Sigmoid_2:y:0+lstm_802/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_802/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_802/TensorArrayV2_1TensorListReserve/lstm_802/TensorArrayV2_1/element_shape:output:0!lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_802/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_802/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_802/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_802/whileWhile$lstm_802/while/loop_counter:output:0*lstm_802/while/maximum_iterations:output:0lstm_802/time:output:0!lstm_802/TensorArrayV2_1:handle:0lstm_802/zeros:output:0lstm_802/zeros_1:output:0!lstm_802/strided_slice_1:output:0@lstm_802/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_802_lstm_cell_802_matmul_readvariableop_resource7lstm_802_lstm_cell_802_matmul_1_readvariableop_resource6lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_802_while_body_4875886*'
condR
lstm_802_while_cond_4875885*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_802/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_802/TensorArrayV2Stack/TensorListStackTensorListStacklstm_802/while:output:3Blstm_802/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_802/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_802/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_802/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_802/strided_slice_3StridedSlice4lstm_802/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_802/strided_slice_3/stack:output:0)lstm_802/strided_slice_3/stack_1:output:0)lstm_802/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_802/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_802/transpose_1	Transpose4lstm_802/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_802/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_802/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_803/ShapeShapelstm_802/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_803/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_803/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_803/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_803/strided_sliceStridedSlicelstm_803/Shape:output:0%lstm_803/strided_slice/stack:output:0'lstm_803/strided_slice/stack_1:output:0'lstm_803/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_803/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_803/zeros/packedPacklstm_803/strided_slice:output:0 lstm_803/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_803/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_803/zerosFilllstm_803/zeros/packed:output:0lstm_803/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_803/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_803/zeros_1/packedPacklstm_803/strided_slice:output:0"lstm_803/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_803/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_803/zeros_1Fill lstm_803/zeros_1/packed:output:0lstm_803/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_803/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_803/transpose	Transposelstm_802/transpose_1:y:0 lstm_803/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_803/Shape_1Shapelstm_803/transpose:y:0*
T0*
_output_shapes
:h
lstm_803/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_803/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_803/strided_slice_1StridedSlicelstm_803/Shape_1:output:0'lstm_803/strided_slice_1/stack:output:0)lstm_803/strided_slice_1/stack_1:output:0)lstm_803/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_803/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_803/TensorArrayV2TensorListReserve-lstm_803/TensorArrayV2/element_shape:output:0!lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_803/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_803/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_803/transpose:y:0Glstm_803/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_803/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_803/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_803/strided_slice_2StridedSlicelstm_803/transpose:y:0'lstm_803/strided_slice_2/stack:output:0)lstm_803/strided_slice_2/stack_1:output:0)lstm_803/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_803/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp5lstm_803_lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_803/lstm_cell_803/MatMulMatMul!lstm_803/strided_slice_2:output:04lstm_803/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_803/lstm_cell_803/MatMul_1MatMullstm_803/zeros:output:06lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_803/lstm_cell_803/addAddV2'lstm_803/lstm_cell_803/MatMul:product:0)lstm_803/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp6lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_803/lstm_cell_803/BiasAddBiasAddlstm_803/lstm_cell_803/add:z:05lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_803/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_803/lstm_cell_803/splitSplit/lstm_803/lstm_cell_803/split/split_dim:output:0'lstm_803/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_803/lstm_cell_803/SigmoidSigmoid%lstm_803/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_803/lstm_cell_803/Sigmoid_1Sigmoid%lstm_803/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_803/lstm_cell_803/mulMul$lstm_803/lstm_cell_803/Sigmoid_1:y:0lstm_803/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_803/lstm_cell_803/ReluRelu%lstm_803/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_803/lstm_cell_803/mul_1Mul"lstm_803/lstm_cell_803/Sigmoid:y:0)lstm_803/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_803/lstm_cell_803/add_1AddV2lstm_803/lstm_cell_803/mul:z:0 lstm_803/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_803/lstm_cell_803/Sigmoid_2Sigmoid%lstm_803/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
y
lstm_803/lstm_cell_803/Relu_1Relu lstm_803/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_803/lstm_cell_803/mul_2Mul$lstm_803/lstm_cell_803/Sigmoid_2:y:0+lstm_803/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_803/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_803/TensorArrayV2_1TensorListReserve/lstm_803/TensorArrayV2_1/element_shape:output:0!lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_803/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_803/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_803/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_803/whileWhile$lstm_803/while/loop_counter:output:0*lstm_803/while/maximum_iterations:output:0lstm_803/time:output:0!lstm_803/TensorArrayV2_1:handle:0lstm_803/zeros:output:0lstm_803/zeros_1:output:0!lstm_803/strided_slice_1:output:0@lstm_803/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_803_lstm_cell_803_matmul_readvariableop_resource7lstm_803_lstm_cell_803_matmul_1_readvariableop_resource6lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_803_while_body_4876025*'
condR
lstm_803_while_cond_4876024*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_803/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_803/TensorArrayV2Stack/TensorListStackTensorListStacklstm_803/while:output:3Blstm_803/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_803/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_803/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_803/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_803/strided_slice_3StridedSlice4lstm_803/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_803/strided_slice_3/stack:output:0)lstm_803/strided_slice_3/stack_1:output:0)lstm_803/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_803/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_803/transpose_1	Transpose4lstm_803/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_803/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_803/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_267/MatMul/ReadVariableOpReadVariableOp(dense_267_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_267/MatMulMatMul!lstm_803/strided_slice_3:output:0'dense_267/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_267/BiasAdd/ReadVariableOpReadVariableOp)dense_267_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_267/BiasAddBiasAdddense_267/MatMul:product:0(dense_267/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_267/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_267/BiasAdd/ReadVariableOp ^dense_267/MatMul/ReadVariableOp.^lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp-^lstm_801/lstm_cell_801/MatMul/ReadVariableOp/^lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp^lstm_801/while.^lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp-^lstm_802/lstm_cell_802/MatMul/ReadVariableOp/^lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp^lstm_802/while.^lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp-^lstm_803/lstm_cell_803/MatMul/ReadVariableOp/^lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp^lstm_803/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_267/BiasAdd/ReadVariableOp dense_267/BiasAdd/ReadVariableOp2B
dense_267/MatMul/ReadVariableOpdense_267/MatMul/ReadVariableOp2^
-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp-lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp2\
,lstm_801/lstm_cell_801/MatMul/ReadVariableOp,lstm_801/lstm_cell_801/MatMul/ReadVariableOp2`
.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp.lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp2 
lstm_801/whilelstm_801/while2^
-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp-lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp2\
,lstm_802/lstm_cell_802/MatMul/ReadVariableOp,lstm_802/lstm_cell_802/MatMul/ReadVariableOp2`
.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp.lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp2 
lstm_802/whilelstm_802/while2^
-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp-lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp2\
,lstm_803/lstm_cell_803/MatMul/ReadVariableOp,lstm_803/lstm_cell_803/MatMul/ReadVariableOp2`
.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp.lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp2 
lstm_803/whilelstm_803/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4873454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4873454___redundant_placeholder05
1while_while_cond_4873454___redundant_placeholder15
1while_while_cond_4873454___redundant_placeholder25
1while_while_cond_4873454___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
»8
ј
E__inference_lstm_801_layer_call_and_return_conditional_losses_4873715

inputs(
lstm_cell_801_4873633:	љ(
lstm_cell_801_4873635:	dљ$
lstm_cell_801_4873637:	љ
identityѕб%lstm_cell_801/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_801/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_801_4873633lstm_cell_801_4873635lstm_cell_801_4873637*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873587n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_801_4873633lstm_cell_801_4873635lstm_cell_801_4873637*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4873646*
condR
while_cond_4873645*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_801/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_801/StatefulPartitionedCall%lstm_cell_801/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_4876930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4876930___redundant_placeholder05
1while_while_cond_4876930___redundant_placeholder15
1while_while_cond_4876930___redundant_placeholder25
1while_while_cond_4876930___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4878019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4878019___redundant_placeholder05
1while_while_cond_4878019___redundant_placeholder15
1while_while_cond_4878019___redundant_placeholder25
1while_while_cond_4878019___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4873804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4873804___redundant_placeholder05
1while_while_cond_4873804___redundant_placeholder15
1while_while_cond_4873804___redundant_placeholder25
1while_while_cond_4873804___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
В
ш
/__inference_lstm_cell_803_layer_call_fn_4878622

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
аK
Ц
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876872
inputs_0?
,lstm_cell_801_matmul_readvariableop_resource:	љA
.lstm_cell_801_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_801_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_801/BiasAdd/ReadVariableOpб#lstm_cell_801/MatMul/ReadVariableOpб%lstm_cell_801/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_801/MatMul/ReadVariableOpReadVariableOp,lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_801/MatMulMatMulstrided_slice_2:output:0+lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_801/MatMul_1MatMulzeros:output:0-lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_801/addAddV2lstm_cell_801/MatMul:product:0 lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_801/BiasAddBiasAddlstm_cell_801/add:z:0,lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_801/splitSplit&lstm_cell_801/split/split_dim:output:0lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_801/SigmoidSigmoidlstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_1Sigmoidlstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_801/mulMullstm_cell_801/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_801/ReluRelulstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_801/mul_1Mullstm_cell_801/Sigmoid:y:0 lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_801/add_1AddV2lstm_cell_801/mul:z:0lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_801/Sigmoid_2Sigmoidlstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_801/Relu_1Relulstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_801/mul_2Mullstm_cell_801/Sigmoid_2:y:0"lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_801_matmul_readvariableop_resource.lstm_cell_801_matmul_1_readvariableop_resource-lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4876788*
condR
while_cond_4876787*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_801/BiasAdd/ReadVariableOp$^lstm_cell_801/MatMul/ReadVariableOp&^lstm_cell_801/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_801/BiasAdd/ReadVariableOp$lstm_cell_801/BiasAdd/ReadVariableOp2J
#lstm_cell_801/MatMul/ReadVariableOp#lstm_cell_801/MatMul/ReadVariableOp2N
%lstm_cell_801/MatMul_1/ReadVariableOp%lstm_cell_801/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
И╗
ы
"__inference__wrapped_model_4873374
lstm_801_inputW
Dsequential_267_lstm_801_lstm_cell_801_matmul_readvariableop_resource:	љY
Fsequential_267_lstm_801_lstm_cell_801_matmul_1_readvariableop_resource:	dљT
Esequential_267_lstm_801_lstm_cell_801_biasadd_readvariableop_resource:	љW
Dsequential_267_lstm_802_lstm_cell_802_matmul_readvariableop_resource:	d╚Y
Fsequential_267_lstm_802_lstm_cell_802_matmul_1_readvariableop_resource:	2╚T
Esequential_267_lstm_802_lstm_cell_802_biasadd_readvariableop_resource:	╚V
Dsequential_267_lstm_803_lstm_cell_803_matmul_readvariableop_resource:2(X
Fsequential_267_lstm_803_lstm_cell_803_matmul_1_readvariableop_resource:
(S
Esequential_267_lstm_803_lstm_cell_803_biasadd_readvariableop_resource:(I
7sequential_267_dense_267_matmul_readvariableop_resource:
F
8sequential_267_dense_267_biasadd_readvariableop_resource:
identityѕб/sequential_267/dense_267/BiasAdd/ReadVariableOpб.sequential_267/dense_267/MatMul/ReadVariableOpб<sequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpб;sequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOpб=sequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpбsequential_267/lstm_801/whileб<sequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpб;sequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOpб=sequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpбsequential_267/lstm_802/whileб<sequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpб;sequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOpб=sequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpбsequential_267/lstm_803/while[
sequential_267/lstm_801/ShapeShapelstm_801_input*
T0*
_output_shapes
:u
+sequential_267/lstm_801/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_267/lstm_801/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_267/lstm_801/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_267/lstm_801/strided_sliceStridedSlice&sequential_267/lstm_801/Shape:output:04sequential_267/lstm_801/strided_slice/stack:output:06sequential_267/lstm_801/strided_slice/stack_1:output:06sequential_267/lstm_801/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_267/lstm_801/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_267/lstm_801/zeros/packedPack.sequential_267/lstm_801/strided_slice:output:0/sequential_267/lstm_801/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_267/lstm_801/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_267/lstm_801/zerosFill-sequential_267/lstm_801/zeros/packed:output:0,sequential_267/lstm_801/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_267/lstm_801/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_267/lstm_801/zeros_1/packedPack.sequential_267/lstm_801/strided_slice:output:01sequential_267/lstm_801/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_267/lstm_801/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_267/lstm_801/zeros_1Fill/sequential_267/lstm_801/zeros_1/packed:output:0.sequential_267/lstm_801/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_267/lstm_801/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_267/lstm_801/transpose	Transposelstm_801_input/sequential_267/lstm_801/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_267/lstm_801/Shape_1Shape%sequential_267/lstm_801/transpose:y:0*
T0*
_output_shapes
:w
-sequential_267/lstm_801/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_801/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_801/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_267/lstm_801/strided_slice_1StridedSlice(sequential_267/lstm_801/Shape_1:output:06sequential_267/lstm_801/strided_slice_1/stack:output:08sequential_267/lstm_801/strided_slice_1/stack_1:output:08sequential_267/lstm_801/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_267/lstm_801/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_267/lstm_801/TensorArrayV2TensorListReserve<sequential_267/lstm_801/TensorArrayV2/element_shape:output:00sequential_267/lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_267/lstm_801/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_267/lstm_801/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_267/lstm_801/transpose:y:0Vsequential_267/lstm_801/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_267/lstm_801/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_801/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_801/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_267/lstm_801/strided_slice_2StridedSlice%sequential_267/lstm_801/transpose:y:06sequential_267/lstm_801/strided_slice_2/stack:output:08sequential_267/lstm_801/strided_slice_2/stack_1:output:08sequential_267/lstm_801/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOpReadVariableOpDsequential_267_lstm_801_lstm_cell_801_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_267/lstm_801/lstm_cell_801/MatMulMatMul0sequential_267/lstm_801/strided_slice_2:output:0Csequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOpFsequential_267_lstm_801_lstm_cell_801_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_267/lstm_801/lstm_cell_801/MatMul_1MatMul&sequential_267/lstm_801/zeros:output:0Esequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_267/lstm_801/lstm_cell_801/addAddV26sequential_267/lstm_801/lstm_cell_801/MatMul:product:08sequential_267/lstm_801/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOpEsequential_267_lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_267/lstm_801/lstm_cell_801/BiasAddBiasAdd-sequential_267/lstm_801/lstm_cell_801/add:z:0Dsequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_267/lstm_801/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_267/lstm_801/lstm_cell_801/splitSplit>sequential_267/lstm_801/lstm_cell_801/split/split_dim:output:06sequential_267/lstm_801/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_267/lstm_801/lstm_cell_801/SigmoidSigmoid4sequential_267/lstm_801/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_267/lstm_801/lstm_cell_801/Sigmoid_1Sigmoid4sequential_267/lstm_801/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_267/lstm_801/lstm_cell_801/mulMul3sequential_267/lstm_801/lstm_cell_801/Sigmoid_1:y:0(sequential_267/lstm_801/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_267/lstm_801/lstm_cell_801/ReluRelu4sequential_267/lstm_801/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_267/lstm_801/lstm_cell_801/mul_1Mul1sequential_267/lstm_801/lstm_cell_801/Sigmoid:y:08sequential_267/lstm_801/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_267/lstm_801/lstm_cell_801/add_1AddV2-sequential_267/lstm_801/lstm_cell_801/mul:z:0/sequential_267/lstm_801/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_267/lstm_801/lstm_cell_801/Sigmoid_2Sigmoid4sequential_267/lstm_801/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_267/lstm_801/lstm_cell_801/Relu_1Relu/sequential_267/lstm_801/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_267/lstm_801/lstm_cell_801/mul_2Mul3sequential_267/lstm_801/lstm_cell_801/Sigmoid_2:y:0:sequential_267/lstm_801/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_267/lstm_801/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_267/lstm_801/TensorArrayV2_1TensorListReserve>sequential_267/lstm_801/TensorArrayV2_1/element_shape:output:00sequential_267/lstm_801/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_267/lstm_801/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_267/lstm_801/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_267/lstm_801/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_267/lstm_801/whileWhile3sequential_267/lstm_801/while/loop_counter:output:09sequential_267/lstm_801/while/maximum_iterations:output:0%sequential_267/lstm_801/time:output:00sequential_267/lstm_801/TensorArrayV2_1:handle:0&sequential_267/lstm_801/zeros:output:0(sequential_267/lstm_801/zeros_1:output:00sequential_267/lstm_801/strided_slice_1:output:0Osequential_267/lstm_801/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_267_lstm_801_lstm_cell_801_matmul_readvariableop_resourceFsequential_267_lstm_801_lstm_cell_801_matmul_1_readvariableop_resourceEsequential_267_lstm_801_lstm_cell_801_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_267_lstm_801_while_body_4873006*6
cond.R,
*sequential_267_lstm_801_while_cond_4873005*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_267/lstm_801/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_267/lstm_801/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_267/lstm_801/while:output:3Qsequential_267/lstm_801/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_267/lstm_801/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_267/lstm_801/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_801/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_267/lstm_801/strided_slice_3StridedSliceCsequential_267/lstm_801/TensorArrayV2Stack/TensorListStack:tensor:06sequential_267/lstm_801/strided_slice_3/stack:output:08sequential_267/lstm_801/strided_slice_3/stack_1:output:08sequential_267/lstm_801/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_267/lstm_801/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_267/lstm_801/transpose_1	TransposeCsequential_267/lstm_801/TensorArrayV2Stack/TensorListStack:tensor:01sequential_267/lstm_801/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_267/lstm_801/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_267/lstm_802/ShapeShape'sequential_267/lstm_801/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_267/lstm_802/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_267/lstm_802/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_267/lstm_802/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_267/lstm_802/strided_sliceStridedSlice&sequential_267/lstm_802/Shape:output:04sequential_267/lstm_802/strided_slice/stack:output:06sequential_267/lstm_802/strided_slice/stack_1:output:06sequential_267/lstm_802/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_267/lstm_802/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_267/lstm_802/zeros/packedPack.sequential_267/lstm_802/strided_slice:output:0/sequential_267/lstm_802/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_267/lstm_802/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_267/lstm_802/zerosFill-sequential_267/lstm_802/zeros/packed:output:0,sequential_267/lstm_802/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_267/lstm_802/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_267/lstm_802/zeros_1/packedPack.sequential_267/lstm_802/strided_slice:output:01sequential_267/lstm_802/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_267/lstm_802/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_267/lstm_802/zeros_1Fill/sequential_267/lstm_802/zeros_1/packed:output:0.sequential_267/lstm_802/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_267/lstm_802/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_267/lstm_802/transpose	Transpose'sequential_267/lstm_801/transpose_1:y:0/sequential_267/lstm_802/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_267/lstm_802/Shape_1Shape%sequential_267/lstm_802/transpose:y:0*
T0*
_output_shapes
:w
-sequential_267/lstm_802/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_802/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_802/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_267/lstm_802/strided_slice_1StridedSlice(sequential_267/lstm_802/Shape_1:output:06sequential_267/lstm_802/strided_slice_1/stack:output:08sequential_267/lstm_802/strided_slice_1/stack_1:output:08sequential_267/lstm_802/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_267/lstm_802/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_267/lstm_802/TensorArrayV2TensorListReserve<sequential_267/lstm_802/TensorArrayV2/element_shape:output:00sequential_267/lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_267/lstm_802/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_267/lstm_802/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_267/lstm_802/transpose:y:0Vsequential_267/lstm_802/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_267/lstm_802/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_802/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_802/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_267/lstm_802/strided_slice_2StridedSlice%sequential_267/lstm_802/transpose:y:06sequential_267/lstm_802/strided_slice_2/stack:output:08sequential_267/lstm_802/strided_slice_2/stack_1:output:08sequential_267/lstm_802/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOpReadVariableOpDsequential_267_lstm_802_lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_267/lstm_802/lstm_cell_802/MatMulMatMul0sequential_267/lstm_802/strided_slice_2:output:0Csequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOpFsequential_267_lstm_802_lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_267/lstm_802/lstm_cell_802/MatMul_1MatMul&sequential_267/lstm_802/zeros:output:0Esequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_267/lstm_802/lstm_cell_802/addAddV26sequential_267/lstm_802/lstm_cell_802/MatMul:product:08sequential_267/lstm_802/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOpEsequential_267_lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_267/lstm_802/lstm_cell_802/BiasAddBiasAdd-sequential_267/lstm_802/lstm_cell_802/add:z:0Dsequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_267/lstm_802/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_267/lstm_802/lstm_cell_802/splitSplit>sequential_267/lstm_802/lstm_cell_802/split/split_dim:output:06sequential_267/lstm_802/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_267/lstm_802/lstm_cell_802/SigmoidSigmoid4sequential_267/lstm_802/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_267/lstm_802/lstm_cell_802/Sigmoid_1Sigmoid4sequential_267/lstm_802/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_267/lstm_802/lstm_cell_802/mulMul3sequential_267/lstm_802/lstm_cell_802/Sigmoid_1:y:0(sequential_267/lstm_802/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_267/lstm_802/lstm_cell_802/ReluRelu4sequential_267/lstm_802/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_267/lstm_802/lstm_cell_802/mul_1Mul1sequential_267/lstm_802/lstm_cell_802/Sigmoid:y:08sequential_267/lstm_802/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_267/lstm_802/lstm_cell_802/add_1AddV2-sequential_267/lstm_802/lstm_cell_802/mul:z:0/sequential_267/lstm_802/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_267/lstm_802/lstm_cell_802/Sigmoid_2Sigmoid4sequential_267/lstm_802/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_267/lstm_802/lstm_cell_802/Relu_1Relu/sequential_267/lstm_802/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_267/lstm_802/lstm_cell_802/mul_2Mul3sequential_267/lstm_802/lstm_cell_802/Sigmoid_2:y:0:sequential_267/lstm_802/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_267/lstm_802/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_267/lstm_802/TensorArrayV2_1TensorListReserve>sequential_267/lstm_802/TensorArrayV2_1/element_shape:output:00sequential_267/lstm_802/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_267/lstm_802/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_267/lstm_802/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_267/lstm_802/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_267/lstm_802/whileWhile3sequential_267/lstm_802/while/loop_counter:output:09sequential_267/lstm_802/while/maximum_iterations:output:0%sequential_267/lstm_802/time:output:00sequential_267/lstm_802/TensorArrayV2_1:handle:0&sequential_267/lstm_802/zeros:output:0(sequential_267/lstm_802/zeros_1:output:00sequential_267/lstm_802/strided_slice_1:output:0Osequential_267/lstm_802/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_267_lstm_802_lstm_cell_802_matmul_readvariableop_resourceFsequential_267_lstm_802_lstm_cell_802_matmul_1_readvariableop_resourceEsequential_267_lstm_802_lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_267_lstm_802_while_body_4873145*6
cond.R,
*sequential_267_lstm_802_while_cond_4873144*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_267/lstm_802/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_267/lstm_802/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_267/lstm_802/while:output:3Qsequential_267/lstm_802/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_267/lstm_802/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_267/lstm_802/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_802/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_267/lstm_802/strided_slice_3StridedSliceCsequential_267/lstm_802/TensorArrayV2Stack/TensorListStack:tensor:06sequential_267/lstm_802/strided_slice_3/stack:output:08sequential_267/lstm_802/strided_slice_3/stack_1:output:08sequential_267/lstm_802/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_267/lstm_802/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_267/lstm_802/transpose_1	TransposeCsequential_267/lstm_802/TensorArrayV2Stack/TensorListStack:tensor:01sequential_267/lstm_802/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_267/lstm_802/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_267/lstm_803/ShapeShape'sequential_267/lstm_802/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_267/lstm_803/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_267/lstm_803/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_267/lstm_803/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_267/lstm_803/strided_sliceStridedSlice&sequential_267/lstm_803/Shape:output:04sequential_267/lstm_803/strided_slice/stack:output:06sequential_267/lstm_803/strided_slice/stack_1:output:06sequential_267/lstm_803/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_267/lstm_803/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_267/lstm_803/zeros/packedPack.sequential_267/lstm_803/strided_slice:output:0/sequential_267/lstm_803/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_267/lstm_803/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_267/lstm_803/zerosFill-sequential_267/lstm_803/zeros/packed:output:0,sequential_267/lstm_803/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_267/lstm_803/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_267/lstm_803/zeros_1/packedPack.sequential_267/lstm_803/strided_slice:output:01sequential_267/lstm_803/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_267/lstm_803/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_267/lstm_803/zeros_1Fill/sequential_267/lstm_803/zeros_1/packed:output:0.sequential_267/lstm_803/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_267/lstm_803/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_267/lstm_803/transpose	Transpose'sequential_267/lstm_802/transpose_1:y:0/sequential_267/lstm_803/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_267/lstm_803/Shape_1Shape%sequential_267/lstm_803/transpose:y:0*
T0*
_output_shapes
:w
-sequential_267/lstm_803/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_803/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_803/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_267/lstm_803/strided_slice_1StridedSlice(sequential_267/lstm_803/Shape_1:output:06sequential_267/lstm_803/strided_slice_1/stack:output:08sequential_267/lstm_803/strided_slice_1/stack_1:output:08sequential_267/lstm_803/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_267/lstm_803/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_267/lstm_803/TensorArrayV2TensorListReserve<sequential_267/lstm_803/TensorArrayV2/element_shape:output:00sequential_267/lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_267/lstm_803/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_267/lstm_803/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_267/lstm_803/transpose:y:0Vsequential_267/lstm_803/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_267/lstm_803/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_803/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_267/lstm_803/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_267/lstm_803/strided_slice_2StridedSlice%sequential_267/lstm_803/transpose:y:06sequential_267/lstm_803/strided_slice_2/stack:output:08sequential_267/lstm_803/strided_slice_2/stack_1:output:08sequential_267/lstm_803/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOpReadVariableOpDsequential_267_lstm_803_lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_267/lstm_803/lstm_cell_803/MatMulMatMul0sequential_267/lstm_803/strided_slice_2:output:0Csequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOpFsequential_267_lstm_803_lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_267/lstm_803/lstm_cell_803/MatMul_1MatMul&sequential_267/lstm_803/zeros:output:0Esequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_267/lstm_803/lstm_cell_803/addAddV26sequential_267/lstm_803/lstm_cell_803/MatMul:product:08sequential_267/lstm_803/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOpEsequential_267_lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_267/lstm_803/lstm_cell_803/BiasAddBiasAdd-sequential_267/lstm_803/lstm_cell_803/add:z:0Dsequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_267/lstm_803/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_267/lstm_803/lstm_cell_803/splitSplit>sequential_267/lstm_803/lstm_cell_803/split/split_dim:output:06sequential_267/lstm_803/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_267/lstm_803/lstm_cell_803/SigmoidSigmoid4sequential_267/lstm_803/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_267/lstm_803/lstm_cell_803/Sigmoid_1Sigmoid4sequential_267/lstm_803/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_267/lstm_803/lstm_cell_803/mulMul3sequential_267/lstm_803/lstm_cell_803/Sigmoid_1:y:0(sequential_267/lstm_803/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_267/lstm_803/lstm_cell_803/ReluRelu4sequential_267/lstm_803/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_267/lstm_803/lstm_cell_803/mul_1Mul1sequential_267/lstm_803/lstm_cell_803/Sigmoid:y:08sequential_267/lstm_803/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_267/lstm_803/lstm_cell_803/add_1AddV2-sequential_267/lstm_803/lstm_cell_803/mul:z:0/sequential_267/lstm_803/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_267/lstm_803/lstm_cell_803/Sigmoid_2Sigmoid4sequential_267/lstm_803/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_267/lstm_803/lstm_cell_803/Relu_1Relu/sequential_267/lstm_803/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_267/lstm_803/lstm_cell_803/mul_2Mul3sequential_267/lstm_803/lstm_cell_803/Sigmoid_2:y:0:sequential_267/lstm_803/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_267/lstm_803/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_267/lstm_803/TensorArrayV2_1TensorListReserve>sequential_267/lstm_803/TensorArrayV2_1/element_shape:output:00sequential_267/lstm_803/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_267/lstm_803/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_267/lstm_803/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_267/lstm_803/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_267/lstm_803/whileWhile3sequential_267/lstm_803/while/loop_counter:output:09sequential_267/lstm_803/while/maximum_iterations:output:0%sequential_267/lstm_803/time:output:00sequential_267/lstm_803/TensorArrayV2_1:handle:0&sequential_267/lstm_803/zeros:output:0(sequential_267/lstm_803/zeros_1:output:00sequential_267/lstm_803/strided_slice_1:output:0Osequential_267/lstm_803/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_267_lstm_803_lstm_cell_803_matmul_readvariableop_resourceFsequential_267_lstm_803_lstm_cell_803_matmul_1_readvariableop_resourceEsequential_267_lstm_803_lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_267_lstm_803_while_body_4873284*6
cond.R,
*sequential_267_lstm_803_while_cond_4873283*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_267/lstm_803/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_267/lstm_803/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_267/lstm_803/while:output:3Qsequential_267/lstm_803/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_267/lstm_803/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_267/lstm_803/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_267/lstm_803/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_267/lstm_803/strided_slice_3StridedSliceCsequential_267/lstm_803/TensorArrayV2Stack/TensorListStack:tensor:06sequential_267/lstm_803/strided_slice_3/stack:output:08sequential_267/lstm_803/strided_slice_3/stack_1:output:08sequential_267/lstm_803/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_267/lstm_803/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_267/lstm_803/transpose_1	TransposeCsequential_267/lstm_803/TensorArrayV2Stack/TensorListStack:tensor:01sequential_267/lstm_803/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_267/lstm_803/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_267/dense_267/MatMul/ReadVariableOpReadVariableOp7sequential_267_dense_267_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_267/dense_267/MatMulMatMul0sequential_267/lstm_803/strided_slice_3:output:06sequential_267/dense_267/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_267/dense_267/BiasAdd/ReadVariableOpReadVariableOp8sequential_267_dense_267_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_267/dense_267/BiasAddBiasAdd)sequential_267/dense_267/MatMul:product:07sequential_267/dense_267/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_267/dense_267/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_267/dense_267/BiasAdd/ReadVariableOp/^sequential_267/dense_267/MatMul/ReadVariableOp=^sequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp<^sequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOp>^sequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp^sequential_267/lstm_801/while=^sequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp<^sequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOp>^sequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp^sequential_267/lstm_802/while=^sequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp<^sequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOp>^sequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp^sequential_267/lstm_803/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_267/dense_267/BiasAdd/ReadVariableOp/sequential_267/dense_267/BiasAdd/ReadVariableOp2`
.sequential_267/dense_267/MatMul/ReadVariableOp.sequential_267/dense_267/MatMul/ReadVariableOp2|
<sequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp<sequential_267/lstm_801/lstm_cell_801/BiasAdd/ReadVariableOp2z
;sequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOp;sequential_267/lstm_801/lstm_cell_801/MatMul/ReadVariableOp2~
=sequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp=sequential_267/lstm_801/lstm_cell_801/MatMul_1/ReadVariableOp2>
sequential_267/lstm_801/whilesequential_267/lstm_801/while2|
<sequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp<sequential_267/lstm_802/lstm_cell_802/BiasAdd/ReadVariableOp2z
;sequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOp;sequential_267/lstm_802/lstm_cell_802/MatMul/ReadVariableOp2~
=sequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp=sequential_267/lstm_802/lstm_cell_802/MatMul_1/ReadVariableOp2>
sequential_267/lstm_802/whilesequential_267/lstm_802/while2|
<sequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp<sequential_267/lstm_803/lstm_cell_803/BiasAdd/ReadVariableOp2z
;sequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOp;sequential_267/lstm_803/lstm_cell_803/MatMul/ReadVariableOp2~
=sequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp=sequential_267/lstm_803/lstm_cell_803/MatMul_1/ReadVariableOp2>
sequential_267/lstm_803/whilesequential_267/lstm_803/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
╔	
э
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
АC
Щ

lstm_801_while_body_4875747.
*lstm_801_while_lstm_801_while_loop_counter4
0lstm_801_while_lstm_801_while_maximum_iterations
lstm_801_while_placeholder 
lstm_801_while_placeholder_1 
lstm_801_while_placeholder_2 
lstm_801_while_placeholder_3-
)lstm_801_while_lstm_801_strided_slice_1_0i
elstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0:	љR
?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљM
>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
lstm_801_while_identity
lstm_801_while_identity_1
lstm_801_while_identity_2
lstm_801_while_identity_3
lstm_801_while_identity_4
lstm_801_while_identity_5+
'lstm_801_while_lstm_801_strided_slice_1g
clstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensorN
;lstm_801_while_lstm_cell_801_matmul_readvariableop_resource:	љP
=lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource:	dљK
<lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpб2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpб4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpЉ
@lstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_801/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0lstm_801_while_placeholderIlstm_801/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_801/while/lstm_cell_801/MatMulMatMul9lstm_801/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_801/while/lstm_cell_801/MatMul_1MatMullstm_801_while_placeholder_2<lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_801/while/lstm_cell_801/addAddV2-lstm_801/while/lstm_cell_801/MatMul:product:0/lstm_801/while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_801/while/lstm_cell_801/BiasAddBiasAdd$lstm_801/while/lstm_cell_801/add:z:0;lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_801/while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_801/while/lstm_cell_801/splitSplit5lstm_801/while/lstm_cell_801/split/split_dim:output:0-lstm_801/while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_801/while/lstm_cell_801/SigmoidSigmoid+lstm_801/while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_801/while/lstm_cell_801/Sigmoid_1Sigmoid+lstm_801/while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_801/while/lstm_cell_801/mulMul*lstm_801/while/lstm_cell_801/Sigmoid_1:y:0lstm_801_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_801/while/lstm_cell_801/ReluRelu+lstm_801/while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_801/while/lstm_cell_801/mul_1Mul(lstm_801/while/lstm_cell_801/Sigmoid:y:0/lstm_801/while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_801/while/lstm_cell_801/add_1AddV2$lstm_801/while/lstm_cell_801/mul:z:0&lstm_801/while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_801/while/lstm_cell_801/Sigmoid_2Sigmoid+lstm_801/while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_801/while/lstm_cell_801/Relu_1Relu&lstm_801/while/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_801/while/lstm_cell_801/mul_2Mul*lstm_801/while/lstm_cell_801/Sigmoid_2:y:01lstm_801/while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_801/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_801_while_placeholder_1lstm_801_while_placeholder&lstm_801/while/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_801/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_801/while/addAddV2lstm_801_while_placeholderlstm_801/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_801/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_801/while/add_1AddV2*lstm_801_while_lstm_801_while_loop_counterlstm_801/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_801/while/IdentityIdentitylstm_801/while/add_1:z:0^lstm_801/while/NoOp*
T0*
_output_shapes
: ј
lstm_801/while/Identity_1Identity0lstm_801_while_lstm_801_while_maximum_iterations^lstm_801/while/NoOp*
T0*
_output_shapes
: t
lstm_801/while/Identity_2Identitylstm_801/while/add:z:0^lstm_801/while/NoOp*
T0*
_output_shapes
: А
lstm_801/while/Identity_3IdentityClstm_801/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_801/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_801/while/Identity_4Identity&lstm_801/while/lstm_cell_801/mul_2:z:0^lstm_801/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_801/while/Identity_5Identity&lstm_801/while/lstm_cell_801/add_1:z:0^lstm_801/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_801/while/NoOpNoOp4^lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp3^lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp5^lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_801_while_identity lstm_801/while/Identity:output:0"?
lstm_801_while_identity_1"lstm_801/while/Identity_1:output:0"?
lstm_801_while_identity_2"lstm_801/while/Identity_2:output:0"?
lstm_801_while_identity_3"lstm_801/while/Identity_3:output:0"?
lstm_801_while_identity_4"lstm_801/while/Identity_4:output:0"?
lstm_801_while_identity_5"lstm_801/while/Identity_5:output:0"T
'lstm_801_while_lstm_801_strided_slice_1)lstm_801_while_lstm_801_strided_slice_1_0"~
<lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource>lstm_801_while_lstm_cell_801_biasadd_readvariableop_resource_0"ђ
=lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource?lstm_801_while_lstm_cell_801_matmul_1_readvariableop_resource_0"|
;lstm_801_while_lstm_cell_801_matmul_readvariableop_resource=lstm_801_while_lstm_cell_801_matmul_readvariableop_resource_0"╠
clstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensorelstm_801_while_tensorarrayv2read_tensorlistgetitem_lstm_801_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp3lstm_801/while/lstm_cell_801/BiasAdd/ReadVariableOp2h
2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp2lstm_801/while/lstm_cell_801/MatMul/ReadVariableOp2l
4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp4lstm_801/while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
и

Ч
lstm_803_while_cond_4876451.
*lstm_803_while_lstm_803_while_loop_counter4
0lstm_803_while_lstm_803_while_maximum_iterations
lstm_803_while_placeholder 
lstm_803_while_placeholder_1 
lstm_803_while_placeholder_2 
lstm_803_while_placeholder_30
,lstm_803_while_less_lstm_803_strided_slice_1G
Clstm_803_while_lstm_803_while_cond_4876451___redundant_placeholder0G
Clstm_803_while_lstm_803_while_cond_4876451___redundant_placeholder1G
Clstm_803_while_lstm_803_while_cond_4876451___redundant_placeholder2G
Clstm_803_while_lstm_803_while_cond_4876451___redundant_placeholder3
lstm_803_while_identity
є
lstm_803/while/LessLesslstm_803_while_placeholder,lstm_803_while_less_lstm_803_strided_slice_1*
T0*
_output_shapes
: ]
lstm_803/while/IdentityIdentitylstm_803/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_803_while_identity lstm_803/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877488
inputs_0?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877404*
condR
while_cond_4877403*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
║
╚
while_cond_4876787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4876787___redundant_placeholder05
1while_while_cond_4876787___redundant_placeholder15
1while_while_cond_4876787___redundant_placeholder25
1while_while_cond_4876787___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
█
е
*sequential_267_lstm_801_while_cond_4873005L
Hsequential_267_lstm_801_while_sequential_267_lstm_801_while_loop_counterR
Nsequential_267_lstm_801_while_sequential_267_lstm_801_while_maximum_iterations-
)sequential_267_lstm_801_while_placeholder/
+sequential_267_lstm_801_while_placeholder_1/
+sequential_267_lstm_801_while_placeholder_2/
+sequential_267_lstm_801_while_placeholder_3N
Jsequential_267_lstm_801_while_less_sequential_267_lstm_801_strided_slice_1e
asequential_267_lstm_801_while_sequential_267_lstm_801_while_cond_4873005___redundant_placeholder0e
asequential_267_lstm_801_while_sequential_267_lstm_801_while_cond_4873005___redundant_placeholder1e
asequential_267_lstm_801_while_sequential_267_lstm_801_while_cond_4873005___redundant_placeholder2e
asequential_267_lstm_801_while_sequential_267_lstm_801_while_cond_4873005___redundant_placeholder3*
&sequential_267_lstm_801_while_identity
┬
"sequential_267/lstm_801/while/LessLess)sequential_267_lstm_801_while_placeholderJsequential_267_lstm_801_while_less_sequential_267_lstm_801_strided_slice_1*
T0*
_output_shapes
: {
&sequential_267/lstm_801/while/IdentityIdentity&sequential_267/lstm_801/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_267_lstm_801_while_identity/sequential_267/lstm_801/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_803_while_cond_4876024.
*lstm_803_while_lstm_803_while_loop_counter4
0lstm_803_while_lstm_803_while_maximum_iterations
lstm_803_while_placeholder 
lstm_803_while_placeholder_1 
lstm_803_while_placeholder_2 
lstm_803_while_placeholder_30
,lstm_803_while_less_lstm_803_strided_slice_1G
Clstm_803_while_lstm_803_while_cond_4876024___redundant_placeholder0G
Clstm_803_while_lstm_803_while_cond_4876024___redundant_placeholder1G
Clstm_803_while_lstm_803_while_cond_4876024___redundant_placeholder2G
Clstm_803_while_lstm_803_while_cond_4876024___redundant_placeholder3
lstm_803_while_identity
є
lstm_803/while/LessLesslstm_803_while_placeholder,lstm_803_while_less_lstm_803_strided_slice_1*
T0*
_output_shapes
: ]
lstm_803/while/IdentityIdentitylstm_803/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_803_while_identity lstm_803/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4877074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Ј#
ы
while_body_4873996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_802_4874020_0:	d╚0
while_lstm_cell_802_4874022_0:	2╚,
while_lstm_cell_802_4874024_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_802_4874020:	d╚.
while_lstm_cell_802_4874022:	2╚*
while_lstm_cell_802_4874024:	╚ѕб+while/lstm_cell_802/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_802/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_802_4874020_0while_lstm_cell_802_4874022_0while_lstm_cell_802_4874024_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873937П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_802/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_802/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_802/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_802/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_802_4874020while_lstm_cell_802_4874020_0"<
while_lstm_cell_802_4874022while_lstm_cell_802_4874022_0"<
while_lstm_cell_802_4874024while_lstm_cell_802_4874024_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_802/StatefulPartitionedCall+while/lstm_cell_802/StatefulPartitionedCall: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_802_layer_call_fn_4877202

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4875254s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ѕ#
в
while_body_4874346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_803_4874370_0:2(/
while_lstm_cell_803_4874372_0:
(+
while_lstm_cell_803_4874374_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_803_4874370:2(-
while_lstm_cell_803_4874372:
()
while_lstm_cell_803_4874374:(ѕб+while/lstm_cell_803/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_803/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_803_4874370_0while_lstm_cell_803_4874372_0while_lstm_cell_803_4874374_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874287П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_803/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_803/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_803/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_803_4874370while_lstm_cell_803_4874370_0"<
while_lstm_cell_803_4874372while_lstm_cell_803_4874372_0"<
while_lstm_cell_803_4874374while_lstm_cell_803_4874374_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_803/StatefulPartitionedCall+while/lstm_cell_803/StatefulPartitionedCall: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ѕ#
в
while_body_4874155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_803_4874179_0:2(/
while_lstm_cell_803_4874181_0:
(+
while_lstm_cell_803_4874183_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_803_4874179:2(-
while_lstm_cell_803_4874181:
()
while_lstm_cell_803_4874183:(ѕб+while/lstm_cell_803/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_803/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_803_4874179_0while_lstm_cell_803_4874181_0while_lstm_cell_803_4874183_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4874141П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_803/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_803/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_803/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_803_4874179while_lstm_cell_803_4874179_0"<
while_lstm_cell_803_4874181while_lstm_cell_803_4874181_0"<
while_lstm_cell_803_4874183while_lstm_cell_803_4874183_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_803/StatefulPartitionedCall+while/lstm_cell_803/StatefulPartitionedCall: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
№
Э
/__inference_lstm_cell_802_layer_call_fn_4878541

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4873937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
м
ч
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875487

inputs#
lstm_801_4875460:	љ#
lstm_801_4875462:	dљ
lstm_801_4875464:	љ#
lstm_802_4875467:	d╚#
lstm_802_4875469:	2╚
lstm_802_4875471:	╚"
lstm_803_4875474:2("
lstm_803_4875476:
(
lstm_803_4875478:(#
dense_267_4875481:

dense_267_4875483:
identityѕб!dense_267/StatefulPartitionedCallб lstm_801/StatefulPartitionedCallб lstm_802/StatefulPartitionedCallб lstm_803/StatefulPartitionedCallІ
 lstm_801/StatefulPartitionedCallStatefulPartitionedCallinputslstm_801_4875460lstm_801_4875462lstm_801_4875464*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4875419«
 lstm_802/StatefulPartitionedCallStatefulPartitionedCall)lstm_801/StatefulPartitionedCall:output:0lstm_802_4875467lstm_802_4875469lstm_802_4875471*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4875254ф
 lstm_803/StatefulPartitionedCallStatefulPartitionedCall)lstm_802/StatefulPartitionedCall:output:0lstm_803_4875474lstm_803_4875476lstm_803_4875478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4875089џ
!dense_267/StatefulPartitionedCallStatefulPartitionedCall)lstm_803/StatefulPartitionedCall:output:0dense_267_4875481dense_267_4875483*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891y
IdentityIdentity*dense_267/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_267/StatefulPartitionedCall!^lstm_801/StatefulPartitionedCall!^lstm_802/StatefulPartitionedCall!^lstm_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_267/StatefulPartitionedCall!dense_267/StatefulPartitionedCall2D
 lstm_801/StatefulPartitionedCall lstm_801/StatefulPartitionedCall2D
 lstm_802/StatefulPartitionedCall lstm_802/StatefulPartitionedCall2D
 lstm_803/StatefulPartitionedCall lstm_803/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЬT
п
*sequential_267_lstm_803_while_body_4873284L
Hsequential_267_lstm_803_while_sequential_267_lstm_803_while_loop_counterR
Nsequential_267_lstm_803_while_sequential_267_lstm_803_while_maximum_iterations-
)sequential_267_lstm_803_while_placeholder/
+sequential_267_lstm_803_while_placeholder_1/
+sequential_267_lstm_803_while_placeholder_2/
+sequential_267_lstm_803_while_placeholder_3K
Gsequential_267_lstm_803_while_sequential_267_lstm_803_strided_slice_1_0ѕ
Ѓsequential_267_lstm_803_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_803_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_267_lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0:2(`
Nsequential_267_lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0:
([
Msequential_267_lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0:(*
&sequential_267_lstm_803_while_identity,
(sequential_267_lstm_803_while_identity_1,
(sequential_267_lstm_803_while_identity_2,
(sequential_267_lstm_803_while_identity_3,
(sequential_267_lstm_803_while_identity_4,
(sequential_267_lstm_803_while_identity_5I
Esequential_267_lstm_803_while_sequential_267_lstm_803_strided_slice_1є
Ђsequential_267_lstm_803_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_803_tensorarrayunstack_tensorlistfromtensor\
Jsequential_267_lstm_803_while_lstm_cell_803_matmul_readvariableop_resource:2(^
Lsequential_267_lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource:
(Y
Ksequential_267_lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource:(ѕбBsequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpбAsequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpбCsequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpа
Osequential_267/lstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_267/lstm_803/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_267_lstm_803_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_803_tensorarrayunstack_tensorlistfromtensor_0)sequential_267_lstm_803_while_placeholderXsequential_267/lstm_803/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOpLsequential_267_lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_267/lstm_803/while/lstm_cell_803/MatMulMatMulHsequential_267/lstm_803/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOpNsequential_267_lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_267/lstm_803/while/lstm_cell_803/MatMul_1MatMul+sequential_267_lstm_803_while_placeholder_2Ksequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_267/lstm_803/while/lstm_cell_803/addAddV2<sequential_267/lstm_803/while/lstm_cell_803/MatMul:product:0>sequential_267/lstm_803/while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOpMsequential_267_lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_267/lstm_803/while/lstm_cell_803/BiasAddBiasAdd3sequential_267/lstm_803/while/lstm_cell_803/add:z:0Jsequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_267/lstm_803/while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_267/lstm_803/while/lstm_cell_803/splitSplitDsequential_267/lstm_803/while/lstm_cell_803/split/split_dim:output:0<sequential_267/lstm_803/while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_267/lstm_803/while/lstm_cell_803/SigmoidSigmoid:sequential_267/lstm_803/while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_267/lstm_803/while/lstm_cell_803/Sigmoid_1Sigmoid:sequential_267/lstm_803/while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_267/lstm_803/while/lstm_cell_803/mulMul9sequential_267/lstm_803/while/lstm_cell_803/Sigmoid_1:y:0+sequential_267_lstm_803_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_267/lstm_803/while/lstm_cell_803/ReluRelu:sequential_267/lstm_803/while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_267/lstm_803/while/lstm_cell_803/mul_1Mul7sequential_267/lstm_803/while/lstm_cell_803/Sigmoid:y:0>sequential_267/lstm_803/while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_267/lstm_803/while/lstm_cell_803/add_1AddV23sequential_267/lstm_803/while/lstm_cell_803/mul:z:05sequential_267/lstm_803/while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_267/lstm_803/while/lstm_cell_803/Sigmoid_2Sigmoid:sequential_267/lstm_803/while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_267/lstm_803/while/lstm_cell_803/Relu_1Relu5sequential_267/lstm_803/while/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_267/lstm_803/while/lstm_cell_803/mul_2Mul9sequential_267/lstm_803/while/lstm_cell_803/Sigmoid_2:y:0@sequential_267/lstm_803/while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_267/lstm_803/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_267_lstm_803_while_placeholder_1)sequential_267_lstm_803_while_placeholder5sequential_267/lstm_803/while/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_267/lstm_803/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_267/lstm_803/while/addAddV2)sequential_267_lstm_803_while_placeholder,sequential_267/lstm_803/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_267/lstm_803/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_267/lstm_803/while/add_1AddV2Hsequential_267_lstm_803_while_sequential_267_lstm_803_while_loop_counter.sequential_267/lstm_803/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_267/lstm_803/while/IdentityIdentity'sequential_267/lstm_803/while/add_1:z:0#^sequential_267/lstm_803/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_267/lstm_803/while/Identity_1IdentityNsequential_267_lstm_803_while_sequential_267_lstm_803_while_maximum_iterations#^sequential_267/lstm_803/while/NoOp*
T0*
_output_shapes
: А
(sequential_267/lstm_803/while/Identity_2Identity%sequential_267/lstm_803/while/add:z:0#^sequential_267/lstm_803/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_267/lstm_803/while/Identity_3IdentityRsequential_267/lstm_803/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_267/lstm_803/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_267/lstm_803/while/Identity_4Identity5sequential_267/lstm_803/while/lstm_cell_803/mul_2:z:0#^sequential_267/lstm_803/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_267/lstm_803/while/Identity_5Identity5sequential_267/lstm_803/while/lstm_cell_803/add_1:z:0#^sequential_267/lstm_803/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_267/lstm_803/while/NoOpNoOpC^sequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpB^sequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpD^sequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_267_lstm_803_while_identity/sequential_267/lstm_803/while/Identity:output:0"]
(sequential_267_lstm_803_while_identity_11sequential_267/lstm_803/while/Identity_1:output:0"]
(sequential_267_lstm_803_while_identity_21sequential_267/lstm_803/while/Identity_2:output:0"]
(sequential_267_lstm_803_while_identity_31sequential_267/lstm_803/while/Identity_3:output:0"]
(sequential_267_lstm_803_while_identity_41sequential_267/lstm_803/while/Identity_4:output:0"]
(sequential_267_lstm_803_while_identity_51sequential_267/lstm_803/while/Identity_5:output:0"ю
Ksequential_267_lstm_803_while_lstm_cell_803_biasadd_readvariableop_resourceMsequential_267_lstm_803_while_lstm_cell_803_biasadd_readvariableop_resource_0"ъ
Lsequential_267_lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resourceNsequential_267_lstm_803_while_lstm_cell_803_matmul_1_readvariableop_resource_0"џ
Jsequential_267_lstm_803_while_lstm_cell_803_matmul_readvariableop_resourceLsequential_267_lstm_803_while_lstm_cell_803_matmul_readvariableop_resource_0"љ
Esequential_267_lstm_803_while_sequential_267_lstm_803_strided_slice_1Gsequential_267_lstm_803_while_sequential_267_lstm_803_strided_slice_1_0"і
Ђsequential_267_lstm_803_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_803_tensorarrayunstack_tensorlistfromtensorЃsequential_267_lstm_803_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_803_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOpBsequential_267/lstm_803/while/lstm_cell_803/BiasAdd/ReadVariableOp2є
Asequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOpAsequential_267/lstm_803/while/lstm_cell_803/MatMul/ReadVariableOp2і
Csequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOpCsequential_267/lstm_803/while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
м
ч
K__inference_sequential_267_layer_call_and_return_conditional_losses_4874898

inputs#
lstm_801_4874574:	љ#
lstm_801_4874576:	dљ
lstm_801_4874578:	љ#
lstm_802_4874724:	d╚#
lstm_802_4874726:	2╚
lstm_802_4874728:	╚"
lstm_803_4874874:2("
lstm_803_4874876:
(
lstm_803_4874878:(#
dense_267_4874892:

dense_267_4874894:
identityѕб!dense_267/StatefulPartitionedCallб lstm_801/StatefulPartitionedCallб lstm_802/StatefulPartitionedCallб lstm_803/StatefulPartitionedCallІ
 lstm_801/StatefulPartitionedCallStatefulPartitionedCallinputslstm_801_4874574lstm_801_4874576lstm_801_4874578*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4874573«
 lstm_802/StatefulPartitionedCallStatefulPartitionedCall)lstm_801/StatefulPartitionedCall:output:0lstm_802_4874724lstm_802_4874726lstm_802_4874728*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_802_layer_call_and_return_conditional_losses_4874723ф
 lstm_803/StatefulPartitionedCallStatefulPartitionedCall)lstm_802/StatefulPartitionedCall:output:0lstm_803_4874874lstm_803_4874876lstm_803_4874878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_803_layer_call_and_return_conditional_losses_4874873џ
!dense_267/StatefulPartitionedCallStatefulPartitionedCall)lstm_803/StatefulPartitionedCall:output:0dense_267_4874892dense_267_4874894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_267_layer_call_and_return_conditional_losses_4874891y
IdentityIdentity*dense_267/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_267/StatefulPartitionedCall!^lstm_801/StatefulPartitionedCall!^lstm_802/StatefulPartitionedCall!^lstm_803/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_267/StatefulPartitionedCall!dense_267/StatefulPartitionedCall2D
 lstm_801/StatefulPartitionedCall lstm_801/StatefulPartitionedCall2D
 lstm_802/StatefulPartitionedCall lstm_802/StatefulPartitionedCall2D
 lstm_803/StatefulPartitionedCall lstm_803/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_4875170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
ЬW
Ц
 __inference__traced_save_4878846
file_prefix/
+savev2_dense_267_kernel_read_readvariableop-
)savev2_dense_267_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_801_lstm_cell_801_kernel_read_readvariableopF
Bsavev2_lstm_801_lstm_cell_801_recurrent_kernel_read_readvariableop:
6savev2_lstm_801_lstm_cell_801_bias_read_readvariableop<
8savev2_lstm_802_lstm_cell_802_kernel_read_readvariableopF
Bsavev2_lstm_802_lstm_cell_802_recurrent_kernel_read_readvariableop:
6savev2_lstm_802_lstm_cell_802_bias_read_readvariableop<
8savev2_lstm_803_lstm_cell_803_kernel_read_readvariableopF
Bsavev2_lstm_803_lstm_cell_803_recurrent_kernel_read_readvariableop:
6savev2_lstm_803_lstm_cell_803_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_267_kernel_m_read_readvariableop4
0savev2_adam_dense_267_bias_m_read_readvariableopC
?savev2_adam_lstm_801_lstm_cell_801_kernel_m_read_readvariableopM
Isavev2_adam_lstm_801_lstm_cell_801_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_801_lstm_cell_801_bias_m_read_readvariableopC
?savev2_adam_lstm_802_lstm_cell_802_kernel_m_read_readvariableopM
Isavev2_adam_lstm_802_lstm_cell_802_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_802_lstm_cell_802_bias_m_read_readvariableopC
?savev2_adam_lstm_803_lstm_cell_803_kernel_m_read_readvariableopM
Isavev2_adam_lstm_803_lstm_cell_803_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_803_lstm_cell_803_bias_m_read_readvariableop6
2savev2_adam_dense_267_kernel_v_read_readvariableop4
0savev2_adam_dense_267_bias_v_read_readvariableopC
?savev2_adam_lstm_801_lstm_cell_801_kernel_v_read_readvariableopM
Isavev2_adam_lstm_801_lstm_cell_801_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_801_lstm_cell_801_bias_v_read_readvariableopC
?savev2_adam_lstm_802_lstm_cell_802_kernel_v_read_readvariableopM
Isavev2_adam_lstm_802_lstm_cell_802_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_802_lstm_cell_802_bias_v_read_readvariableopC
?savev2_adam_lstm_803_lstm_cell_803_kernel_v_read_readvariableopM
Isavev2_adam_lstm_803_lstm_cell_803_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_803_lstm_cell_803_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_267_kernel_read_readvariableop)savev2_dense_267_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_801_lstm_cell_801_kernel_read_readvariableopBsavev2_lstm_801_lstm_cell_801_recurrent_kernel_read_readvariableop6savev2_lstm_801_lstm_cell_801_bias_read_readvariableop8savev2_lstm_802_lstm_cell_802_kernel_read_readvariableopBsavev2_lstm_802_lstm_cell_802_recurrent_kernel_read_readvariableop6savev2_lstm_802_lstm_cell_802_bias_read_readvariableop8savev2_lstm_803_lstm_cell_803_kernel_read_readvariableopBsavev2_lstm_803_lstm_cell_803_recurrent_kernel_read_readvariableop6savev2_lstm_803_lstm_cell_803_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_267_kernel_m_read_readvariableop0savev2_adam_dense_267_bias_m_read_readvariableop?savev2_adam_lstm_801_lstm_cell_801_kernel_m_read_readvariableopIsavev2_adam_lstm_801_lstm_cell_801_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_801_lstm_cell_801_bias_m_read_readvariableop?savev2_adam_lstm_802_lstm_cell_802_kernel_m_read_readvariableopIsavev2_adam_lstm_802_lstm_cell_802_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_802_lstm_cell_802_bias_m_read_readvariableop?savev2_adam_lstm_803_lstm_cell_803_kernel_m_read_readvariableopIsavev2_adam_lstm_803_lstm_cell_803_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_803_lstm_cell_803_bias_m_read_readvariableop2savev2_adam_dense_267_kernel_v_read_readvariableop0savev2_adam_dense_267_bias_v_read_readvariableop?savev2_adam_lstm_801_lstm_cell_801_kernel_v_read_readvariableopIsavev2_adam_lstm_801_lstm_cell_801_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_801_lstm_cell_801_bias_v_read_readvariableop?savev2_adam_lstm_802_lstm_cell_802_kernel_v_read_readvariableopIsavev2_adam_lstm_802_lstm_cell_802_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_802_lstm_cell_802_bias_v_read_readvariableop?savev2_adam_lstm_803_lstm_cell_803_kernel_v_read_readvariableopIsavev2_adam_lstm_803_lstm_cell_803_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_803_lstm_cell_803_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
:: : : : : :	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: : :
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(:
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
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
:	љ:%	!

_output_shapes
:	dљ:!


_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!

_output_shapes
:	dљ:!

_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!!

_output_shapes
:	dљ:!"

_output_shapes	
:љ:%#!

_output_shapes
:	d╚:%$!

_output_shapes
:	2╚:!%

_output_shapes	
:╚:$& 

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
Л8
┌
while_body_4877547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
я

ю
0__inference_sequential_267_layer_call_fn_4875688

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_802_while_cond_4876312.
*lstm_802_while_lstm_802_while_loop_counter4
0lstm_802_while_lstm_802_while_maximum_iterations
lstm_802_while_placeholder 
lstm_802_while_placeholder_1 
lstm_802_while_placeholder_2 
lstm_802_while_placeholder_30
,lstm_802_while_less_lstm_802_strided_slice_1G
Clstm_802_while_lstm_802_while_cond_4876312___redundant_placeholder0G
Clstm_802_while_lstm_802_while_cond_4876312___redundant_placeholder1G
Clstm_802_while_lstm_802_while_cond_4876312___redundant_placeholder2G
Clstm_802_while_lstm_802_while_cond_4876312___redundant_placeholder3
lstm_802_while_identity
є
lstm_802/while/LessLesslstm_802_while_placeholder,lstm_802_while_less_lstm_802_strided_slice_1*
T0*
_output_shapes
: ]
lstm_802/while/IdentityIdentitylstm_802/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_802_while_identity lstm_802/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4876788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_801_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_801_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_801_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_801_matmul_readvariableop_resource:	љG
4while_lstm_cell_801_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_801_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_801/BiasAdd/ReadVariableOpб)while/lstm_cell_801/MatMul/ReadVariableOpб+while/lstm_cell_801/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_801/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_801_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_801/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_801/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_801/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_801_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_801/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_801/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_801/addAddV2$while/lstm_cell_801/MatMul:product:0&while/lstm_cell_801/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_801/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_801_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_801/BiasAddBiasAddwhile/lstm_cell_801/add:z:02while/lstm_cell_801/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_801/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_801/splitSplit,while/lstm_cell_801/split/split_dim:output:0$while/lstm_cell_801/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_801/SigmoidSigmoid"while/lstm_cell_801/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_1Sigmoid"while/lstm_cell_801/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_801/mulMul!while/lstm_cell_801/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_801/ReluRelu"while/lstm_cell_801/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_801/mul_1Mulwhile/lstm_cell_801/Sigmoid:y:0&while/lstm_cell_801/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_801/add_1AddV2while/lstm_cell_801/mul:z:0while/lstm_cell_801/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_801/Sigmoid_2Sigmoid"while/lstm_cell_801/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_801/Relu_1Reluwhile/lstm_cell_801/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_801/mul_2Mul!while/lstm_cell_801/Sigmoid_2:y:0(while/lstm_cell_801/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_801/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_801/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_801/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_801/BiasAdd/ReadVariableOp*^while/lstm_cell_801/MatMul/ReadVariableOp,^while/lstm_cell_801/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_801_biasadd_readvariableop_resource5while_lstm_cell_801_biasadd_readvariableop_resource_0"n
4while_lstm_cell_801_matmul_1_readvariableop_resource6while_lstm_cell_801_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_801_matmul_readvariableop_resource4while_lstm_cell_801_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_801/BiasAdd/ReadVariableOp*while/lstm_cell_801/BiasAdd/ReadVariableOp2V
)while/lstm_cell_801/MatMul/ReadVariableOp)while/lstm_cell_801/MatMul/ReadVariableOp2Z
+while/lstm_cell_801/MatMul_1/ReadVariableOp+while/lstm_cell_801/MatMul_1/ReadVariableOp: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877345
inputs_0?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877261*
condR
while_cond_4877260*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
О
є
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873441

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Ш

ц
0__inference_sequential_267_layer_call_fn_4875539
lstm_801_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_801_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
№
Э
/__inference_lstm_cell_801_layer_call_fn_4878443

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4873587o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
╔	
э
F__inference_dense_267_layer_call_and_return_conditional_losses_4878409

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
и

Ч
lstm_801_while_cond_4875746.
*lstm_801_while_lstm_801_while_loop_counter4
0lstm_801_while_lstm_801_while_maximum_iterations
lstm_801_while_placeholder 
lstm_801_while_placeholder_1 
lstm_801_while_placeholder_2 
lstm_801_while_placeholder_30
,lstm_801_while_less_lstm_801_strided_slice_1G
Clstm_801_while_lstm_801_while_cond_4875746___redundant_placeholder0G
Clstm_801_while_lstm_801_while_cond_4875746___redundant_placeholder1G
Clstm_801_while_lstm_801_while_cond_4875746___redundant_placeholder2G
Clstm_801_while_lstm_801_while_cond_4875746___redundant_placeholder3
lstm_801_while_identity
є
lstm_801/while/LessLesslstm_801_while_placeholder,lstm_801_while_less_lstm_801_strided_slice_1*
T0*
_output_shapes
: ]
lstm_801/while/IdentityIdentitylstm_801/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_801_while_identity lstm_801/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 
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
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877774

inputs?
,lstm_cell_802_matmul_readvariableop_resource:	d╚A
.lstm_cell_802_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_802_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_802/BiasAdd/ReadVariableOpб#lstm_cell_802/MatMul/ReadVariableOpб%lstm_cell_802/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_802/MatMul/ReadVariableOpReadVariableOp,lstm_cell_802_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_802/MatMulMatMulstrided_slice_2:output:0+lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_802_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_802/MatMul_1MatMulzeros:output:0-lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_802/addAddV2lstm_cell_802/MatMul:product:0 lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_802_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_802/BiasAddBiasAddlstm_cell_802/add:z:0,lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_802/splitSplit&lstm_cell_802/split/split_dim:output:0lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_802/SigmoidSigmoidlstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_1Sigmoidlstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_802/mulMullstm_cell_802/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_802/ReluRelulstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_802/mul_1Mullstm_cell_802/Sigmoid:y:0 lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_802/add_1AddV2lstm_cell_802/mul:z:0lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_802/Sigmoid_2Sigmoidlstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_802/Relu_1Relulstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_802/mul_2Mullstm_cell_802/Sigmoid_2:y:0"lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_802_matmul_readvariableop_resource.lstm_cell_802_matmul_1_readvariableop_resource-lstm_cell_802_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877690*
condR
while_cond_4877689*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_802/BiasAdd/ReadVariableOp$^lstm_cell_802/MatMul/ReadVariableOp&^lstm_cell_802/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_802/BiasAdd/ReadVariableOp$lstm_cell_802/BiasAdd/ReadVariableOp2J
#lstm_cell_802/MatMul/ReadVariableOp#lstm_cell_802/MatMul/ReadVariableOp2N
%lstm_cell_802/MatMul_1/ReadVariableOp%lstm_cell_802/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_4878020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ш

ц
0__inference_sequential_267_layer_call_fn_4874923
lstm_801_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_801_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_267_layer_call_and_return_conditional_losses_4874898o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
┬

Ў
%__inference_signature_wrapper_4875634
lstm_801_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalllstm_801_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_4873374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_801_input
▀
ѕ
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878475

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
чT
я
*sequential_267_lstm_802_while_body_4873145L
Hsequential_267_lstm_802_while_sequential_267_lstm_802_while_loop_counterR
Nsequential_267_lstm_802_while_sequential_267_lstm_802_while_maximum_iterations-
)sequential_267_lstm_802_while_placeholder/
+sequential_267_lstm_802_while_placeholder_1/
+sequential_267_lstm_802_while_placeholder_2/
+sequential_267_lstm_802_while_placeholder_3K
Gsequential_267_lstm_802_while_sequential_267_lstm_802_strided_slice_1_0ѕ
Ѓsequential_267_lstm_802_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_802_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_267_lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚a
Nsequential_267_lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚\
Msequential_267_lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚*
&sequential_267_lstm_802_while_identity,
(sequential_267_lstm_802_while_identity_1,
(sequential_267_lstm_802_while_identity_2,
(sequential_267_lstm_802_while_identity_3,
(sequential_267_lstm_802_while_identity_4,
(sequential_267_lstm_802_while_identity_5I
Esequential_267_lstm_802_while_sequential_267_lstm_802_strided_slice_1є
Ђsequential_267_lstm_802_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_802_tensorarrayunstack_tensorlistfromtensor]
Jsequential_267_lstm_802_while_lstm_cell_802_matmul_readvariableop_resource:	d╚_
Lsequential_267_lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚Z
Ksequential_267_lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕбBsequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpбAsequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpбCsequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpа
Osequential_267/lstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_267/lstm_802/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_267_lstm_802_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_802_tensorarrayunstack_tensorlistfromtensor_0)sequential_267_lstm_802_while_placeholderXsequential_267/lstm_802/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOpLsequential_267_lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_267/lstm_802/while/lstm_cell_802/MatMulMatMulHsequential_267/lstm_802/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOpNsequential_267_lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_267/lstm_802/while/lstm_cell_802/MatMul_1MatMul+sequential_267_lstm_802_while_placeholder_2Ksequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_267/lstm_802/while/lstm_cell_802/addAddV2<sequential_267/lstm_802/while/lstm_cell_802/MatMul:product:0>sequential_267/lstm_802/while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOpMsequential_267_lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_267/lstm_802/while/lstm_cell_802/BiasAddBiasAdd3sequential_267/lstm_802/while/lstm_cell_802/add:z:0Jsequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_267/lstm_802/while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_267/lstm_802/while/lstm_cell_802/splitSplitDsequential_267/lstm_802/while/lstm_cell_802/split/split_dim:output:0<sequential_267/lstm_802/while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_267/lstm_802/while/lstm_cell_802/SigmoidSigmoid:sequential_267/lstm_802/while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_267/lstm_802/while/lstm_cell_802/Sigmoid_1Sigmoid:sequential_267/lstm_802/while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_267/lstm_802/while/lstm_cell_802/mulMul9sequential_267/lstm_802/while/lstm_cell_802/Sigmoid_1:y:0+sequential_267_lstm_802_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_267/lstm_802/while/lstm_cell_802/ReluRelu:sequential_267/lstm_802/while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_267/lstm_802/while/lstm_cell_802/mul_1Mul7sequential_267/lstm_802/while/lstm_cell_802/Sigmoid:y:0>sequential_267/lstm_802/while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_267/lstm_802/while/lstm_cell_802/add_1AddV23sequential_267/lstm_802/while/lstm_cell_802/mul:z:05sequential_267/lstm_802/while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_267/lstm_802/while/lstm_cell_802/Sigmoid_2Sigmoid:sequential_267/lstm_802/while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_267/lstm_802/while/lstm_cell_802/Relu_1Relu5sequential_267/lstm_802/while/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_267/lstm_802/while/lstm_cell_802/mul_2Mul9sequential_267/lstm_802/while/lstm_cell_802/Sigmoid_2:y:0@sequential_267/lstm_802/while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_267/lstm_802/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_267_lstm_802_while_placeholder_1)sequential_267_lstm_802_while_placeholder5sequential_267/lstm_802/while/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_267/lstm_802/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_267/lstm_802/while/addAddV2)sequential_267_lstm_802_while_placeholder,sequential_267/lstm_802/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_267/lstm_802/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_267/lstm_802/while/add_1AddV2Hsequential_267_lstm_802_while_sequential_267_lstm_802_while_loop_counter.sequential_267/lstm_802/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_267/lstm_802/while/IdentityIdentity'sequential_267/lstm_802/while/add_1:z:0#^sequential_267/lstm_802/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_267/lstm_802/while/Identity_1IdentityNsequential_267_lstm_802_while_sequential_267_lstm_802_while_maximum_iterations#^sequential_267/lstm_802/while/NoOp*
T0*
_output_shapes
: А
(sequential_267/lstm_802/while/Identity_2Identity%sequential_267/lstm_802/while/add:z:0#^sequential_267/lstm_802/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_267/lstm_802/while/Identity_3IdentityRsequential_267/lstm_802/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_267/lstm_802/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_267/lstm_802/while/Identity_4Identity5sequential_267/lstm_802/while/lstm_cell_802/mul_2:z:0#^sequential_267/lstm_802/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_267/lstm_802/while/Identity_5Identity5sequential_267/lstm_802/while/lstm_cell_802/add_1:z:0#^sequential_267/lstm_802/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_267/lstm_802/while/NoOpNoOpC^sequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpB^sequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpD^sequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_267_lstm_802_while_identity/sequential_267/lstm_802/while/Identity:output:0"]
(sequential_267_lstm_802_while_identity_11sequential_267/lstm_802/while/Identity_1:output:0"]
(sequential_267_lstm_802_while_identity_21sequential_267/lstm_802/while/Identity_2:output:0"]
(sequential_267_lstm_802_while_identity_31sequential_267/lstm_802/while/Identity_3:output:0"]
(sequential_267_lstm_802_while_identity_41sequential_267/lstm_802/while/Identity_4:output:0"]
(sequential_267_lstm_802_while_identity_51sequential_267/lstm_802/while/Identity_5:output:0"ю
Ksequential_267_lstm_802_while_lstm_cell_802_biasadd_readvariableop_resourceMsequential_267_lstm_802_while_lstm_cell_802_biasadd_readvariableop_resource_0"ъ
Lsequential_267_lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resourceNsequential_267_lstm_802_while_lstm_cell_802_matmul_1_readvariableop_resource_0"џ
Jsequential_267_lstm_802_while_lstm_cell_802_matmul_readvariableop_resourceLsequential_267_lstm_802_while_lstm_cell_802_matmul_readvariableop_resource_0"љ
Esequential_267_lstm_802_while_sequential_267_lstm_802_strided_slice_1Gsequential_267_lstm_802_while_sequential_267_lstm_802_strided_slice_1_0"і
Ђsequential_267_lstm_802_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_802_tensorarrayunstack_tensorlistfromtensorЃsequential_267_lstm_802_while_tensorarrayv2read_tensorlistgetitem_sequential_267_lstm_802_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOpBsequential_267/lstm_802/while/lstm_cell_802/BiasAdd/ReadVariableOp2є
Asequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOpAsequential_267/lstm_802/while/lstm_cell_802/MatMul/ReadVariableOp2і
Csequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOpCsequential_267/lstm_802/while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4875004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4875004___redundant_placeholder05
1while_while_cond_4875004___redundant_placeholder15
1while_while_cond_4875004___redundant_placeholder25
1while_while_cond_4875004___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
─8
н
while_body_4878306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_803_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_803_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_803_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_803_matmul_readvariableop_resource:2(F
4while_lstm_cell_803_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_803_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_803/BiasAdd/ReadVariableOpб)while/lstm_cell_803/MatMul/ReadVariableOpб+while/lstm_cell_803/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_803/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_803_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_803/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_803_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_803/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_803/addAddV2$while/lstm_cell_803/MatMul:product:0&while/lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_803_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_803/BiasAddBiasAddwhile/lstm_cell_803/add:z:02while/lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_803/splitSplit,while/lstm_cell_803/split/split_dim:output:0$while/lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_803/SigmoidSigmoid"while/lstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_1Sigmoid"while/lstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_803/mulMul!while/lstm_cell_803/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_803/ReluRelu"while/lstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_803/mul_1Mulwhile/lstm_cell_803/Sigmoid:y:0&while/lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_803/add_1AddV2while/lstm_cell_803/mul:z:0while/lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_803/Sigmoid_2Sigmoid"while/lstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_803/Relu_1Reluwhile/lstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_803/mul_2Mul!while/lstm_cell_803/Sigmoid_2:y:0(while/lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_803/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_803/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_803/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_803/BiasAdd/ReadVariableOp*^while/lstm_cell_803/MatMul/ReadVariableOp,^while/lstm_cell_803/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_803_biasadd_readvariableop_resource5while_lstm_cell_803_biasadd_readvariableop_resource_0"n
4while_lstm_cell_803_matmul_1_readvariableop_resource6while_lstm_cell_803_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_803_matmul_readvariableop_resource4while_lstm_cell_803_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_803/BiasAdd/ReadVariableOp*while/lstm_cell_803/BiasAdd/ReadVariableOp2V
)while/lstm_cell_803/MatMul/ReadVariableOp)while/lstm_cell_803/MatMul/ReadVariableOp2Z
+while/lstm_cell_803/MatMul_1/ReadVariableOp+while/lstm_cell_803/MatMul_1/ReadVariableOp: 
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
њK
б
E__inference_lstm_803_layer_call_and_return_conditional_losses_4877961
inputs_0>
,lstm_cell_803_matmul_readvariableop_resource:2(@
.lstm_cell_803_matmul_1_readvariableop_resource:
(;
-lstm_cell_803_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_803/BiasAdd/ReadVariableOpб#lstm_cell_803/MatMul/ReadVariableOpб%lstm_cell_803/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_803/MatMul/ReadVariableOpReadVariableOp,lstm_cell_803_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_803/MatMulMatMulstrided_slice_2:output:0+lstm_cell_803/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_803/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_803_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_803/MatMul_1MatMulzeros:output:0-lstm_cell_803/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_803/addAddV2lstm_cell_803/MatMul:product:0 lstm_cell_803/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_803/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_803_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_803/BiasAddBiasAddlstm_cell_803/add:z:0,lstm_cell_803/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_803/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_803/splitSplit&lstm_cell_803/split/split_dim:output:0lstm_cell_803/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_803/SigmoidSigmoidlstm_cell_803/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_1Sigmoidlstm_cell_803/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_803/mulMullstm_cell_803/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_803/ReluRelulstm_cell_803/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_803/mul_1Mullstm_cell_803/Sigmoid:y:0 lstm_cell_803/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_803/add_1AddV2lstm_cell_803/mul:z:0lstm_cell_803/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_803/Sigmoid_2Sigmoidlstm_cell_803/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_803/Relu_1Relulstm_cell_803/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_803/mul_2Mullstm_cell_803/Sigmoid_2:y:0"lstm_cell_803/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_803_matmul_readvariableop_resource.lstm_cell_803_matmul_1_readvariableop_resource-lstm_cell_803_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4877877*
condR
while_cond_4877876*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_803/BiasAdd/ReadVariableOp$^lstm_cell_803/MatMul/ReadVariableOp&^lstm_cell_803/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_803/BiasAdd/ReadVariableOp$lstm_cell_803/BiasAdd/ReadVariableOp2J
#lstm_cell_803/MatMul/ReadVariableOp#lstm_cell_803/MatMul/ReadVariableOp2N
%lstm_cell_803/MatMul_1/ReadVariableOp%lstm_cell_803/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Л8
┌
while_body_4877690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_802_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_802_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_802_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_802_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_802_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_802_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_802/BiasAdd/ReadVariableOpб)while/lstm_cell_802/MatMul/ReadVariableOpб+while/lstm_cell_802/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_802/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_802_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_802/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_802/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_802/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_802_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_802/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_802/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_802/addAddV2$while/lstm_cell_802/MatMul:product:0&while/lstm_cell_802/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_802/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_802_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_802/BiasAddBiasAddwhile/lstm_cell_802/add:z:02while/lstm_cell_802/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_802/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_802/splitSplit,while/lstm_cell_802/split/split_dim:output:0$while/lstm_cell_802/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_802/SigmoidSigmoid"while/lstm_cell_802/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_1Sigmoid"while/lstm_cell_802/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_802/mulMul!while/lstm_cell_802/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_802/ReluRelu"while/lstm_cell_802/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_802/mul_1Mulwhile/lstm_cell_802/Sigmoid:y:0&while/lstm_cell_802/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_802/add_1AddV2while/lstm_cell_802/mul:z:0while/lstm_cell_802/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_802/Sigmoid_2Sigmoid"while/lstm_cell_802/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_802/Relu_1Reluwhile/lstm_cell_802/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_802/mul_2Mul!while/lstm_cell_802/Sigmoid_2:y:0(while/lstm_cell_802/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_802/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_802/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_802/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_802/BiasAdd/ReadVariableOp*^while/lstm_cell_802/MatMul/ReadVariableOp,^while/lstm_cell_802/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_802_biasadd_readvariableop_resource5while_lstm_cell_802_biasadd_readvariableop_resource_0"n
4while_lstm_cell_802_matmul_1_readvariableop_resource6while_lstm_cell_802_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_802_matmul_readvariableop_resource4while_lstm_cell_802_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_802/BiasAdd/ReadVariableOp*while/lstm_cell_802/BiasAdd/ReadVariableOp2V
)while/lstm_cell_802/MatMul/ReadVariableOp)while/lstm_cell_802/MatMul/ReadVariableOp2Z
+while/lstm_cell_802/MatMul_1/ReadVariableOp+while/lstm_cell_802/MatMul_1/ReadVariableOp: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4874638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4874638___redundant_placeholder05
1while_while_cond_4874638___redundant_placeholder15
1while_while_cond_4874638___redundant_placeholder25
1while_while_cond_4874638___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_802_while_cond_4875885.
*lstm_802_while_lstm_802_while_loop_counter4
0lstm_802_while_lstm_802_while_maximum_iterations
lstm_802_while_placeholder 
lstm_802_while_placeholder_1 
lstm_802_while_placeholder_2 
lstm_802_while_placeholder_30
,lstm_802_while_less_lstm_802_strided_slice_1G
Clstm_802_while_lstm_802_while_cond_4875885___redundant_placeholder0G
Clstm_802_while_lstm_802_while_cond_4875885___redundant_placeholder1G
Clstm_802_while_lstm_802_while_cond_4875885___redundant_placeholder2G
Clstm_802_while_lstm_802_while_cond_4875885___redundant_placeholder3
lstm_802_while_identity
є
lstm_802/while/LessLesslstm_802_while_placeholder,lstm_802_while_less_lstm_802_strided_slice_1*
T0*
_output_shapes
: ]
lstm_802/while/IdentityIdentitylstm_802/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_802_while_identity lstm_802/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 
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
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Ѓ
и
*__inference_lstm_801_layer_call_fn_4876586

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_801_layer_call_and_return_conditional_losses_4875419s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
M
lstm_801_input;
 serving_default_lstm_801_input:0         =
	dense_2670
StatefulPartitionedCall:0         tensorflow/serving/predict:н═
Ё
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
й

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ъ
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
є__call__
ѕ_default_save_signature
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
-
Љserving_default"
signature_map
с
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
с
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
с
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_267/kernel
:2dense_267/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_801/lstm_cell_801/kernel
::8	dљ2'lstm_801/lstm_cell_801/recurrent_kernel
*:(љ2lstm_801/lstm_cell_801/bias
0:.	d╚2lstm_802/lstm_cell_802/kernel
::8	2╚2'lstm_802/lstm_cell_802/recurrent_kernel
*:(╚2lstm_802/lstm_cell_802/bias
/:-2(2lstm_803/lstm_cell_803/kernel
9:7
(2'lstm_803/lstm_cell_803/recurrent_kernel
):'(2lstm_803/lstm_cell_803/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
░
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ltotal
	mcount
n	variables
o	keras_api"
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
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_267/kernel/m
!:2Adam/dense_267/bias/m
5:3	љ2$Adam/lstm_801/lstm_cell_801/kernel/m
?:=	dљ2.Adam/lstm_801/lstm_cell_801/recurrent_kernel/m
/:-љ2"Adam/lstm_801/lstm_cell_801/bias/m
5:3	d╚2$Adam/lstm_802/lstm_cell_802/kernel/m
?:=	2╚2.Adam/lstm_802/lstm_cell_802/recurrent_kernel/m
/:-╚2"Adam/lstm_802/lstm_cell_802/bias/m
4:22(2$Adam/lstm_803/lstm_cell_803/kernel/m
>:<
(2.Adam/lstm_803/lstm_cell_803/recurrent_kernel/m
.:,(2"Adam/lstm_803/lstm_cell_803/bias/m
':%
2Adam/dense_267/kernel/v
!:2Adam/dense_267/bias/v
5:3	љ2$Adam/lstm_801/lstm_cell_801/kernel/v
?:=	dљ2.Adam/lstm_801/lstm_cell_801/recurrent_kernel/v
/:-љ2"Adam/lstm_801/lstm_cell_801/bias/v
5:3	d╚2$Adam/lstm_802/lstm_cell_802/kernel/v
?:=	2╚2.Adam/lstm_802/lstm_cell_802/recurrent_kernel/v
/:-╚2"Adam/lstm_802/lstm_cell_802/bias/v
4:22(2$Adam/lstm_803/lstm_cell_803/kernel/v
>:<
(2.Adam/lstm_803/lstm_cell_803/recurrent_kernel/v
.:,(2"Adam/lstm_803/lstm_cell_803/bias/v
ј2І
0__inference_sequential_267_layer_call_fn_4874923
0__inference_sequential_267_layer_call_fn_4875661
0__inference_sequential_267_layer_call_fn_4875688
0__inference_sequential_267_layer_call_fn_4875539└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Щ2э
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876115
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876542
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875569
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875599└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_4873374lstm_801_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
І2ѕ
*__inference_lstm_801_layer_call_fn_4876553
*__inference_lstm_801_layer_call_fn_4876564
*__inference_lstm_801_layer_call_fn_4876575
*__inference_lstm_801_layer_call_fn_4876586Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876729
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876872
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877015
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877158Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_802_layer_call_fn_4877169
*__inference_lstm_802_layer_call_fn_4877180
*__inference_lstm_802_layer_call_fn_4877191
*__inference_lstm_802_layer_call_fn_4877202Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877345
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877488
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877631
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877774Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_803_layer_call_fn_4877785
*__inference_lstm_803_layer_call_fn_4877796
*__inference_lstm_803_layer_call_fn_4877807
*__inference_lstm_803_layer_call_fn_4877818Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_803_layer_call_and_return_conditional_losses_4877961
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878104
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878247
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878390Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Н2м
+__inference_dense_267_layer_call_fn_4878399б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_dense_267_layer_call_and_return_conditional_losses_4878409б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
МBл
%__inference_signature_wrapper_4875634lstm_801_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
д2Б
/__inference_lstm_cell_801_layer_call_fn_4878426
/__inference_lstm_cell_801_layer_call_fn_4878443Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878475
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878507Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_802_layer_call_fn_4878524
/__inference_lstm_cell_802_layer_call_fn_4878541Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878573
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878605Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_803_layer_call_fn_4878622
/__inference_lstm_cell_803_layer_call_fn_4878639Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878671
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878703Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 е
"__inference__wrapped_model_4873374Ђ()*+,-./0;б8
1б.
,і)
lstm_801_input         
ф "5ф2
0
	dense_267#і 
	dense_267         д
F__inference_dense_267_layer_call_and_return_conditional_losses_4878409\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_267_layer_call_fn_4878399O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876729і()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  d
џ н
E__inference_lstm_801_layer_call_and_return_conditional_losses_4876872і()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  d
џ ║
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877015q()*?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         d
џ ║
E__inference_lstm_801_layer_call_and_return_conditional_losses_4877158q()*?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         d
џ Ф
*__inference_lstm_801_layer_call_fn_4876553}()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  dФ
*__inference_lstm_801_layer_call_fn_4876564}()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  dњ
*__inference_lstm_801_layer_call_fn_4876575d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_801_layer_call_fn_4876586d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877345і+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "2б/
(і%
0                  2
џ н
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877488і+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "2б/
(і%
0                  2
џ ║
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877631q+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф ")б&
і
0         2
џ ║
E__inference_lstm_802_layer_call_and_return_conditional_losses_4877774q+,-?б<
5б2
$і!
inputs         d

 
p

 
ф ")б&
і
0         2
џ Ф
*__inference_lstm_802_layer_call_fn_4877169}+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%і"                  2Ф
*__inference_lstm_802_layer_call_fn_4877180}+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%і"                  2њ
*__inference_lstm_802_layer_call_fn_4877191d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_802_layer_call_fn_4877202d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_803_layer_call_and_return_conditional_losses_4877961}./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "%б"
і
0         

џ к
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878104}./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "%б"
і
0         

џ Х
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878247m./0?б<
5б2
$і!
inputs         2

 
p 

 
ф "%б"
і
0         

џ Х
E__inference_lstm_803_layer_call_and_return_conditional_losses_4878390m./0?б<
5б2
$і!
inputs         2

 
p

 
ф "%б"
і
0         

џ ъ
*__inference_lstm_803_layer_call_fn_4877785p./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "і         
ъ
*__inference_lstm_803_layer_call_fn_4877796p./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "і         
ј
*__inference_lstm_803_layer_call_fn_4877807`./0?б<
5б2
$і!
inputs         2

 
p 

 
ф "і         
ј
*__inference_lstm_803_layer_call_fn_4877818`./0?б<
5б2
$і!
inputs         2

 
p

 
ф "і         
╠
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878475§()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ ╠
J__inference_lstm_cell_801_layer_call_and_return_conditional_losses_4878507§()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ А
/__inference_lstm_cell_801_layer_call_fn_4878426ь()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         dА
/__inference_lstm_cell_801_layer_call_fn_4878443ь()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         d╠
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878573§+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ ╠
J__inference_lstm_cell_802_layer_call_and_return_conditional_losses_4878605§+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ А
/__inference_lstm_cell_802_layer_call_fn_4878524ь+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2А
/__inference_lstm_cell_802_layer_call_fn_4878541ь+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2╠
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878671§./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ ╠
J__inference_lstm_cell_803_layer_call_and_return_conditional_losses_4878703§./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ А
/__inference_lstm_cell_803_layer_call_fn_4878622ь./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
А
/__inference_lstm_cell_803_layer_call_fn_4878639ь./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
╚
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875569y()*+,-./0Cб@
9б6
,і)
lstm_801_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_267_layer_call_and_return_conditional_losses_4875599y()*+,-./0Cб@
9б6
,і)
lstm_801_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876115q()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ └
K__inference_sequential_267_layer_call_and_return_conditional_losses_4876542q()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ а
0__inference_sequential_267_layer_call_fn_4874923l()*+,-./0Cб@
9б6
,і)
lstm_801_input         
p 

 
ф "і         а
0__inference_sequential_267_layer_call_fn_4875539l()*+,-./0Cб@
9б6
,і)
lstm_801_input         
p

 
ф "і         ў
0__inference_sequential_267_layer_call_fn_4875661d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_267_layer_call_fn_4875688d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_4875634Њ()*+,-./0MбJ
б 
Cф@
>
lstm_801_input,і)
lstm_801_input         "5ф2
0
	dense_267#і 
	dense_267         