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
dense_269/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_269/kernel
u
$dense_269/kernel/Read/ReadVariableOpReadVariableOpdense_269/kernel*
_output_shapes

:
*
dtype0
t
dense_269/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_269/bias
m
"dense_269/bias/Read/ReadVariableOpReadVariableOpdense_269/bias*
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
lstm_807/lstm_cell_807/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_807/lstm_cell_807/kernel
љ
1lstm_807/lstm_cell_807/kernel/Read/ReadVariableOpReadVariableOplstm_807/lstm_cell_807/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_807/lstm_cell_807/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_807/lstm_cell_807/recurrent_kernel
ц
;lstm_807/lstm_cell_807/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_807/lstm_cell_807/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_807/lstm_cell_807/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_807/lstm_cell_807/bias
ѕ
/lstm_807/lstm_cell_807/bias/Read/ReadVariableOpReadVariableOplstm_807/lstm_cell_807/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_808/lstm_cell_808/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_808/lstm_cell_808/kernel
љ
1lstm_808/lstm_cell_808/kernel/Read/ReadVariableOpReadVariableOplstm_808/lstm_cell_808/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_808/lstm_cell_808/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_808/lstm_cell_808/recurrent_kernel
ц
;lstm_808/lstm_cell_808/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_808/lstm_cell_808/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_808/lstm_cell_808/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_808/lstm_cell_808/bias
ѕ
/lstm_808/lstm_cell_808/bias/Read/ReadVariableOpReadVariableOplstm_808/lstm_cell_808/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_809/lstm_cell_809/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_809/lstm_cell_809/kernel
Ј
1lstm_809/lstm_cell_809/kernel/Read/ReadVariableOpReadVariableOplstm_809/lstm_cell_809/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_809/lstm_cell_809/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_809/lstm_cell_809/recurrent_kernel
Б
;lstm_809/lstm_cell_809/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_809/lstm_cell_809/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_809/lstm_cell_809/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_809/lstm_cell_809/bias
Є
/lstm_809/lstm_cell_809/bias/Read/ReadVariableOpReadVariableOplstm_809/lstm_cell_809/bias*
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
Adam/dense_269/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_269/kernel/m
Ѓ
+Adam/dense_269/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_269/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_269/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_269/bias/m
{
)Adam/dense_269/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_269/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_807/lstm_cell_807/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_807/lstm_cell_807/kernel/m
ъ
8Adam/lstm_807/lstm_cell_807/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_807/lstm_cell_807/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_807/lstm_cell_807/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_807/lstm_cell_807/recurrent_kernel/m
▓
BAdam/lstm_807/lstm_cell_807/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_807/lstm_cell_807/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_807/lstm_cell_807/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_807/lstm_cell_807/bias/m
ќ
6Adam/lstm_807/lstm_cell_807/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_807/lstm_cell_807/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_808/lstm_cell_808/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_808/lstm_cell_808/kernel/m
ъ
8Adam/lstm_808/lstm_cell_808/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_808/lstm_cell_808/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_808/lstm_cell_808/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_808/lstm_cell_808/recurrent_kernel/m
▓
BAdam/lstm_808/lstm_cell_808/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_808/lstm_cell_808/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_808/lstm_cell_808/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_808/lstm_cell_808/bias/m
ќ
6Adam/lstm_808/lstm_cell_808/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_808/lstm_cell_808/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_809/lstm_cell_809/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_809/lstm_cell_809/kernel/m
Ю
8Adam/lstm_809/lstm_cell_809/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_809/lstm_cell_809/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_809/lstm_cell_809/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_809/lstm_cell_809/recurrent_kernel/m
▒
BAdam/lstm_809/lstm_cell_809/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_809/lstm_cell_809/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_809/lstm_cell_809/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_809/lstm_cell_809/bias/m
Ћ
6Adam/lstm_809/lstm_cell_809/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_809/lstm_cell_809/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_269/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_269/kernel/v
Ѓ
+Adam/dense_269/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_269/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_269/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_269/bias/v
{
)Adam/dense_269/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_269/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_807/lstm_cell_807/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_807/lstm_cell_807/kernel/v
ъ
8Adam/lstm_807/lstm_cell_807/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_807/lstm_cell_807/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_807/lstm_cell_807/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_807/lstm_cell_807/recurrent_kernel/v
▓
BAdam/lstm_807/lstm_cell_807/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_807/lstm_cell_807/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_807/lstm_cell_807/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_807/lstm_cell_807/bias/v
ќ
6Adam/lstm_807/lstm_cell_807/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_807/lstm_cell_807/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_808/lstm_cell_808/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_808/lstm_cell_808/kernel/v
ъ
8Adam/lstm_808/lstm_cell_808/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_808/lstm_cell_808/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_808/lstm_cell_808/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_808/lstm_cell_808/recurrent_kernel/v
▓
BAdam/lstm_808/lstm_cell_808/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_808/lstm_cell_808/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_808/lstm_cell_808/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_808/lstm_cell_808/bias/v
ќ
6Adam/lstm_808/lstm_cell_808/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_808/lstm_cell_808/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_809/lstm_cell_809/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_809/lstm_cell_809/kernel/v
Ю
8Adam/lstm_809/lstm_cell_809/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_809/lstm_cell_809/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_809/lstm_cell_809/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_809/lstm_cell_809/recurrent_kernel/v
▒
BAdam/lstm_809/lstm_cell_809/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_809/lstm_cell_809/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_809/lstm_cell_809/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_809/lstm_cell_809/bias/v
Ћ
6Adam/lstm_809/lstm_cell_809/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_809/lstm_cell_809/bias/v*
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
VARIABLE_VALUEdense_269/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_269/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_807/lstm_cell_807/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_807/lstm_cell_807/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_807/lstm_cell_807/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_808/lstm_cell_808/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_808/lstm_cell_808/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_808/lstm_cell_808/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_809/lstm_cell_809/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_809/lstm_cell_809/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_809/lstm_cell_809/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_269/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_269/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_807/lstm_cell_807/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_807/lstm_cell_807/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_807/lstm_cell_807/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_808/lstm_cell_808/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_808/lstm_cell_808/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_808/lstm_cell_808/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_809/lstm_cell_809/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_809/lstm_cell_809/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_809/lstm_cell_809/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_269/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_269/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_807/lstm_cell_807/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_807/lstm_cell_807/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_807/lstm_cell_807/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_808/lstm_cell_808/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_808/lstm_cell_808/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_808/lstm_cell_808/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_809/lstm_cell_809/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_809/lstm_cell_809/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_809/lstm_cell_809/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_807_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_807_inputlstm_807/lstm_cell_807/kernel'lstm_807/lstm_cell_807/recurrent_kernellstm_807/lstm_cell_807/biaslstm_808/lstm_cell_808/kernel'lstm_808/lstm_cell_808/recurrent_kernellstm_808/lstm_cell_808/biaslstm_809/lstm_cell_809/kernel'lstm_809/lstm_cell_809/recurrent_kernellstm_809/lstm_cell_809/biasdense_269/kerneldense_269/bias*
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
%__inference_signature_wrapper_4912818
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_269/kernel/Read/ReadVariableOp"dense_269/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_807/lstm_cell_807/kernel/Read/ReadVariableOp;lstm_807/lstm_cell_807/recurrent_kernel/Read/ReadVariableOp/lstm_807/lstm_cell_807/bias/Read/ReadVariableOp1lstm_808/lstm_cell_808/kernel/Read/ReadVariableOp;lstm_808/lstm_cell_808/recurrent_kernel/Read/ReadVariableOp/lstm_808/lstm_cell_808/bias/Read/ReadVariableOp1lstm_809/lstm_cell_809/kernel/Read/ReadVariableOp;lstm_809/lstm_cell_809/recurrent_kernel/Read/ReadVariableOp/lstm_809/lstm_cell_809/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_269/kernel/m/Read/ReadVariableOp)Adam/dense_269/bias/m/Read/ReadVariableOp8Adam/lstm_807/lstm_cell_807/kernel/m/Read/ReadVariableOpBAdam/lstm_807/lstm_cell_807/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_807/lstm_cell_807/bias/m/Read/ReadVariableOp8Adam/lstm_808/lstm_cell_808/kernel/m/Read/ReadVariableOpBAdam/lstm_808/lstm_cell_808/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_808/lstm_cell_808/bias/m/Read/ReadVariableOp8Adam/lstm_809/lstm_cell_809/kernel/m/Read/ReadVariableOpBAdam/lstm_809/lstm_cell_809/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_809/lstm_cell_809/bias/m/Read/ReadVariableOp+Adam/dense_269/kernel/v/Read/ReadVariableOp)Adam/dense_269/bias/v/Read/ReadVariableOp8Adam/lstm_807/lstm_cell_807/kernel/v/Read/ReadVariableOpBAdam/lstm_807/lstm_cell_807/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_807/lstm_cell_807/bias/v/Read/ReadVariableOp8Adam/lstm_808/lstm_cell_808/kernel/v/Read/ReadVariableOpBAdam/lstm_808/lstm_cell_808/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_808/lstm_cell_808/bias/v/Read/ReadVariableOp8Adam/lstm_809/lstm_cell_809/kernel/v/Read/ReadVariableOpBAdam/lstm_809/lstm_cell_809/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_809/lstm_cell_809/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4916030
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_269/kerneldense_269/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_807/lstm_cell_807/kernel'lstm_807/lstm_cell_807/recurrent_kernellstm_807/lstm_cell_807/biaslstm_808/lstm_cell_808/kernel'lstm_808/lstm_cell_808/recurrent_kernellstm_808/lstm_cell_808/biaslstm_809/lstm_cell_809/kernel'lstm_809/lstm_cell_809/recurrent_kernellstm_809/lstm_cell_809/biastotalcountAdam/dense_269/kernel/mAdam/dense_269/bias/m$Adam/lstm_807/lstm_cell_807/kernel/m.Adam/lstm_807/lstm_cell_807/recurrent_kernel/m"Adam/lstm_807/lstm_cell_807/bias/m$Adam/lstm_808/lstm_cell_808/kernel/m.Adam/lstm_808/lstm_cell_808/recurrent_kernel/m"Adam/lstm_808/lstm_cell_808/bias/m$Adam/lstm_809/lstm_cell_809/kernel/m.Adam/lstm_809/lstm_cell_809/recurrent_kernel/m"Adam/lstm_809/lstm_cell_809/bias/mAdam/dense_269/kernel/vAdam/dense_269/bias/v$Adam/lstm_807/lstm_cell_807/kernel/v.Adam/lstm_807/lstm_cell_807/recurrent_kernel/v"Adam/lstm_807/lstm_cell_807/bias/v$Adam/lstm_808/lstm_cell_808/kernel/v.Adam/lstm_808/lstm_cell_808/recurrent_kernel/v"Adam/lstm_808/lstm_cell_808/bias/v$Adam/lstm_809/lstm_cell_809/kernel/v.Adam/lstm_809/lstm_cell_809/recurrent_kernel/v"Adam/lstm_809/lstm_cell_809/bias/v*4
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
#__inference__traced_restore_4916160░■+
║
╚
while_cond_4911529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911529___redundant_placeholder05
1while_while_cond_4911529___redundant_placeholder15
1while_while_cond_4911529___redundant_placeholder25
1while_while_cond_4911529___redundant_placeholder3
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
и

Ч
lstm_808_while_cond_4913496.
*lstm_808_while_lstm_808_while_loop_counter4
0lstm_808_while_lstm_808_while_maximum_iterations
lstm_808_while_placeholder 
lstm_808_while_placeholder_1 
lstm_808_while_placeholder_2 
lstm_808_while_placeholder_30
,lstm_808_while_less_lstm_808_strided_slice_1G
Clstm_808_while_lstm_808_while_cond_4913496___redundant_placeholder0G
Clstm_808_while_lstm_808_while_cond_4913496___redundant_placeholder1G
Clstm_808_while_lstm_808_while_cond_4913496___redundant_placeholder2G
Clstm_808_while_lstm_808_while_cond_4913496___redundant_placeholder3
lstm_808_while_identity
є
lstm_808/while/LessLesslstm_808_while_placeholder,lstm_808_while_less_lstm_808_strided_slice_1*
T0*
_output_shapes
: ]
lstm_808/while/IdentityIdentitylstm_808/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_808_while_identity lstm_808/while/Identity:output:0*(
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
─8
н
while_body_4915061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
В
ш
/__inference_lstm_cell_809_layer_call_fn_4915823

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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911471o
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
║
╚
while_cond_4913828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4913828___redundant_placeholder05
1while_while_cond_4913828___redundant_placeholder15
1while_while_cond_4913828___redundant_placeholder25
1while_while_cond_4913828___redundant_placeholder3
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4912603

inputs?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4912519*
condR
while_cond_4912518*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912273

inputs>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4912189*
condR
while_cond_4912188*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_4912519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
─8
н
while_body_4912189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Л8
┌
while_body_4914115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4910830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_807_4910854_0:	љ0
while_lstm_cell_807_4910856_0:	dљ,
while_lstm_cell_807_4910858_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_807_4910854:	љ.
while_lstm_cell_807_4910856:	dљ*
while_lstm_cell_807_4910858:	љѕб+while/lstm_cell_807/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_807/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_807_4910854_0while_lstm_cell_807_4910856_0while_lstm_cell_807_4910858_0*
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910771П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_807/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_807/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_807/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_807/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_807_4910854while_lstm_cell_807_4910854_0"<
while_lstm_cell_807_4910856while_lstm_cell_807_4910856_0"<
while_lstm_cell_807_4910858while_lstm_cell_807_4910858_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_807/StatefulPartitionedCall+while/lstm_cell_807/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_807_while_cond_4913357.
*lstm_807_while_lstm_807_while_loop_counter4
0lstm_807_while_lstm_807_while_maximum_iterations
lstm_807_while_placeholder 
lstm_807_while_placeholder_1 
lstm_807_while_placeholder_2 
lstm_807_while_placeholder_30
,lstm_807_while_less_lstm_807_strided_slice_1G
Clstm_807_while_lstm_807_while_cond_4913357___redundant_placeholder0G
Clstm_807_while_lstm_807_while_cond_4913357___redundant_placeholder1G
Clstm_807_while_lstm_807_while_cond_4913357___redundant_placeholder2G
Clstm_807_while_lstm_807_while_cond_4913357___redundant_placeholder3
lstm_807_while_identity
є
lstm_807/while/LessLesslstm_807_while_placeholder,lstm_807_while_less_lstm_807_strided_slice_1*
T0*
_output_shapes
: ]
lstm_807/while/IdentityIdentitylstm_807/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_807_while_identity lstm_807/while/Identity:output:0*(
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
Зц
ю
#__inference__traced_restore_4916160
file_prefix3
!assignvariableop_dense_269_kernel:
/
!assignvariableop_1_dense_269_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_807_lstm_cell_807_kernel:	љM
:assignvariableop_8_lstm_807_lstm_cell_807_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_807_lstm_cell_807_bias:	љD
1assignvariableop_10_lstm_808_lstm_cell_808_kernel:	d╚N
;assignvariableop_11_lstm_808_lstm_cell_808_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_808_lstm_cell_808_bias:	╚C
1assignvariableop_13_lstm_809_lstm_cell_809_kernel:2(M
;assignvariableop_14_lstm_809_lstm_cell_809_recurrent_kernel:
(=
/assignvariableop_15_lstm_809_lstm_cell_809_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_269_kernel_m:
7
)assignvariableop_19_adam_dense_269_bias_m:K
8assignvariableop_20_adam_lstm_807_lstm_cell_807_kernel_m:	љU
Bassignvariableop_21_adam_lstm_807_lstm_cell_807_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_807_lstm_cell_807_bias_m:	љK
8assignvariableop_23_adam_lstm_808_lstm_cell_808_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_808_lstm_cell_808_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_808_lstm_cell_808_bias_m:	╚J
8assignvariableop_26_adam_lstm_809_lstm_cell_809_kernel_m:2(T
Bassignvariableop_27_adam_lstm_809_lstm_cell_809_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_809_lstm_cell_809_bias_m:(=
+assignvariableop_29_adam_dense_269_kernel_v:
7
)assignvariableop_30_adam_dense_269_bias_v:K
8assignvariableop_31_adam_lstm_807_lstm_cell_807_kernel_v:	љU
Bassignvariableop_32_adam_lstm_807_lstm_cell_807_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_807_lstm_cell_807_bias_v:	љK
8assignvariableop_34_adam_lstm_808_lstm_cell_808_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_808_lstm_cell_808_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_808_lstm_cell_808_bias_v:	╚J
8assignvariableop_37_adam_lstm_809_lstm_cell_809_kernel_v:2(T
Bassignvariableop_38_adam_lstm_809_lstm_cell_809_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_809_lstm_cell_809_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_269_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_269_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_807_lstm_cell_807_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_807_lstm_cell_807_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_807_lstm_cell_807_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_808_lstm_cell_808_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_808_lstm_cell_808_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_808_lstm_cell_808_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_809_lstm_cell_809_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_809_lstm_cell_809_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_809_lstm_cell_809_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_269_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_269_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_807_lstm_cell_807_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_807_lstm_cell_807_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_807_lstm_cell_807_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_808_lstm_cell_808_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_808_lstm_cell_808_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_808_lstm_cell_808_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_809_lstm_cell_809_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_809_lstm_cell_809_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_809_lstm_cell_809_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_269_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_269_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_807_lstm_cell_807_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_807_lstm_cell_807_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_807_lstm_cell_807_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_808_lstm_cell_808_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_808_lstm_cell_808_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_808_lstm_cell_808_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_809_lstm_cell_809_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_809_lstm_cell_809_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_809_lstm_cell_809_bias_vIdentity_39:output:0"/device:CPU:0*
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
║
╚
while_cond_4911822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911822___redundant_placeholder05
1while_while_cond_4911822___redundant_placeholder15
1while_while_cond_4911822___redundant_placeholder25
1while_while_cond_4911822___redundant_placeholder3
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
аK
Ц
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914672
inputs_0?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4914588*
condR
while_cond_4914587*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
║
╚
while_cond_4912518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912518___redundant_placeholder05
1while_while_cond_4912518___redundant_placeholder15
1while_while_cond_4912518___redundant_placeholder25
1while_while_cond_4912518___redundant_placeholder3
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
и

Ч
lstm_807_while_cond_4912930.
*lstm_807_while_lstm_807_while_loop_counter4
0lstm_807_while_lstm_807_while_maximum_iterations
lstm_807_while_placeholder 
lstm_807_while_placeholder_1 
lstm_807_while_placeholder_2 
lstm_807_while_placeholder_30
,lstm_807_while_less_lstm_807_strided_slice_1G
Clstm_807_while_lstm_807_while_cond_4912930___redundant_placeholder0G
Clstm_807_while_lstm_807_while_cond_4912930___redundant_placeholder1G
Clstm_807_while_lstm_807_while_cond_4912930___redundant_placeholder2G
Clstm_807_while_lstm_807_while_cond_4912930___redundant_placeholder3
lstm_807_while_identity
є
lstm_807/while/LessLesslstm_807_while_placeholder,lstm_807_while_less_lstm_807_strided_slice_1*
T0*
_output_shapes
: ]
lstm_807/while/IdentityIdentitylstm_807/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_807_while_identity lstm_807/while/Identity:output:0*(
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
─8
н
while_body_4915204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
█
е
*sequential_269_lstm_807_while_cond_4910189L
Hsequential_269_lstm_807_while_sequential_269_lstm_807_while_loop_counterR
Nsequential_269_lstm_807_while_sequential_269_lstm_807_while_maximum_iterations-
)sequential_269_lstm_807_while_placeholder/
+sequential_269_lstm_807_while_placeholder_1/
+sequential_269_lstm_807_while_placeholder_2/
+sequential_269_lstm_807_while_placeholder_3N
Jsequential_269_lstm_807_while_less_sequential_269_lstm_807_strided_slice_1e
asequential_269_lstm_807_while_sequential_269_lstm_807_while_cond_4910189___redundant_placeholder0e
asequential_269_lstm_807_while_sequential_269_lstm_807_while_cond_4910189___redundant_placeholder1e
asequential_269_lstm_807_while_sequential_269_lstm_807_while_cond_4910189___redundant_placeholder2e
asequential_269_lstm_807_while_sequential_269_lstm_807_while_cond_4910189___redundant_placeholder3*
&sequential_269_lstm_807_while_identity
┬
"sequential_269/lstm_807/while/LessLess)sequential_269_lstm_807_while_placeholderJsequential_269_lstm_807_while_less_sequential_269_lstm_807_strided_slice_1*
T0*
_output_shapes
: {
&sequential_269/lstm_807/while/IdentityIdentity&sequential_269/lstm_807/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_269_lstm_807_while_identity/sequential_269/lstm_807/while/Identity:output:0*(
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
*__inference_lstm_807_layer_call_fn_4913737
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4910708|
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
РJ
Б
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914342

inputs?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4914258*
condR
while_cond_4914257*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4915203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4915203___redundant_placeholder05
1while_while_cond_4915203___redundant_placeholder15
1while_while_cond_4915203___redundant_placeholder25
1while_while_cond_4915203___redundant_placeholder3
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
Ј#
ы
while_body_4910639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_807_4910663_0:	љ0
while_lstm_cell_807_4910665_0:	dљ,
while_lstm_cell_807_4910667_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_807_4910663:	љ.
while_lstm_cell_807_4910665:	dљ*
while_lstm_cell_807_4910667:	љѕб+while/lstm_cell_807/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_807/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_807_4910663_0while_lstm_cell_807_4910665_0while_lstm_cell_807_4910667_0*
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910625П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_807/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_807/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_807/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_807/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_807_4910663while_lstm_cell_807_4910663_0"<
while_lstm_cell_807_4910665while_lstm_cell_807_4910665_0"<
while_lstm_cell_807_4910667while_lstm_cell_807_4910667_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_807/StatefulPartitionedCall+while/lstm_cell_807/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4910988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4910988___redundant_placeholder05
1while_while_cond_4910988___redundant_placeholder15
1while_while_cond_4910988___redundant_placeholder25
1while_while_cond_4910988___redundant_placeholder3
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
while_cond_4910638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4910638___redundant_placeholder05
1while_while_cond_4910638___redundant_placeholder15
1while_while_cond_4910638___redundant_placeholder25
1while_while_cond_4910638___redundant_placeholder3
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
Ј#
ы
while_body_4911180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_808_4911204_0:	d╚0
while_lstm_cell_808_4911206_0:	2╚,
while_lstm_cell_808_4911208_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_808_4911204:	d╚.
while_lstm_cell_808_4911206:	2╚*
while_lstm_cell_808_4911208:	╚ѕб+while/lstm_cell_808/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_808/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_808_4911204_0while_lstm_cell_808_4911206_0while_lstm_cell_808_4911208_0*
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4911121П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_808/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_808/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_808/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_808/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_808_4911204while_lstm_cell_808_4911204_0"<
while_lstm_cell_808_4911206while_lstm_cell_808_4911206_0"<
while_lstm_cell_808_4911208while_lstm_cell_808_4911208_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_808/StatefulPartitionedCall+while/lstm_cell_808/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
њK
б
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915145
inputs_0>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4915061*
condR
while_cond_4915060*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_808_layer_call_and_return_conditional_losses_4912438

inputs?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4912354*
condR
while_cond_4912353*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_4911338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911338___redundant_placeholder05
1while_while_cond_4911338___redundant_placeholder15
1while_while_cond_4911338___redundant_placeholder25
1while_while_cond_4911338___redundant_placeholder3
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915659

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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911907

inputs?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4911823*
condR
while_cond_4911822*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
В
ш
/__inference_lstm_cell_809_layer_call_fn_4915806

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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911325o
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
║
╚
while_cond_4915060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4915060___redundant_placeholder05
1while_while_cond_4915060___redundant_placeholder15
1while_while_cond_4915060___redundant_placeholder25
1while_while_cond_4915060___redundant_placeholder3
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
while_cond_4915346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4915346___redundant_placeholder05
1while_while_cond_4915346___redundant_placeholder15
1while_while_cond_4915346___redundant_placeholder25
1while_while_cond_4915346___redundant_placeholder3
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
и

Ч
lstm_809_while_cond_4913635.
*lstm_809_while_lstm_809_while_loop_counter4
0lstm_809_while_lstm_809_while_maximum_iterations
lstm_809_while_placeholder 
lstm_809_while_placeholder_1 
lstm_809_while_placeholder_2 
lstm_809_while_placeholder_30
,lstm_809_while_less_lstm_809_strided_slice_1G
Clstm_809_while_lstm_809_while_cond_4913635___redundant_placeholder0G
Clstm_809_while_lstm_809_while_cond_4913635___redundant_placeholder1G
Clstm_809_while_lstm_809_while_cond_4913635___redundant_placeholder2G
Clstm_809_while_lstm_809_while_cond_4913635___redundant_placeholder3
lstm_809_while_identity
є
lstm_809/while/LessLesslstm_809_while_placeholder,lstm_809_while_less_lstm_809_strided_slice_1*
T0*
_output_shapes
: ]
lstm_809/while/IdentityIdentitylstm_809/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_809_while_identity lstm_809/while/Identity:output:0*(
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
while_body_4913972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4914444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914444___redundant_placeholder05
1while_while_cond_4914444___redundant_placeholder15
1while_while_cond_4914444___redundant_placeholder25
1while_while_cond_4914444___redundant_placeholder3
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
»8
ј
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911058

inputs(
lstm_cell_808_4910976:	d╚(
lstm_cell_808_4910978:	2╚$
lstm_cell_808_4910980:	╚
identityѕб%lstm_cell_808/StatefulPartitionedCallбwhile;
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
%lstm_cell_808/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_808_4910976lstm_cell_808_4910978lstm_cell_808_4910980*
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4910975n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_808_4910976lstm_cell_808_4910978lstm_cell_808_4910980*
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
while_body_4910989*
condR
while_cond_4910988*K
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
NoOpNoOp&^lstm_cell_808/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_808/StatefulPartitionedCall%lstm_cell_808/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
ћC
З

lstm_809_while_body_4913209.
*lstm_809_while_lstm_809_while_loop_counter4
0lstm_809_while_lstm_809_while_maximum_iterations
lstm_809_while_placeholder 
lstm_809_while_placeholder_1 
lstm_809_while_placeholder_2 
lstm_809_while_placeholder_3-
)lstm_809_while_lstm_809_strided_slice_1_0i
elstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0:2(Q
?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(L
>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0:(
lstm_809_while_identity
lstm_809_while_identity_1
lstm_809_while_identity_2
lstm_809_while_identity_3
lstm_809_while_identity_4
lstm_809_while_identity_5+
'lstm_809_while_lstm_809_strided_slice_1g
clstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensorM
;lstm_809_while_lstm_cell_809_matmul_readvariableop_resource:2(O
=lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource:
(J
<lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpб2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpб4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpЉ
@lstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_809/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0lstm_809_while_placeholderIlstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_809/while/lstm_cell_809/MatMulMatMul9lstm_809/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_809/while/lstm_cell_809/MatMul_1MatMullstm_809_while_placeholder_2<lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_809/while/lstm_cell_809/addAddV2-lstm_809/while/lstm_cell_809/MatMul:product:0/lstm_809/while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_809/while/lstm_cell_809/BiasAddBiasAdd$lstm_809/while/lstm_cell_809/add:z:0;lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_809/while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_809/while/lstm_cell_809/splitSplit5lstm_809/while/lstm_cell_809/split/split_dim:output:0-lstm_809/while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_809/while/lstm_cell_809/SigmoidSigmoid+lstm_809/while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_809/while/lstm_cell_809/Sigmoid_1Sigmoid+lstm_809/while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_809/while/lstm_cell_809/mulMul*lstm_809/while/lstm_cell_809/Sigmoid_1:y:0lstm_809_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_809/while/lstm_cell_809/ReluRelu+lstm_809/while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_809/while/lstm_cell_809/mul_1Mul(lstm_809/while/lstm_cell_809/Sigmoid:y:0/lstm_809/while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_809/while/lstm_cell_809/add_1AddV2$lstm_809/while/lstm_cell_809/mul:z:0&lstm_809/while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_809/while/lstm_cell_809/Sigmoid_2Sigmoid+lstm_809/while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_809/while/lstm_cell_809/Relu_1Relu&lstm_809/while/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_809/while/lstm_cell_809/mul_2Mul*lstm_809/while/lstm_cell_809/Sigmoid_2:y:01lstm_809/while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_809/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_809_while_placeholder_1lstm_809_while_placeholder&lstm_809/while/lstm_cell_809/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_809/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_809/while/addAddV2lstm_809_while_placeholderlstm_809/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_809/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_809/while/add_1AddV2*lstm_809_while_lstm_809_while_loop_counterlstm_809/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_809/while/IdentityIdentitylstm_809/while/add_1:z:0^lstm_809/while/NoOp*
T0*
_output_shapes
: ј
lstm_809/while/Identity_1Identity0lstm_809_while_lstm_809_while_maximum_iterations^lstm_809/while/NoOp*
T0*
_output_shapes
: t
lstm_809/while/Identity_2Identitylstm_809/while/add:z:0^lstm_809/while/NoOp*
T0*
_output_shapes
: А
lstm_809/while/Identity_3IdentityClstm_809/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_809/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_809/while/Identity_4Identity&lstm_809/while/lstm_cell_809/mul_2:z:0^lstm_809/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_809/while/Identity_5Identity&lstm_809/while/lstm_cell_809/add_1:z:0^lstm_809/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_809/while/NoOpNoOp4^lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp3^lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp5^lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_809_while_identity lstm_809/while/Identity:output:0"?
lstm_809_while_identity_1"lstm_809/while/Identity_1:output:0"?
lstm_809_while_identity_2"lstm_809/while/Identity_2:output:0"?
lstm_809_while_identity_3"lstm_809/while/Identity_3:output:0"?
lstm_809_while_identity_4"lstm_809/while/Identity_4:output:0"?
lstm_809_while_identity_5"lstm_809/while/Identity_5:output:0"T
'lstm_809_while_lstm_809_strided_slice_1)lstm_809_while_lstm_809_strided_slice_1_0"~
<lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0"ђ
=lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0"|
;lstm_809_while_lstm_cell_809_matmul_readvariableop_resource=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0"╠
clstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensorelstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp2h
2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp2l
4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912057

inputs>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4911973*
condR
while_cond_4911972*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
аK
Ц
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914056
inputs_0?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4913972*
condR
while_cond_4913971*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914815

inputs?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4914731*
condR
while_cond_4914730*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_808_layer_call_fn_4914386

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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4912438s
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
Л8
┌
while_body_4911673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ћC
З

lstm_809_while_body_4913636.
*lstm_809_while_lstm_809_while_loop_counter4
0lstm_809_while_lstm_809_while_maximum_iterations
lstm_809_while_placeholder 
lstm_809_while_placeholder_1 
lstm_809_while_placeholder_2 
lstm_809_while_placeholder_3-
)lstm_809_while_lstm_809_strided_slice_1_0i
elstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0:2(Q
?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(L
>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0:(
lstm_809_while_identity
lstm_809_while_identity_1
lstm_809_while_identity_2
lstm_809_while_identity_3
lstm_809_while_identity_4
lstm_809_while_identity_5+
'lstm_809_while_lstm_809_strided_slice_1g
clstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensorM
;lstm_809_while_lstm_cell_809_matmul_readvariableop_resource:2(O
=lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource:
(J
<lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpб2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpб4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpЉ
@lstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_809/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0lstm_809_while_placeholderIlstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_809/while/lstm_cell_809/MatMulMatMul9lstm_809/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_809/while/lstm_cell_809/MatMul_1MatMullstm_809_while_placeholder_2<lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_809/while/lstm_cell_809/addAddV2-lstm_809/while/lstm_cell_809/MatMul:product:0/lstm_809/while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_809/while/lstm_cell_809/BiasAddBiasAdd$lstm_809/while/lstm_cell_809/add:z:0;lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_809/while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_809/while/lstm_cell_809/splitSplit5lstm_809/while/lstm_cell_809/split/split_dim:output:0-lstm_809/while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_809/while/lstm_cell_809/SigmoidSigmoid+lstm_809/while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_809/while/lstm_cell_809/Sigmoid_1Sigmoid+lstm_809/while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_809/while/lstm_cell_809/mulMul*lstm_809/while/lstm_cell_809/Sigmoid_1:y:0lstm_809_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_809/while/lstm_cell_809/ReluRelu+lstm_809/while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_809/while/lstm_cell_809/mul_1Mul(lstm_809/while/lstm_cell_809/Sigmoid:y:0/lstm_809/while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_809/while/lstm_cell_809/add_1AddV2$lstm_809/while/lstm_cell_809/mul:z:0&lstm_809/while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_809/while/lstm_cell_809/Sigmoid_2Sigmoid+lstm_809/while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_809/while/lstm_cell_809/Relu_1Relu&lstm_809/while/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_809/while/lstm_cell_809/mul_2Mul*lstm_809/while/lstm_cell_809/Sigmoid_2:y:01lstm_809/while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_809/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_809_while_placeholder_1lstm_809_while_placeholder&lstm_809/while/lstm_cell_809/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_809/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_809/while/addAddV2lstm_809_while_placeholderlstm_809/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_809/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_809/while/add_1AddV2*lstm_809_while_lstm_809_while_loop_counterlstm_809/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_809/while/IdentityIdentitylstm_809/while/add_1:z:0^lstm_809/while/NoOp*
T0*
_output_shapes
: ј
lstm_809/while/Identity_1Identity0lstm_809_while_lstm_809_while_maximum_iterations^lstm_809/while/NoOp*
T0*
_output_shapes
: t
lstm_809/while/Identity_2Identitylstm_809/while/add:z:0^lstm_809/while/NoOp*
T0*
_output_shapes
: А
lstm_809/while/Identity_3IdentityClstm_809/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_809/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_809/while/Identity_4Identity&lstm_809/while/lstm_cell_809/mul_2:z:0^lstm_809/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_809/while/Identity_5Identity&lstm_809/while/lstm_cell_809/add_1:z:0^lstm_809/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_809/while/NoOpNoOp4^lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp3^lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp5^lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_809_while_identity lstm_809/while/Identity:output:0"?
lstm_809_while_identity_1"lstm_809/while/Identity_1:output:0"?
lstm_809_while_identity_2"lstm_809/while/Identity_2:output:0"?
lstm_809_while_identity_3"lstm_809/while/Identity_3:output:0"?
lstm_809_while_identity_4"lstm_809/while/Identity_4:output:0"?
lstm_809_while_identity_5"lstm_809/while/Identity_5:output:0"T
'lstm_809_while_lstm_809_strided_slice_1)lstm_809_while_lstm_809_strided_slice_1_0"~
<lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource>lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0"ђ
=lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource?lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0"|
;lstm_809_while_lstm_cell_809_matmul_readvariableop_resource=lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0"╠
clstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensorelstm_809_while_tensorarrayv2read_tensorlistgetitem_lstm_809_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp3lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp2h
2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp2lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp2l
4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp4lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912082

inputs#
lstm_807_4911758:	љ#
lstm_807_4911760:	dљ
lstm_807_4911762:	љ#
lstm_808_4911908:	d╚#
lstm_808_4911910:	2╚
lstm_808_4911912:	╚"
lstm_809_4912058:2("
lstm_809_4912060:
(
lstm_809_4912062:(#
dense_269_4912076:

dense_269_4912078:
identityѕб!dense_269/StatefulPartitionedCallб lstm_807/StatefulPartitionedCallб lstm_808/StatefulPartitionedCallб lstm_809/StatefulPartitionedCallІ
 lstm_807/StatefulPartitionedCallStatefulPartitionedCallinputslstm_807_4911758lstm_807_4911760lstm_807_4911762*
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4911757«
 lstm_808/StatefulPartitionedCallStatefulPartitionedCall)lstm_807/StatefulPartitionedCall:output:0lstm_808_4911908lstm_808_4911910lstm_808_4911912*
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911907ф
 lstm_809/StatefulPartitionedCallStatefulPartitionedCall)lstm_808/StatefulPartitionedCall:output:0lstm_809_4912058lstm_809_4912060lstm_809_4912062*
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912057џ
!dense_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_809/StatefulPartitionedCall:output:0dense_269_4912076dense_269_4912078*
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
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075y
IdentityIdentity*dense_269/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_269/StatefulPartitionedCall!^lstm_807/StatefulPartitionedCall!^lstm_808/StatefulPartitionedCall!^lstm_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_269/StatefulPartitionedCall!dense_269/StatefulPartitionedCall2D
 lstm_807/StatefulPartitionedCall lstm_807/StatefulPartitionedCall2D
 lstm_808/StatefulPartitionedCall lstm_808/StatefulPartitionedCall2D
 lstm_809/StatefulPartitionedCall lstm_809/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4911121

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
▀
ѕ
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915691

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
к
ў
+__inference_dense_269_layer_call_fn_4915583

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
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075o
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
Э
┤
*__inference_lstm_809_layer_call_fn_4914991

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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912057o
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
▀
ѕ
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915789

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
м
ч
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912671

inputs#
lstm_807_4912644:	љ#
lstm_807_4912646:	dљ
lstm_807_4912648:	љ#
lstm_808_4912651:	d╚#
lstm_808_4912653:	2╚
lstm_808_4912655:	╚"
lstm_809_4912658:2("
lstm_809_4912660:
(
lstm_809_4912662:(#
dense_269_4912665:

dense_269_4912667:
identityѕб!dense_269/StatefulPartitionedCallб lstm_807/StatefulPartitionedCallб lstm_808/StatefulPartitionedCallб lstm_809/StatefulPartitionedCallІ
 lstm_807/StatefulPartitionedCallStatefulPartitionedCallinputslstm_807_4912644lstm_807_4912646lstm_807_4912648*
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4912603«
 lstm_808/StatefulPartitionedCallStatefulPartitionedCall)lstm_807/StatefulPartitionedCall:output:0lstm_808_4912651lstm_808_4912653lstm_808_4912655*
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4912438ф
 lstm_809/StatefulPartitionedCallStatefulPartitionedCall)lstm_808/StatefulPartitionedCall:output:0lstm_809_4912658lstm_809_4912660lstm_809_4912662*
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912273џ
!dense_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_809/StatefulPartitionedCall:output:0dense_269_4912665dense_269_4912667*
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
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075y
IdentityIdentity*dense_269/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_269/StatefulPartitionedCall!^lstm_807/StatefulPartitionedCall!^lstm_808/StatefulPartitionedCall!^lstm_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_269/StatefulPartitionedCall!dense_269/StatefulPartitionedCall2D
 lstm_807/StatefulPartitionedCall lstm_807/StatefulPartitionedCall2D
 lstm_808/StatefulPartitionedCall lstm_808/StatefulPartitionedCall2D
 lstm_809/StatefulPartitionedCall lstm_809/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915855

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
љ
Х
*__inference_lstm_809_layer_call_fn_4914969
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4911408o
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
АC
Щ

lstm_807_while_body_4913358.
*lstm_807_while_lstm_807_while_loop_counter4
0lstm_807_while_lstm_807_while_maximum_iterations
lstm_807_while_placeholder 
lstm_807_while_placeholder_1 
lstm_807_while_placeholder_2 
lstm_807_while_placeholder_3-
)lstm_807_while_lstm_807_strided_slice_1_0i
elstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0:	љR
?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљM
>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
lstm_807_while_identity
lstm_807_while_identity_1
lstm_807_while_identity_2
lstm_807_while_identity_3
lstm_807_while_identity_4
lstm_807_while_identity_5+
'lstm_807_while_lstm_807_strided_slice_1g
clstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensorN
;lstm_807_while_lstm_cell_807_matmul_readvariableop_resource:	љP
=lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource:	dљK
<lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpб2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpб4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpЉ
@lstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_807/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0lstm_807_while_placeholderIlstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_807/while/lstm_cell_807/MatMulMatMul9lstm_807/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_807/while/lstm_cell_807/MatMul_1MatMullstm_807_while_placeholder_2<lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_807/while/lstm_cell_807/addAddV2-lstm_807/while/lstm_cell_807/MatMul:product:0/lstm_807/while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_807/while/lstm_cell_807/BiasAddBiasAdd$lstm_807/while/lstm_cell_807/add:z:0;lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_807/while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_807/while/lstm_cell_807/splitSplit5lstm_807/while/lstm_cell_807/split/split_dim:output:0-lstm_807/while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_807/while/lstm_cell_807/SigmoidSigmoid+lstm_807/while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_807/while/lstm_cell_807/Sigmoid_1Sigmoid+lstm_807/while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_807/while/lstm_cell_807/mulMul*lstm_807/while/lstm_cell_807/Sigmoid_1:y:0lstm_807_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_807/while/lstm_cell_807/ReluRelu+lstm_807/while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_807/while/lstm_cell_807/mul_1Mul(lstm_807/while/lstm_cell_807/Sigmoid:y:0/lstm_807/while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_807/while/lstm_cell_807/add_1AddV2$lstm_807/while/lstm_cell_807/mul:z:0&lstm_807/while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_807/while/lstm_cell_807/Sigmoid_2Sigmoid+lstm_807/while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_807/while/lstm_cell_807/Relu_1Relu&lstm_807/while/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_807/while/lstm_cell_807/mul_2Mul*lstm_807/while/lstm_cell_807/Sigmoid_2:y:01lstm_807/while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_807/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_807_while_placeholder_1lstm_807_while_placeholder&lstm_807/while/lstm_cell_807/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_807/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_807/while/addAddV2lstm_807_while_placeholderlstm_807/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_807/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_807/while/add_1AddV2*lstm_807_while_lstm_807_while_loop_counterlstm_807/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_807/while/IdentityIdentitylstm_807/while/add_1:z:0^lstm_807/while/NoOp*
T0*
_output_shapes
: ј
lstm_807/while/Identity_1Identity0lstm_807_while_lstm_807_while_maximum_iterations^lstm_807/while/NoOp*
T0*
_output_shapes
: t
lstm_807/while/Identity_2Identitylstm_807/while/add:z:0^lstm_807/while/NoOp*
T0*
_output_shapes
: А
lstm_807/while/Identity_3IdentityClstm_807/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_807/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_807/while/Identity_4Identity&lstm_807/while/lstm_cell_807/mul_2:z:0^lstm_807/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_807/while/Identity_5Identity&lstm_807/while/lstm_cell_807/add_1:z:0^lstm_807/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_807/while/NoOpNoOp4^lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp3^lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp5^lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_807_while_identity lstm_807/while/Identity:output:0"?
lstm_807_while_identity_1"lstm_807/while/Identity_1:output:0"?
lstm_807_while_identity_2"lstm_807/while/Identity_2:output:0"?
lstm_807_while_identity_3"lstm_807/while/Identity_3:output:0"?
lstm_807_while_identity_4"lstm_807/while/Identity_4:output:0"?
lstm_807_while_identity_5"lstm_807/while/Identity_5:output:0"T
'lstm_807_while_lstm_807_strided_slice_1)lstm_807_while_lstm_807_strided_slice_1_0"~
<lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0"ђ
=lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0"|
;lstm_807_while_lstm_cell_807_matmul_readvariableop_resource=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0"╠
clstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensorelstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp2h
2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp2l
4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913726

inputsH
5lstm_807_lstm_cell_807_matmul_readvariableop_resource:	љJ
7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource:	dљE
6lstm_807_lstm_cell_807_biasadd_readvariableop_resource:	љH
5lstm_808_lstm_cell_808_matmul_readvariableop_resource:	d╚J
7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource:	2╚E
6lstm_808_lstm_cell_808_biasadd_readvariableop_resource:	╚G
5lstm_809_lstm_cell_809_matmul_readvariableop_resource:2(I
7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource:
(D
6lstm_809_lstm_cell_809_biasadd_readvariableop_resource:(:
(dense_269_matmul_readvariableop_resource:
7
)dense_269_biasadd_readvariableop_resource:
identityѕб dense_269/BiasAdd/ReadVariableOpбdense_269/MatMul/ReadVariableOpб-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpб,lstm_807/lstm_cell_807/MatMul/ReadVariableOpб.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpбlstm_807/whileб-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpб,lstm_808/lstm_cell_808/MatMul/ReadVariableOpб.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpбlstm_808/whileб-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpб,lstm_809/lstm_cell_809/MatMul/ReadVariableOpб.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpбlstm_809/whileD
lstm_807/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_807/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_807/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_807/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_807/strided_sliceStridedSlicelstm_807/Shape:output:0%lstm_807/strided_slice/stack:output:0'lstm_807/strided_slice/stack_1:output:0'lstm_807/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_807/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_807/zeros/packedPacklstm_807/strided_slice:output:0 lstm_807/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_807/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_807/zerosFilllstm_807/zeros/packed:output:0lstm_807/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_807/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_807/zeros_1/packedPacklstm_807/strided_slice:output:0"lstm_807/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_807/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_807/zeros_1Fill lstm_807/zeros_1/packed:output:0lstm_807/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_807/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_807/transpose	Transposeinputs lstm_807/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_807/Shape_1Shapelstm_807/transpose:y:0*
T0*
_output_shapes
:h
lstm_807/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_807/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_807/strided_slice_1StridedSlicelstm_807/Shape_1:output:0'lstm_807/strided_slice_1/stack:output:0)lstm_807/strided_slice_1/stack_1:output:0)lstm_807/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_807/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_807/TensorArrayV2TensorListReserve-lstm_807/TensorArrayV2/element_shape:output:0!lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_807/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_807/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_807/transpose:y:0Glstm_807/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_807/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_807/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_807/strided_slice_2StridedSlicelstm_807/transpose:y:0'lstm_807/strided_slice_2/stack:output:0)lstm_807/strided_slice_2/stack_1:output:0)lstm_807/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_807/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp5lstm_807_lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_807/lstm_cell_807/MatMulMatMul!lstm_807/strided_slice_2:output:04lstm_807/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_807/lstm_cell_807/MatMul_1MatMullstm_807/zeros:output:06lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_807/lstm_cell_807/addAddV2'lstm_807/lstm_cell_807/MatMul:product:0)lstm_807/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp6lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_807/lstm_cell_807/BiasAddBiasAddlstm_807/lstm_cell_807/add:z:05lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_807/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_807/lstm_cell_807/splitSplit/lstm_807/lstm_cell_807/split/split_dim:output:0'lstm_807/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_807/lstm_cell_807/SigmoidSigmoid%lstm_807/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_807/lstm_cell_807/Sigmoid_1Sigmoid%lstm_807/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_807/lstm_cell_807/mulMul$lstm_807/lstm_cell_807/Sigmoid_1:y:0lstm_807/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_807/lstm_cell_807/ReluRelu%lstm_807/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dц
lstm_807/lstm_cell_807/mul_1Mul"lstm_807/lstm_cell_807/Sigmoid:y:0)lstm_807/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_807/lstm_cell_807/add_1AddV2lstm_807/lstm_cell_807/mul:z:0 lstm_807/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_807/lstm_cell_807/Sigmoid_2Sigmoid%lstm_807/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dy
lstm_807/lstm_cell_807/Relu_1Relu lstm_807/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_807/lstm_cell_807/mul_2Mul$lstm_807/lstm_cell_807/Sigmoid_2:y:0+lstm_807/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_807/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_807/TensorArrayV2_1TensorListReserve/lstm_807/TensorArrayV2_1/element_shape:output:0!lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_807/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_807/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_807/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_807/whileWhile$lstm_807/while/loop_counter:output:0*lstm_807/while/maximum_iterations:output:0lstm_807/time:output:0!lstm_807/TensorArrayV2_1:handle:0lstm_807/zeros:output:0lstm_807/zeros_1:output:0!lstm_807/strided_slice_1:output:0@lstm_807/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_807_lstm_cell_807_matmul_readvariableop_resource7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource6lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
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
lstm_807_while_body_4913358*'
condR
lstm_807_while_cond_4913357*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_807/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_807/TensorArrayV2Stack/TensorListStackTensorListStacklstm_807/while:output:3Blstm_807/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_807/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_807/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_807/strided_slice_3StridedSlice4lstm_807/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_807/strided_slice_3/stack:output:0)lstm_807/strided_slice_3/stack_1:output:0)lstm_807/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_807/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_807/transpose_1	Transpose4lstm_807/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_807/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_807/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_808/ShapeShapelstm_807/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_808/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_808/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_808/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_808/strided_sliceStridedSlicelstm_808/Shape:output:0%lstm_808/strided_slice/stack:output:0'lstm_808/strided_slice/stack_1:output:0'lstm_808/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_808/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_808/zeros/packedPacklstm_808/strided_slice:output:0 lstm_808/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_808/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_808/zerosFilllstm_808/zeros/packed:output:0lstm_808/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_808/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_808/zeros_1/packedPacklstm_808/strided_slice:output:0"lstm_808/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_808/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_808/zeros_1Fill lstm_808/zeros_1/packed:output:0lstm_808/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_808/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_808/transpose	Transposelstm_807/transpose_1:y:0 lstm_808/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_808/Shape_1Shapelstm_808/transpose:y:0*
T0*
_output_shapes
:h
lstm_808/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_808/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_808/strided_slice_1StridedSlicelstm_808/Shape_1:output:0'lstm_808/strided_slice_1/stack:output:0)lstm_808/strided_slice_1/stack_1:output:0)lstm_808/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_808/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_808/TensorArrayV2TensorListReserve-lstm_808/TensorArrayV2/element_shape:output:0!lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_808/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_808/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_808/transpose:y:0Glstm_808/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_808/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_808/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_808/strided_slice_2StridedSlicelstm_808/transpose:y:0'lstm_808/strided_slice_2/stack:output:0)lstm_808/strided_slice_2/stack_1:output:0)lstm_808/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_808/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp5lstm_808_lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_808/lstm_cell_808/MatMulMatMul!lstm_808/strided_slice_2:output:04lstm_808/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_808/lstm_cell_808/MatMul_1MatMullstm_808/zeros:output:06lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_808/lstm_cell_808/addAddV2'lstm_808/lstm_cell_808/MatMul:product:0)lstm_808/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp6lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_808/lstm_cell_808/BiasAddBiasAddlstm_808/lstm_cell_808/add:z:05lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_808/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_808/lstm_cell_808/splitSplit/lstm_808/lstm_cell_808/split/split_dim:output:0'lstm_808/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_808/lstm_cell_808/SigmoidSigmoid%lstm_808/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_808/lstm_cell_808/Sigmoid_1Sigmoid%lstm_808/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_808/lstm_cell_808/mulMul$lstm_808/lstm_cell_808/Sigmoid_1:y:0lstm_808/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_808/lstm_cell_808/ReluRelu%lstm_808/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_808/lstm_cell_808/mul_1Mul"lstm_808/lstm_cell_808/Sigmoid:y:0)lstm_808/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_808/lstm_cell_808/add_1AddV2lstm_808/lstm_cell_808/mul:z:0 lstm_808/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_808/lstm_cell_808/Sigmoid_2Sigmoid%lstm_808/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2y
lstm_808/lstm_cell_808/Relu_1Relu lstm_808/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_808/lstm_cell_808/mul_2Mul$lstm_808/lstm_cell_808/Sigmoid_2:y:0+lstm_808/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_808/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_808/TensorArrayV2_1TensorListReserve/lstm_808/TensorArrayV2_1/element_shape:output:0!lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_808/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_808/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_808/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_808/whileWhile$lstm_808/while/loop_counter:output:0*lstm_808/while/maximum_iterations:output:0lstm_808/time:output:0!lstm_808/TensorArrayV2_1:handle:0lstm_808/zeros:output:0lstm_808/zeros_1:output:0!lstm_808/strided_slice_1:output:0@lstm_808/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_808_lstm_cell_808_matmul_readvariableop_resource7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource6lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
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
lstm_808_while_body_4913497*'
condR
lstm_808_while_cond_4913496*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_808/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_808/TensorArrayV2Stack/TensorListStackTensorListStacklstm_808/while:output:3Blstm_808/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_808/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_808/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_808/strided_slice_3StridedSlice4lstm_808/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_808/strided_slice_3/stack:output:0)lstm_808/strided_slice_3/stack_1:output:0)lstm_808/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_808/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_808/transpose_1	Transpose4lstm_808/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_808/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_808/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_809/ShapeShapelstm_808/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_809/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_809/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_809/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_809/strided_sliceStridedSlicelstm_809/Shape:output:0%lstm_809/strided_slice/stack:output:0'lstm_809/strided_slice/stack_1:output:0'lstm_809/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_809/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_809/zeros/packedPacklstm_809/strided_slice:output:0 lstm_809/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_809/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_809/zerosFilllstm_809/zeros/packed:output:0lstm_809/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_809/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_809/zeros_1/packedPacklstm_809/strided_slice:output:0"lstm_809/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_809/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_809/zeros_1Fill lstm_809/zeros_1/packed:output:0lstm_809/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_809/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_809/transpose	Transposelstm_808/transpose_1:y:0 lstm_809/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_809/Shape_1Shapelstm_809/transpose:y:0*
T0*
_output_shapes
:h
lstm_809/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_809/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_809/strided_slice_1StridedSlicelstm_809/Shape_1:output:0'lstm_809/strided_slice_1/stack:output:0)lstm_809/strided_slice_1/stack_1:output:0)lstm_809/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_809/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_809/TensorArrayV2TensorListReserve-lstm_809/TensorArrayV2/element_shape:output:0!lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_809/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_809/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_809/transpose:y:0Glstm_809/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_809/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_809/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_809/strided_slice_2StridedSlicelstm_809/transpose:y:0'lstm_809/strided_slice_2/stack:output:0)lstm_809/strided_slice_2/stack_1:output:0)lstm_809/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_809/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp5lstm_809_lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_809/lstm_cell_809/MatMulMatMul!lstm_809/strided_slice_2:output:04lstm_809/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_809/lstm_cell_809/MatMul_1MatMullstm_809/zeros:output:06lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_809/lstm_cell_809/addAddV2'lstm_809/lstm_cell_809/MatMul:product:0)lstm_809/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp6lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_809/lstm_cell_809/BiasAddBiasAddlstm_809/lstm_cell_809/add:z:05lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_809/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_809/lstm_cell_809/splitSplit/lstm_809/lstm_cell_809/split/split_dim:output:0'lstm_809/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_809/lstm_cell_809/SigmoidSigmoid%lstm_809/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_809/lstm_cell_809/Sigmoid_1Sigmoid%lstm_809/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_809/lstm_cell_809/mulMul$lstm_809/lstm_cell_809/Sigmoid_1:y:0lstm_809/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_809/lstm_cell_809/ReluRelu%lstm_809/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_809/lstm_cell_809/mul_1Mul"lstm_809/lstm_cell_809/Sigmoid:y:0)lstm_809/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_809/lstm_cell_809/add_1AddV2lstm_809/lstm_cell_809/mul:z:0 lstm_809/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_809/lstm_cell_809/Sigmoid_2Sigmoid%lstm_809/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
y
lstm_809/lstm_cell_809/Relu_1Relu lstm_809/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_809/lstm_cell_809/mul_2Mul$lstm_809/lstm_cell_809/Sigmoid_2:y:0+lstm_809/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_809/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_809/TensorArrayV2_1TensorListReserve/lstm_809/TensorArrayV2_1/element_shape:output:0!lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_809/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_809/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_809/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_809/whileWhile$lstm_809/while/loop_counter:output:0*lstm_809/while/maximum_iterations:output:0lstm_809/time:output:0!lstm_809/TensorArrayV2_1:handle:0lstm_809/zeros:output:0lstm_809/zeros_1:output:0!lstm_809/strided_slice_1:output:0@lstm_809/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_809_lstm_cell_809_matmul_readvariableop_resource7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource6lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
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
lstm_809_while_body_4913636*'
condR
lstm_809_while_cond_4913635*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_809/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_809/TensorArrayV2Stack/TensorListStackTensorListStacklstm_809/while:output:3Blstm_809/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_809/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_809/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_809/strided_slice_3StridedSlice4lstm_809/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_809/strided_slice_3/stack:output:0)lstm_809/strided_slice_3/stack_1:output:0)lstm_809/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_809/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_809/transpose_1	Transpose4lstm_809/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_809/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_809/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_269/MatMul/ReadVariableOpReadVariableOp(dense_269_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_269/MatMulMatMul!lstm_809/strided_slice_3:output:0'dense_269/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_269/BiasAdd/ReadVariableOpReadVariableOp)dense_269_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_269/BiasAddBiasAdddense_269/MatMul:product:0(dense_269/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_269/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_269/BiasAdd/ReadVariableOp ^dense_269/MatMul/ReadVariableOp.^lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp-^lstm_807/lstm_cell_807/MatMul/ReadVariableOp/^lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp^lstm_807/while.^lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp-^lstm_808/lstm_cell_808/MatMul/ReadVariableOp/^lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp^lstm_808/while.^lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp-^lstm_809/lstm_cell_809/MatMul/ReadVariableOp/^lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp^lstm_809/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_269/BiasAdd/ReadVariableOp dense_269/BiasAdd/ReadVariableOp2B
dense_269/MatMul/ReadVariableOpdense_269/MatMul/ReadVariableOp2^
-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp2\
,lstm_807/lstm_cell_807/MatMul/ReadVariableOp,lstm_807/lstm_cell_807/MatMul/ReadVariableOp2`
.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp2 
lstm_807/whilelstm_807/while2^
-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp2\
,lstm_808/lstm_cell_808/MatMul/ReadVariableOp,lstm_808/lstm_cell_808/MatMul/ReadVariableOp2`
.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp2 
lstm_808/whilelstm_808/while2^
-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp2\
,lstm_809/lstm_cell_809/MatMul/ReadVariableOp,lstm_809/lstm_cell_809/MatMul/ReadVariableOp2`
.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp2 
lstm_809/whilelstm_809/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4914587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914587___redundant_placeholder05
1while_while_cond_4914587___redundant_placeholder15
1while_while_cond_4914587___redundant_placeholder25
1while_while_cond_4914587___redundant_placeholder3
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
Л8
┌
while_body_4911823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
и

Ч
lstm_809_while_cond_4913208.
*lstm_809_while_lstm_809_while_loop_counter4
0lstm_809_while_lstm_809_while_maximum_iterations
lstm_809_while_placeholder 
lstm_809_while_placeholder_1 
lstm_809_while_placeholder_2 
lstm_809_while_placeholder_30
,lstm_809_while_less_lstm_809_strided_slice_1G
Clstm_809_while_lstm_809_while_cond_4913208___redundant_placeholder0G
Clstm_809_while_lstm_809_while_cond_4913208___redundant_placeholder1G
Clstm_809_while_lstm_809_while_cond_4913208___redundant_placeholder2G
Clstm_809_while_lstm_809_while_cond_4913208___redundant_placeholder3
lstm_809_while_identity
є
lstm_809/while/LessLesslstm_809_while_placeholder,lstm_809_while_less_lstm_809_strided_slice_1*
T0*
_output_shapes
: ]
lstm_809/while/IdentityIdentitylstm_809/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_809_while_identity lstm_809/while/Identity:output:0*(
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
█
е
*sequential_269_lstm_809_while_cond_4910467L
Hsequential_269_lstm_809_while_sequential_269_lstm_809_while_loop_counterR
Nsequential_269_lstm_809_while_sequential_269_lstm_809_while_maximum_iterations-
)sequential_269_lstm_809_while_placeholder/
+sequential_269_lstm_809_while_placeholder_1/
+sequential_269_lstm_809_while_placeholder_2/
+sequential_269_lstm_809_while_placeholder_3N
Jsequential_269_lstm_809_while_less_sequential_269_lstm_809_strided_slice_1e
asequential_269_lstm_809_while_sequential_269_lstm_809_while_cond_4910467___redundant_placeholder0e
asequential_269_lstm_809_while_sequential_269_lstm_809_while_cond_4910467___redundant_placeholder1e
asequential_269_lstm_809_while_sequential_269_lstm_809_while_cond_4910467___redundant_placeholder2e
asequential_269_lstm_809_while_sequential_269_lstm_809_while_cond_4910467___redundant_placeholder3*
&sequential_269_lstm_809_while_identity
┬
"sequential_269/lstm_809/while/LessLess)sequential_269_lstm_809_while_placeholderJsequential_269_lstm_809_while_less_sequential_269_lstm_809_strided_slice_1*
T0*
_output_shapes
: {
&sequential_269/lstm_809/while/IdentityIdentity&sequential_269/lstm_809/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_269_lstm_809_while_identity/sequential_269/lstm_809/while/Identity:output:0*(
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

lstm_808_while_body_4913070.
*lstm_808_while_lstm_808_while_loop_counter4
0lstm_808_while_lstm_808_while_maximum_iterations
lstm_808_while_placeholder 
lstm_808_while_placeholder_1 
lstm_808_while_placeholder_2 
lstm_808_while_placeholder_3-
)lstm_808_while_lstm_808_strided_slice_1_0i
elstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚R
?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚M
>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
lstm_808_while_identity
lstm_808_while_identity_1
lstm_808_while_identity_2
lstm_808_while_identity_3
lstm_808_while_identity_4
lstm_808_while_identity_5+
'lstm_808_while_lstm_808_strided_slice_1g
clstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensorN
;lstm_808_while_lstm_cell_808_matmul_readvariableop_resource:	d╚P
=lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚K
<lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpб2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpб4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpЉ
@lstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_808/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0lstm_808_while_placeholderIlstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_808/while/lstm_cell_808/MatMulMatMul9lstm_808/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_808/while/lstm_cell_808/MatMul_1MatMullstm_808_while_placeholder_2<lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_808/while/lstm_cell_808/addAddV2-lstm_808/while/lstm_cell_808/MatMul:product:0/lstm_808/while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_808/while/lstm_cell_808/BiasAddBiasAdd$lstm_808/while/lstm_cell_808/add:z:0;lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_808/while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_808/while/lstm_cell_808/splitSplit5lstm_808/while/lstm_cell_808/split/split_dim:output:0-lstm_808/while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_808/while/lstm_cell_808/SigmoidSigmoid+lstm_808/while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_808/while/lstm_cell_808/Sigmoid_1Sigmoid+lstm_808/while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_808/while/lstm_cell_808/mulMul*lstm_808/while/lstm_cell_808/Sigmoid_1:y:0lstm_808_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_808/while/lstm_cell_808/ReluRelu+lstm_808/while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_808/while/lstm_cell_808/mul_1Mul(lstm_808/while/lstm_cell_808/Sigmoid:y:0/lstm_808/while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_808/while/lstm_cell_808/add_1AddV2$lstm_808/while/lstm_cell_808/mul:z:0&lstm_808/while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_808/while/lstm_cell_808/Sigmoid_2Sigmoid+lstm_808/while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_808/while/lstm_cell_808/Relu_1Relu&lstm_808/while/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_808/while/lstm_cell_808/mul_2Mul*lstm_808/while/lstm_cell_808/Sigmoid_2:y:01lstm_808/while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_808/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_808_while_placeholder_1lstm_808_while_placeholder&lstm_808/while/lstm_cell_808/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_808/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_808/while/addAddV2lstm_808_while_placeholderlstm_808/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_808/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_808/while/add_1AddV2*lstm_808_while_lstm_808_while_loop_counterlstm_808/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_808/while/IdentityIdentitylstm_808/while/add_1:z:0^lstm_808/while/NoOp*
T0*
_output_shapes
: ј
lstm_808/while/Identity_1Identity0lstm_808_while_lstm_808_while_maximum_iterations^lstm_808/while/NoOp*
T0*
_output_shapes
: t
lstm_808/while/Identity_2Identitylstm_808/while/add:z:0^lstm_808/while/NoOp*
T0*
_output_shapes
: А
lstm_808/while/Identity_3IdentityClstm_808/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_808/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_808/while/Identity_4Identity&lstm_808/while/lstm_cell_808/mul_2:z:0^lstm_808/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_808/while/Identity_5Identity&lstm_808/while/lstm_cell_808/add_1:z:0^lstm_808/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_808/while/NoOpNoOp4^lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp3^lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp5^lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_808_while_identity lstm_808/while/Identity:output:0"?
lstm_808_while_identity_1"lstm_808/while/Identity_1:output:0"?
lstm_808_while_identity_2"lstm_808/while/Identity_2:output:0"?
lstm_808_while_identity_3"lstm_808/while/Identity_3:output:0"?
lstm_808_while_identity_4"lstm_808/while/Identity_4:output:0"?
lstm_808_while_identity_5"lstm_808/while/Identity_5:output:0"T
'lstm_808_while_lstm_808_strided_slice_1)lstm_808_while_lstm_808_strided_slice_1_0"~
<lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0"ђ
=lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0"|
;lstm_808_while_lstm_cell_808_matmul_readvariableop_resource=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0"╠
clstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensorelstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp2h
2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp2l
4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ш

ц
0__inference_sequential_269_layer_call_fn_4912723
lstm_807_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_807_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912671o
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
_user_specified_namelstm_807_input
║
╚
while_cond_4914873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914873___redundant_placeholder05
1while_while_cond_4914873___redundant_placeholder15
1while_while_cond_4914873___redundant_placeholder25
1while_while_cond_4914873___redundant_placeholder3
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
ЬW
Ц
 __inference__traced_save_4916030
file_prefix/
+savev2_dense_269_kernel_read_readvariableop-
)savev2_dense_269_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_807_lstm_cell_807_kernel_read_readvariableopF
Bsavev2_lstm_807_lstm_cell_807_recurrent_kernel_read_readvariableop:
6savev2_lstm_807_lstm_cell_807_bias_read_readvariableop<
8savev2_lstm_808_lstm_cell_808_kernel_read_readvariableopF
Bsavev2_lstm_808_lstm_cell_808_recurrent_kernel_read_readvariableop:
6savev2_lstm_808_lstm_cell_808_bias_read_readvariableop<
8savev2_lstm_809_lstm_cell_809_kernel_read_readvariableopF
Bsavev2_lstm_809_lstm_cell_809_recurrent_kernel_read_readvariableop:
6savev2_lstm_809_lstm_cell_809_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_269_kernel_m_read_readvariableop4
0savev2_adam_dense_269_bias_m_read_readvariableopC
?savev2_adam_lstm_807_lstm_cell_807_kernel_m_read_readvariableopM
Isavev2_adam_lstm_807_lstm_cell_807_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_807_lstm_cell_807_bias_m_read_readvariableopC
?savev2_adam_lstm_808_lstm_cell_808_kernel_m_read_readvariableopM
Isavev2_adam_lstm_808_lstm_cell_808_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_808_lstm_cell_808_bias_m_read_readvariableopC
?savev2_adam_lstm_809_lstm_cell_809_kernel_m_read_readvariableopM
Isavev2_adam_lstm_809_lstm_cell_809_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_809_lstm_cell_809_bias_m_read_readvariableop6
2savev2_adam_dense_269_kernel_v_read_readvariableop4
0savev2_adam_dense_269_bias_v_read_readvariableopC
?savev2_adam_lstm_807_lstm_cell_807_kernel_v_read_readvariableopM
Isavev2_adam_lstm_807_lstm_cell_807_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_807_lstm_cell_807_bias_v_read_readvariableopC
?savev2_adam_lstm_808_lstm_cell_808_kernel_v_read_readvariableopM
Isavev2_adam_lstm_808_lstm_cell_808_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_808_lstm_cell_808_bias_v_read_readvariableopC
?savev2_adam_lstm_809_lstm_cell_809_kernel_v_read_readvariableopM
Isavev2_adam_lstm_809_lstm_cell_809_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_809_lstm_cell_809_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_269_kernel_read_readvariableop)savev2_dense_269_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_807_lstm_cell_807_kernel_read_readvariableopBsavev2_lstm_807_lstm_cell_807_recurrent_kernel_read_readvariableop6savev2_lstm_807_lstm_cell_807_bias_read_readvariableop8savev2_lstm_808_lstm_cell_808_kernel_read_readvariableopBsavev2_lstm_808_lstm_cell_808_recurrent_kernel_read_readvariableop6savev2_lstm_808_lstm_cell_808_bias_read_readvariableop8savev2_lstm_809_lstm_cell_809_kernel_read_readvariableopBsavev2_lstm_809_lstm_cell_809_recurrent_kernel_read_readvariableop6savev2_lstm_809_lstm_cell_809_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_269_kernel_m_read_readvariableop0savev2_adam_dense_269_bias_m_read_readvariableop?savev2_adam_lstm_807_lstm_cell_807_kernel_m_read_readvariableopIsavev2_adam_lstm_807_lstm_cell_807_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_807_lstm_cell_807_bias_m_read_readvariableop?savev2_adam_lstm_808_lstm_cell_808_kernel_m_read_readvariableopIsavev2_adam_lstm_808_lstm_cell_808_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_808_lstm_cell_808_bias_m_read_readvariableop?savev2_adam_lstm_809_lstm_cell_809_kernel_m_read_readvariableopIsavev2_adam_lstm_809_lstm_cell_809_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_809_lstm_cell_809_bias_m_read_readvariableop2savev2_adam_dense_269_kernel_v_read_readvariableop0savev2_adam_dense_269_bias_v_read_readvariableop?savev2_adam_lstm_807_lstm_cell_807_kernel_v_read_readvariableopIsavev2_adam_lstm_807_lstm_cell_807_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_807_lstm_cell_807_bias_v_read_readvariableop?savev2_adam_lstm_808_lstm_cell_808_kernel_v_read_readvariableopIsavev2_adam_lstm_808_lstm_cell_808_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_808_lstm_cell_808_bias_v_read_readvariableop?savev2_adam_lstm_809_lstm_cell_809_kernel_v_read_readvariableopIsavev2_adam_lstm_809_lstm_cell_809_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_809_lstm_cell_809_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
И╗
ы
"__inference__wrapped_model_4910558
lstm_807_inputW
Dsequential_269_lstm_807_lstm_cell_807_matmul_readvariableop_resource:	љY
Fsequential_269_lstm_807_lstm_cell_807_matmul_1_readvariableop_resource:	dљT
Esequential_269_lstm_807_lstm_cell_807_biasadd_readvariableop_resource:	љW
Dsequential_269_lstm_808_lstm_cell_808_matmul_readvariableop_resource:	d╚Y
Fsequential_269_lstm_808_lstm_cell_808_matmul_1_readvariableop_resource:	2╚T
Esequential_269_lstm_808_lstm_cell_808_biasadd_readvariableop_resource:	╚V
Dsequential_269_lstm_809_lstm_cell_809_matmul_readvariableop_resource:2(X
Fsequential_269_lstm_809_lstm_cell_809_matmul_1_readvariableop_resource:
(S
Esequential_269_lstm_809_lstm_cell_809_biasadd_readvariableop_resource:(I
7sequential_269_dense_269_matmul_readvariableop_resource:
F
8sequential_269_dense_269_biasadd_readvariableop_resource:
identityѕб/sequential_269/dense_269/BiasAdd/ReadVariableOpб.sequential_269/dense_269/MatMul/ReadVariableOpб<sequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpб;sequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOpб=sequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpбsequential_269/lstm_807/whileб<sequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpб;sequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOpб=sequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpбsequential_269/lstm_808/whileб<sequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpб;sequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOpб=sequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpбsequential_269/lstm_809/while[
sequential_269/lstm_807/ShapeShapelstm_807_input*
T0*
_output_shapes
:u
+sequential_269/lstm_807/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_269/lstm_807/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_269/lstm_807/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_269/lstm_807/strided_sliceStridedSlice&sequential_269/lstm_807/Shape:output:04sequential_269/lstm_807/strided_slice/stack:output:06sequential_269/lstm_807/strided_slice/stack_1:output:06sequential_269/lstm_807/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_269/lstm_807/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_269/lstm_807/zeros/packedPack.sequential_269/lstm_807/strided_slice:output:0/sequential_269/lstm_807/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_269/lstm_807/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_269/lstm_807/zerosFill-sequential_269/lstm_807/zeros/packed:output:0,sequential_269/lstm_807/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_269/lstm_807/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_269/lstm_807/zeros_1/packedPack.sequential_269/lstm_807/strided_slice:output:01sequential_269/lstm_807/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_269/lstm_807/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_269/lstm_807/zeros_1Fill/sequential_269/lstm_807/zeros_1/packed:output:0.sequential_269/lstm_807/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_269/lstm_807/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_269/lstm_807/transpose	Transposelstm_807_input/sequential_269/lstm_807/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_269/lstm_807/Shape_1Shape%sequential_269/lstm_807/transpose:y:0*
T0*
_output_shapes
:w
-sequential_269/lstm_807/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_807/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_807/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_269/lstm_807/strided_slice_1StridedSlice(sequential_269/lstm_807/Shape_1:output:06sequential_269/lstm_807/strided_slice_1/stack:output:08sequential_269/lstm_807/strided_slice_1/stack_1:output:08sequential_269/lstm_807/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_269/lstm_807/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_269/lstm_807/TensorArrayV2TensorListReserve<sequential_269/lstm_807/TensorArrayV2/element_shape:output:00sequential_269/lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_269/lstm_807/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_269/lstm_807/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_269/lstm_807/transpose:y:0Vsequential_269/lstm_807/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_269/lstm_807/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_807/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_807/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_269/lstm_807/strided_slice_2StridedSlice%sequential_269/lstm_807/transpose:y:06sequential_269/lstm_807/strided_slice_2/stack:output:08sequential_269/lstm_807/strided_slice_2/stack_1:output:08sequential_269/lstm_807/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOpReadVariableOpDsequential_269_lstm_807_lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_269/lstm_807/lstm_cell_807/MatMulMatMul0sequential_269/lstm_807/strided_slice_2:output:0Csequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOpFsequential_269_lstm_807_lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_269/lstm_807/lstm_cell_807/MatMul_1MatMul&sequential_269/lstm_807/zeros:output:0Esequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_269/lstm_807/lstm_cell_807/addAddV26sequential_269/lstm_807/lstm_cell_807/MatMul:product:08sequential_269/lstm_807/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOpEsequential_269_lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_269/lstm_807/lstm_cell_807/BiasAddBiasAdd-sequential_269/lstm_807/lstm_cell_807/add:z:0Dsequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_269/lstm_807/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_269/lstm_807/lstm_cell_807/splitSplit>sequential_269/lstm_807/lstm_cell_807/split/split_dim:output:06sequential_269/lstm_807/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_269/lstm_807/lstm_cell_807/SigmoidSigmoid4sequential_269/lstm_807/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_269/lstm_807/lstm_cell_807/Sigmoid_1Sigmoid4sequential_269/lstm_807/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_269/lstm_807/lstm_cell_807/mulMul3sequential_269/lstm_807/lstm_cell_807/Sigmoid_1:y:0(sequential_269/lstm_807/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_269/lstm_807/lstm_cell_807/ReluRelu4sequential_269/lstm_807/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_269/lstm_807/lstm_cell_807/mul_1Mul1sequential_269/lstm_807/lstm_cell_807/Sigmoid:y:08sequential_269/lstm_807/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_269/lstm_807/lstm_cell_807/add_1AddV2-sequential_269/lstm_807/lstm_cell_807/mul:z:0/sequential_269/lstm_807/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_269/lstm_807/lstm_cell_807/Sigmoid_2Sigmoid4sequential_269/lstm_807/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_269/lstm_807/lstm_cell_807/Relu_1Relu/sequential_269/lstm_807/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_269/lstm_807/lstm_cell_807/mul_2Mul3sequential_269/lstm_807/lstm_cell_807/Sigmoid_2:y:0:sequential_269/lstm_807/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_269/lstm_807/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_269/lstm_807/TensorArrayV2_1TensorListReserve>sequential_269/lstm_807/TensorArrayV2_1/element_shape:output:00sequential_269/lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_269/lstm_807/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_269/lstm_807/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_269/lstm_807/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_269/lstm_807/whileWhile3sequential_269/lstm_807/while/loop_counter:output:09sequential_269/lstm_807/while/maximum_iterations:output:0%sequential_269/lstm_807/time:output:00sequential_269/lstm_807/TensorArrayV2_1:handle:0&sequential_269/lstm_807/zeros:output:0(sequential_269/lstm_807/zeros_1:output:00sequential_269/lstm_807/strided_slice_1:output:0Osequential_269/lstm_807/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_269_lstm_807_lstm_cell_807_matmul_readvariableop_resourceFsequential_269_lstm_807_lstm_cell_807_matmul_1_readvariableop_resourceEsequential_269_lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
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
*sequential_269_lstm_807_while_body_4910190*6
cond.R,
*sequential_269_lstm_807_while_cond_4910189*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_269/lstm_807/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_269/lstm_807/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_269/lstm_807/while:output:3Qsequential_269/lstm_807/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_269/lstm_807/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_269/lstm_807/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_807/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_269/lstm_807/strided_slice_3StridedSliceCsequential_269/lstm_807/TensorArrayV2Stack/TensorListStack:tensor:06sequential_269/lstm_807/strided_slice_3/stack:output:08sequential_269/lstm_807/strided_slice_3/stack_1:output:08sequential_269/lstm_807/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_269/lstm_807/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_269/lstm_807/transpose_1	TransposeCsequential_269/lstm_807/TensorArrayV2Stack/TensorListStack:tensor:01sequential_269/lstm_807/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_269/lstm_807/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_269/lstm_808/ShapeShape'sequential_269/lstm_807/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_269/lstm_808/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_269/lstm_808/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_269/lstm_808/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_269/lstm_808/strided_sliceStridedSlice&sequential_269/lstm_808/Shape:output:04sequential_269/lstm_808/strided_slice/stack:output:06sequential_269/lstm_808/strided_slice/stack_1:output:06sequential_269/lstm_808/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_269/lstm_808/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_269/lstm_808/zeros/packedPack.sequential_269/lstm_808/strided_slice:output:0/sequential_269/lstm_808/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_269/lstm_808/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_269/lstm_808/zerosFill-sequential_269/lstm_808/zeros/packed:output:0,sequential_269/lstm_808/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_269/lstm_808/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_269/lstm_808/zeros_1/packedPack.sequential_269/lstm_808/strided_slice:output:01sequential_269/lstm_808/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_269/lstm_808/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_269/lstm_808/zeros_1Fill/sequential_269/lstm_808/zeros_1/packed:output:0.sequential_269/lstm_808/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_269/lstm_808/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_269/lstm_808/transpose	Transpose'sequential_269/lstm_807/transpose_1:y:0/sequential_269/lstm_808/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_269/lstm_808/Shape_1Shape%sequential_269/lstm_808/transpose:y:0*
T0*
_output_shapes
:w
-sequential_269/lstm_808/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_808/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_808/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_269/lstm_808/strided_slice_1StridedSlice(sequential_269/lstm_808/Shape_1:output:06sequential_269/lstm_808/strided_slice_1/stack:output:08sequential_269/lstm_808/strided_slice_1/stack_1:output:08sequential_269/lstm_808/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_269/lstm_808/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_269/lstm_808/TensorArrayV2TensorListReserve<sequential_269/lstm_808/TensorArrayV2/element_shape:output:00sequential_269/lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_269/lstm_808/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_269/lstm_808/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_269/lstm_808/transpose:y:0Vsequential_269/lstm_808/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_269/lstm_808/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_808/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_808/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_269/lstm_808/strided_slice_2StridedSlice%sequential_269/lstm_808/transpose:y:06sequential_269/lstm_808/strided_slice_2/stack:output:08sequential_269/lstm_808/strided_slice_2/stack_1:output:08sequential_269/lstm_808/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOpReadVariableOpDsequential_269_lstm_808_lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_269/lstm_808/lstm_cell_808/MatMulMatMul0sequential_269/lstm_808/strided_slice_2:output:0Csequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOpFsequential_269_lstm_808_lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_269/lstm_808/lstm_cell_808/MatMul_1MatMul&sequential_269/lstm_808/zeros:output:0Esequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_269/lstm_808/lstm_cell_808/addAddV26sequential_269/lstm_808/lstm_cell_808/MatMul:product:08sequential_269/lstm_808/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOpEsequential_269_lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_269/lstm_808/lstm_cell_808/BiasAddBiasAdd-sequential_269/lstm_808/lstm_cell_808/add:z:0Dsequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_269/lstm_808/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_269/lstm_808/lstm_cell_808/splitSplit>sequential_269/lstm_808/lstm_cell_808/split/split_dim:output:06sequential_269/lstm_808/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_269/lstm_808/lstm_cell_808/SigmoidSigmoid4sequential_269/lstm_808/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_269/lstm_808/lstm_cell_808/Sigmoid_1Sigmoid4sequential_269/lstm_808/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_269/lstm_808/lstm_cell_808/mulMul3sequential_269/lstm_808/lstm_cell_808/Sigmoid_1:y:0(sequential_269/lstm_808/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_269/lstm_808/lstm_cell_808/ReluRelu4sequential_269/lstm_808/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_269/lstm_808/lstm_cell_808/mul_1Mul1sequential_269/lstm_808/lstm_cell_808/Sigmoid:y:08sequential_269/lstm_808/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_269/lstm_808/lstm_cell_808/add_1AddV2-sequential_269/lstm_808/lstm_cell_808/mul:z:0/sequential_269/lstm_808/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_269/lstm_808/lstm_cell_808/Sigmoid_2Sigmoid4sequential_269/lstm_808/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_269/lstm_808/lstm_cell_808/Relu_1Relu/sequential_269/lstm_808/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_269/lstm_808/lstm_cell_808/mul_2Mul3sequential_269/lstm_808/lstm_cell_808/Sigmoid_2:y:0:sequential_269/lstm_808/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_269/lstm_808/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_269/lstm_808/TensorArrayV2_1TensorListReserve>sequential_269/lstm_808/TensorArrayV2_1/element_shape:output:00sequential_269/lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_269/lstm_808/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_269/lstm_808/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_269/lstm_808/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_269/lstm_808/whileWhile3sequential_269/lstm_808/while/loop_counter:output:09sequential_269/lstm_808/while/maximum_iterations:output:0%sequential_269/lstm_808/time:output:00sequential_269/lstm_808/TensorArrayV2_1:handle:0&sequential_269/lstm_808/zeros:output:0(sequential_269/lstm_808/zeros_1:output:00sequential_269/lstm_808/strided_slice_1:output:0Osequential_269/lstm_808/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_269_lstm_808_lstm_cell_808_matmul_readvariableop_resourceFsequential_269_lstm_808_lstm_cell_808_matmul_1_readvariableop_resourceEsequential_269_lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
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
*sequential_269_lstm_808_while_body_4910329*6
cond.R,
*sequential_269_lstm_808_while_cond_4910328*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_269/lstm_808/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_269/lstm_808/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_269/lstm_808/while:output:3Qsequential_269/lstm_808/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_269/lstm_808/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_269/lstm_808/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_808/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_269/lstm_808/strided_slice_3StridedSliceCsequential_269/lstm_808/TensorArrayV2Stack/TensorListStack:tensor:06sequential_269/lstm_808/strided_slice_3/stack:output:08sequential_269/lstm_808/strided_slice_3/stack_1:output:08sequential_269/lstm_808/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_269/lstm_808/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_269/lstm_808/transpose_1	TransposeCsequential_269/lstm_808/TensorArrayV2Stack/TensorListStack:tensor:01sequential_269/lstm_808/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_269/lstm_808/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_269/lstm_809/ShapeShape'sequential_269/lstm_808/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_269/lstm_809/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_269/lstm_809/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_269/lstm_809/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_269/lstm_809/strided_sliceStridedSlice&sequential_269/lstm_809/Shape:output:04sequential_269/lstm_809/strided_slice/stack:output:06sequential_269/lstm_809/strided_slice/stack_1:output:06sequential_269/lstm_809/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_269/lstm_809/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_269/lstm_809/zeros/packedPack.sequential_269/lstm_809/strided_slice:output:0/sequential_269/lstm_809/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_269/lstm_809/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_269/lstm_809/zerosFill-sequential_269/lstm_809/zeros/packed:output:0,sequential_269/lstm_809/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_269/lstm_809/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_269/lstm_809/zeros_1/packedPack.sequential_269/lstm_809/strided_slice:output:01sequential_269/lstm_809/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_269/lstm_809/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_269/lstm_809/zeros_1Fill/sequential_269/lstm_809/zeros_1/packed:output:0.sequential_269/lstm_809/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_269/lstm_809/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_269/lstm_809/transpose	Transpose'sequential_269/lstm_808/transpose_1:y:0/sequential_269/lstm_809/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_269/lstm_809/Shape_1Shape%sequential_269/lstm_809/transpose:y:0*
T0*
_output_shapes
:w
-sequential_269/lstm_809/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_809/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_809/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_269/lstm_809/strided_slice_1StridedSlice(sequential_269/lstm_809/Shape_1:output:06sequential_269/lstm_809/strided_slice_1/stack:output:08sequential_269/lstm_809/strided_slice_1/stack_1:output:08sequential_269/lstm_809/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_269/lstm_809/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_269/lstm_809/TensorArrayV2TensorListReserve<sequential_269/lstm_809/TensorArrayV2/element_shape:output:00sequential_269/lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_269/lstm_809/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_269/lstm_809/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_269/lstm_809/transpose:y:0Vsequential_269/lstm_809/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_269/lstm_809/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_809/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_269/lstm_809/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_269/lstm_809/strided_slice_2StridedSlice%sequential_269/lstm_809/transpose:y:06sequential_269/lstm_809/strided_slice_2/stack:output:08sequential_269/lstm_809/strided_slice_2/stack_1:output:08sequential_269/lstm_809/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOpReadVariableOpDsequential_269_lstm_809_lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_269/lstm_809/lstm_cell_809/MatMulMatMul0sequential_269/lstm_809/strided_slice_2:output:0Csequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOpFsequential_269_lstm_809_lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_269/lstm_809/lstm_cell_809/MatMul_1MatMul&sequential_269/lstm_809/zeros:output:0Esequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_269/lstm_809/lstm_cell_809/addAddV26sequential_269/lstm_809/lstm_cell_809/MatMul:product:08sequential_269/lstm_809/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOpEsequential_269_lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_269/lstm_809/lstm_cell_809/BiasAddBiasAdd-sequential_269/lstm_809/lstm_cell_809/add:z:0Dsequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_269/lstm_809/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_269/lstm_809/lstm_cell_809/splitSplit>sequential_269/lstm_809/lstm_cell_809/split/split_dim:output:06sequential_269/lstm_809/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_269/lstm_809/lstm_cell_809/SigmoidSigmoid4sequential_269/lstm_809/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_269/lstm_809/lstm_cell_809/Sigmoid_1Sigmoid4sequential_269/lstm_809/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_269/lstm_809/lstm_cell_809/mulMul3sequential_269/lstm_809/lstm_cell_809/Sigmoid_1:y:0(sequential_269/lstm_809/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_269/lstm_809/lstm_cell_809/ReluRelu4sequential_269/lstm_809/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_269/lstm_809/lstm_cell_809/mul_1Mul1sequential_269/lstm_809/lstm_cell_809/Sigmoid:y:08sequential_269/lstm_809/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_269/lstm_809/lstm_cell_809/add_1AddV2-sequential_269/lstm_809/lstm_cell_809/mul:z:0/sequential_269/lstm_809/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_269/lstm_809/lstm_cell_809/Sigmoid_2Sigmoid4sequential_269/lstm_809/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_269/lstm_809/lstm_cell_809/Relu_1Relu/sequential_269/lstm_809/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_269/lstm_809/lstm_cell_809/mul_2Mul3sequential_269/lstm_809/lstm_cell_809/Sigmoid_2:y:0:sequential_269/lstm_809/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_269/lstm_809/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_269/lstm_809/TensorArrayV2_1TensorListReserve>sequential_269/lstm_809/TensorArrayV2_1/element_shape:output:00sequential_269/lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_269/lstm_809/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_269/lstm_809/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_269/lstm_809/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_269/lstm_809/whileWhile3sequential_269/lstm_809/while/loop_counter:output:09sequential_269/lstm_809/while/maximum_iterations:output:0%sequential_269/lstm_809/time:output:00sequential_269/lstm_809/TensorArrayV2_1:handle:0&sequential_269/lstm_809/zeros:output:0(sequential_269/lstm_809/zeros_1:output:00sequential_269/lstm_809/strided_slice_1:output:0Osequential_269/lstm_809/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_269_lstm_809_lstm_cell_809_matmul_readvariableop_resourceFsequential_269_lstm_809_lstm_cell_809_matmul_1_readvariableop_resourceEsequential_269_lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
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
*sequential_269_lstm_809_while_body_4910468*6
cond.R,
*sequential_269_lstm_809_while_cond_4910467*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_269/lstm_809/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_269/lstm_809/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_269/lstm_809/while:output:3Qsequential_269/lstm_809/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_269/lstm_809/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_269/lstm_809/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_269/lstm_809/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_269/lstm_809/strided_slice_3StridedSliceCsequential_269/lstm_809/TensorArrayV2Stack/TensorListStack:tensor:06sequential_269/lstm_809/strided_slice_3/stack:output:08sequential_269/lstm_809/strided_slice_3/stack_1:output:08sequential_269/lstm_809/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_269/lstm_809/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_269/lstm_809/transpose_1	TransposeCsequential_269/lstm_809/TensorArrayV2Stack/TensorListStack:tensor:01sequential_269/lstm_809/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_269/lstm_809/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_269/dense_269/MatMul/ReadVariableOpReadVariableOp7sequential_269_dense_269_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_269/dense_269/MatMulMatMul0sequential_269/lstm_809/strided_slice_3:output:06sequential_269/dense_269/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_269/dense_269/BiasAdd/ReadVariableOpReadVariableOp8sequential_269_dense_269_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_269/dense_269/BiasAddBiasAdd)sequential_269/dense_269/MatMul:product:07sequential_269/dense_269/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_269/dense_269/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_269/dense_269/BiasAdd/ReadVariableOp/^sequential_269/dense_269/MatMul/ReadVariableOp=^sequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp<^sequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOp>^sequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp^sequential_269/lstm_807/while=^sequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp<^sequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOp>^sequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp^sequential_269/lstm_808/while=^sequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp<^sequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOp>^sequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp^sequential_269/lstm_809/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_269/dense_269/BiasAdd/ReadVariableOp/sequential_269/dense_269/BiasAdd/ReadVariableOp2`
.sequential_269/dense_269/MatMul/ReadVariableOp.sequential_269/dense_269/MatMul/ReadVariableOp2|
<sequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp<sequential_269/lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp2z
;sequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOp;sequential_269/lstm_807/lstm_cell_807/MatMul/ReadVariableOp2~
=sequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp=sequential_269/lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp2>
sequential_269/lstm_807/whilesequential_269/lstm_807/while2|
<sequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp<sequential_269/lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp2z
;sequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOp;sequential_269/lstm_808/lstm_cell_808/MatMul/ReadVariableOp2~
=sequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp=sequential_269/lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp2>
sequential_269/lstm_808/whilesequential_269/lstm_808/while2|
<sequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp<sequential_269/lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp2z
;sequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOp;sequential_269/lstm_809/lstm_cell_809/MatMul/ReadVariableOp2~
=sequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp=sequential_269/lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp2>
sequential_269/lstm_809/whilesequential_269/lstm_809/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_807_input
Ѓ
и
*__inference_lstm_807_layer_call_fn_4913770

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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4912603s
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
▀
ѕ
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915757

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
║
╚
while_cond_4912188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912188___redundant_placeholder05
1while_while_cond_4912188___redundant_placeholder15
1while_while_cond_4912188___redundant_placeholder25
1while_while_cond_4912188___redundant_placeholder3
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
while_body_4915347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
┬

Ў
%__inference_signature_wrapper_4912818
lstm_807_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_807_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4910558o
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
_user_specified_namelstm_807_input
─8
н
while_body_4911973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Г
╣
*__inference_lstm_807_layer_call_fn_4913748
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4910899|
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
while_cond_4914257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914257___redundant_placeholder05
1while_while_cond_4914257___redundant_placeholder15
1while_while_cond_4914257___redundant_placeholder25
1while_while_cond_4914257___redundant_placeholder3
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4910899

inputs(
lstm_cell_807_4910817:	љ(
lstm_cell_807_4910819:	dљ$
lstm_cell_807_4910821:	љ
identityѕб%lstm_cell_807/StatefulPartitionedCallбwhile;
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
%lstm_cell_807/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_807_4910817lstm_cell_807_4910819lstm_cell_807_4910821*
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910771n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_807_4910817lstm_cell_807_4910819lstm_cell_807_4910821*
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
while_body_4910830*
condR
while_cond_4910829*K
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
NoOpNoOp&^lstm_cell_807/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_807/StatefulPartitionedCall%lstm_cell_807/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ѕ#
в
while_body_4911530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_809_4911554_0:2(/
while_lstm_cell_809_4911556_0:
(+
while_lstm_cell_809_4911558_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_809_4911554:2(-
while_lstm_cell_809_4911556:
()
while_lstm_cell_809_4911558:(ѕб+while/lstm_cell_809/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_809/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_809_4911554_0while_lstm_cell_809_4911556_0while_lstm_cell_809_4911558_0*
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911471П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_809/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_809/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_809/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_809_4911554while_lstm_cell_809_4911554_0"<
while_lstm_cell_809_4911556while_lstm_cell_809_4911556_0"<
while_lstm_cell_809_4911558while_lstm_cell_809_4911558_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_809/StatefulPartitionedCall+while/lstm_cell_809/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
чT
я
*sequential_269_lstm_807_while_body_4910190L
Hsequential_269_lstm_807_while_sequential_269_lstm_807_while_loop_counterR
Nsequential_269_lstm_807_while_sequential_269_lstm_807_while_maximum_iterations-
)sequential_269_lstm_807_while_placeholder/
+sequential_269_lstm_807_while_placeholder_1/
+sequential_269_lstm_807_while_placeholder_2/
+sequential_269_lstm_807_while_placeholder_3K
Gsequential_269_lstm_807_while_sequential_269_lstm_807_strided_slice_1_0ѕ
Ѓsequential_269_lstm_807_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_807_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_269_lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0:	љa
Nsequential_269_lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљ\
Msequential_269_lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ*
&sequential_269_lstm_807_while_identity,
(sequential_269_lstm_807_while_identity_1,
(sequential_269_lstm_807_while_identity_2,
(sequential_269_lstm_807_while_identity_3,
(sequential_269_lstm_807_while_identity_4,
(sequential_269_lstm_807_while_identity_5I
Esequential_269_lstm_807_while_sequential_269_lstm_807_strided_slice_1є
Ђsequential_269_lstm_807_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_807_tensorarrayunstack_tensorlistfromtensor]
Jsequential_269_lstm_807_while_lstm_cell_807_matmul_readvariableop_resource:	љ_
Lsequential_269_lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource:	dљZ
Ksequential_269_lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource:	љѕбBsequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpбAsequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpбCsequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpа
Osequential_269/lstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_269/lstm_807/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_269_lstm_807_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_807_tensorarrayunstack_tensorlistfromtensor_0)sequential_269_lstm_807_while_placeholderXsequential_269/lstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOpLsequential_269_lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_269/lstm_807/while/lstm_cell_807/MatMulMatMulHsequential_269/lstm_807/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOpNsequential_269_lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_269/lstm_807/while/lstm_cell_807/MatMul_1MatMul+sequential_269_lstm_807_while_placeholder_2Ksequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_269/lstm_807/while/lstm_cell_807/addAddV2<sequential_269/lstm_807/while/lstm_cell_807/MatMul:product:0>sequential_269/lstm_807/while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOpMsequential_269_lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_269/lstm_807/while/lstm_cell_807/BiasAddBiasAdd3sequential_269/lstm_807/while/lstm_cell_807/add:z:0Jsequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_269/lstm_807/while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_269/lstm_807/while/lstm_cell_807/splitSplitDsequential_269/lstm_807/while/lstm_cell_807/split/split_dim:output:0<sequential_269/lstm_807/while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_269/lstm_807/while/lstm_cell_807/SigmoidSigmoid:sequential_269/lstm_807/while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_269/lstm_807/while/lstm_cell_807/Sigmoid_1Sigmoid:sequential_269/lstm_807/while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_269/lstm_807/while/lstm_cell_807/mulMul9sequential_269/lstm_807/while/lstm_cell_807/Sigmoid_1:y:0+sequential_269_lstm_807_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_269/lstm_807/while/lstm_cell_807/ReluRelu:sequential_269/lstm_807/while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_269/lstm_807/while/lstm_cell_807/mul_1Mul7sequential_269/lstm_807/while/lstm_cell_807/Sigmoid:y:0>sequential_269/lstm_807/while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_269/lstm_807/while/lstm_cell_807/add_1AddV23sequential_269/lstm_807/while/lstm_cell_807/mul:z:05sequential_269/lstm_807/while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_269/lstm_807/while/lstm_cell_807/Sigmoid_2Sigmoid:sequential_269/lstm_807/while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_269/lstm_807/while/lstm_cell_807/Relu_1Relu5sequential_269/lstm_807/while/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_269/lstm_807/while/lstm_cell_807/mul_2Mul9sequential_269/lstm_807/while/lstm_cell_807/Sigmoid_2:y:0@sequential_269/lstm_807/while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_269/lstm_807/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_269_lstm_807_while_placeholder_1)sequential_269_lstm_807_while_placeholder5sequential_269/lstm_807/while/lstm_cell_807/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_269/lstm_807/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_269/lstm_807/while/addAddV2)sequential_269_lstm_807_while_placeholder,sequential_269/lstm_807/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_269/lstm_807/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_269/lstm_807/while/add_1AddV2Hsequential_269_lstm_807_while_sequential_269_lstm_807_while_loop_counter.sequential_269/lstm_807/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_269/lstm_807/while/IdentityIdentity'sequential_269/lstm_807/while/add_1:z:0#^sequential_269/lstm_807/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_269/lstm_807/while/Identity_1IdentityNsequential_269_lstm_807_while_sequential_269_lstm_807_while_maximum_iterations#^sequential_269/lstm_807/while/NoOp*
T0*
_output_shapes
: А
(sequential_269/lstm_807/while/Identity_2Identity%sequential_269/lstm_807/while/add:z:0#^sequential_269/lstm_807/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_269/lstm_807/while/Identity_3IdentityRsequential_269/lstm_807/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_269/lstm_807/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_269/lstm_807/while/Identity_4Identity5sequential_269/lstm_807/while/lstm_cell_807/mul_2:z:0#^sequential_269/lstm_807/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_269/lstm_807/while/Identity_5Identity5sequential_269/lstm_807/while/lstm_cell_807/add_1:z:0#^sequential_269/lstm_807/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_269/lstm_807/while/NoOpNoOpC^sequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpB^sequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpD^sequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_269_lstm_807_while_identity/sequential_269/lstm_807/while/Identity:output:0"]
(sequential_269_lstm_807_while_identity_11sequential_269/lstm_807/while/Identity_1:output:0"]
(sequential_269_lstm_807_while_identity_21sequential_269/lstm_807/while/Identity_2:output:0"]
(sequential_269_lstm_807_while_identity_31sequential_269/lstm_807/while/Identity_3:output:0"]
(sequential_269_lstm_807_while_identity_41sequential_269/lstm_807/while/Identity_4:output:0"]
(sequential_269_lstm_807_while_identity_51sequential_269/lstm_807/while/Identity_5:output:0"ю
Ksequential_269_lstm_807_while_lstm_cell_807_biasadd_readvariableop_resourceMsequential_269_lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0"ъ
Lsequential_269_lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resourceNsequential_269_lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0"џ
Jsequential_269_lstm_807_while_lstm_cell_807_matmul_readvariableop_resourceLsequential_269_lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0"љ
Esequential_269_lstm_807_while_sequential_269_lstm_807_strided_slice_1Gsequential_269_lstm_807_while_sequential_269_lstm_807_strided_slice_1_0"і
Ђsequential_269_lstm_807_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_807_tensorarrayunstack_tensorlistfromtensorЃsequential_269_lstm_807_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_807_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpBsequential_269/lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp2є
Asequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpAsequential_269/lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp2і
Csequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpCsequential_269/lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
№
Э
/__inference_lstm_cell_807_layer_call_fn_4915627

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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910771o
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
аK
Ц
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914529
inputs_0?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4914445*
condR
while_cond_4914444*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
њK
б
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915288
inputs_0>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4915204*
condR
while_cond_4915203*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Ѓ
и
*__inference_lstm_808_layer_call_fn_4914375

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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911907s
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
Ж
Ѓ
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912753
lstm_807_input#
lstm_807_4912726:	љ#
lstm_807_4912728:	dљ
lstm_807_4912730:	љ#
lstm_808_4912733:	d╚#
lstm_808_4912735:	2╚
lstm_808_4912737:	╚"
lstm_809_4912740:2("
lstm_809_4912742:
(
lstm_809_4912744:(#
dense_269_4912747:

dense_269_4912749:
identityѕб!dense_269/StatefulPartitionedCallб lstm_807/StatefulPartitionedCallб lstm_808/StatefulPartitionedCallб lstm_809/StatefulPartitionedCallЊ
 lstm_807/StatefulPartitionedCallStatefulPartitionedCalllstm_807_inputlstm_807_4912726lstm_807_4912728lstm_807_4912730*
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4911757«
 lstm_808/StatefulPartitionedCallStatefulPartitionedCall)lstm_807/StatefulPartitionedCall:output:0lstm_808_4912733lstm_808_4912735lstm_808_4912737*
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911907ф
 lstm_809/StatefulPartitionedCallStatefulPartitionedCall)lstm_808/StatefulPartitionedCall:output:0lstm_809_4912740lstm_809_4912742lstm_809_4912744*
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912057џ
!dense_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_809/StatefulPartitionedCall:output:0dense_269_4912747dense_269_4912749*
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
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075y
IdentityIdentity*dense_269/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_269/StatefulPartitionedCall!^lstm_807/StatefulPartitionedCall!^lstm_808/StatefulPartitionedCall!^lstm_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_269/StatefulPartitionedCall!dense_269/StatefulPartitionedCall2D
 lstm_807/StatefulPartitionedCall lstm_807/StatefulPartitionedCall2D
 lstm_808/StatefulPartitionedCall lstm_808/StatefulPartitionedCall2D
 lstm_809/StatefulPartitionedCall lstm_809/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_807_input
■Ђ
Џ
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913299

inputsH
5lstm_807_lstm_cell_807_matmul_readvariableop_resource:	љJ
7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource:	dљE
6lstm_807_lstm_cell_807_biasadd_readvariableop_resource:	љH
5lstm_808_lstm_cell_808_matmul_readvariableop_resource:	d╚J
7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource:	2╚E
6lstm_808_lstm_cell_808_biasadd_readvariableop_resource:	╚G
5lstm_809_lstm_cell_809_matmul_readvariableop_resource:2(I
7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource:
(D
6lstm_809_lstm_cell_809_biasadd_readvariableop_resource:(:
(dense_269_matmul_readvariableop_resource:
7
)dense_269_biasadd_readvariableop_resource:
identityѕб dense_269/BiasAdd/ReadVariableOpбdense_269/MatMul/ReadVariableOpб-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpб,lstm_807/lstm_cell_807/MatMul/ReadVariableOpб.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpбlstm_807/whileб-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpб,lstm_808/lstm_cell_808/MatMul/ReadVariableOpб.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpбlstm_808/whileб-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpб,lstm_809/lstm_cell_809/MatMul/ReadVariableOpб.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpбlstm_809/whileD
lstm_807/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_807/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_807/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_807/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_807/strided_sliceStridedSlicelstm_807/Shape:output:0%lstm_807/strided_slice/stack:output:0'lstm_807/strided_slice/stack_1:output:0'lstm_807/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_807/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_807/zeros/packedPacklstm_807/strided_slice:output:0 lstm_807/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_807/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_807/zerosFilllstm_807/zeros/packed:output:0lstm_807/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_807/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_807/zeros_1/packedPacklstm_807/strided_slice:output:0"lstm_807/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_807/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_807/zeros_1Fill lstm_807/zeros_1/packed:output:0lstm_807/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_807/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_807/transpose	Transposeinputs lstm_807/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_807/Shape_1Shapelstm_807/transpose:y:0*
T0*
_output_shapes
:h
lstm_807/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_807/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_807/strided_slice_1StridedSlicelstm_807/Shape_1:output:0'lstm_807/strided_slice_1/stack:output:0)lstm_807/strided_slice_1/stack_1:output:0)lstm_807/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_807/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_807/TensorArrayV2TensorListReserve-lstm_807/TensorArrayV2/element_shape:output:0!lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_807/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_807/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_807/transpose:y:0Glstm_807/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_807/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_807/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_807/strided_slice_2StridedSlicelstm_807/transpose:y:0'lstm_807/strided_slice_2/stack:output:0)lstm_807/strided_slice_2/stack_1:output:0)lstm_807/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_807/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp5lstm_807_lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_807/lstm_cell_807/MatMulMatMul!lstm_807/strided_slice_2:output:04lstm_807/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_807/lstm_cell_807/MatMul_1MatMullstm_807/zeros:output:06lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_807/lstm_cell_807/addAddV2'lstm_807/lstm_cell_807/MatMul:product:0)lstm_807/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp6lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_807/lstm_cell_807/BiasAddBiasAddlstm_807/lstm_cell_807/add:z:05lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_807/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_807/lstm_cell_807/splitSplit/lstm_807/lstm_cell_807/split/split_dim:output:0'lstm_807/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_807/lstm_cell_807/SigmoidSigmoid%lstm_807/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_807/lstm_cell_807/Sigmoid_1Sigmoid%lstm_807/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_807/lstm_cell_807/mulMul$lstm_807/lstm_cell_807/Sigmoid_1:y:0lstm_807/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_807/lstm_cell_807/ReluRelu%lstm_807/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dц
lstm_807/lstm_cell_807/mul_1Mul"lstm_807/lstm_cell_807/Sigmoid:y:0)lstm_807/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_807/lstm_cell_807/add_1AddV2lstm_807/lstm_cell_807/mul:z:0 lstm_807/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_807/lstm_cell_807/Sigmoid_2Sigmoid%lstm_807/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dy
lstm_807/lstm_cell_807/Relu_1Relu lstm_807/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_807/lstm_cell_807/mul_2Mul$lstm_807/lstm_cell_807/Sigmoid_2:y:0+lstm_807/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_807/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_807/TensorArrayV2_1TensorListReserve/lstm_807/TensorArrayV2_1/element_shape:output:0!lstm_807/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_807/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_807/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_807/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_807/whileWhile$lstm_807/while/loop_counter:output:0*lstm_807/while/maximum_iterations:output:0lstm_807/time:output:0!lstm_807/TensorArrayV2_1:handle:0lstm_807/zeros:output:0lstm_807/zeros_1:output:0!lstm_807/strided_slice_1:output:0@lstm_807/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_807_lstm_cell_807_matmul_readvariableop_resource7lstm_807_lstm_cell_807_matmul_1_readvariableop_resource6lstm_807_lstm_cell_807_biasadd_readvariableop_resource*
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
lstm_807_while_body_4912931*'
condR
lstm_807_while_cond_4912930*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_807/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_807/TensorArrayV2Stack/TensorListStackTensorListStacklstm_807/while:output:3Blstm_807/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_807/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_807/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_807/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_807/strided_slice_3StridedSlice4lstm_807/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_807/strided_slice_3/stack:output:0)lstm_807/strided_slice_3/stack_1:output:0)lstm_807/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_807/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_807/transpose_1	Transpose4lstm_807/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_807/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_807/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_808/ShapeShapelstm_807/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_808/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_808/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_808/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_808/strided_sliceStridedSlicelstm_808/Shape:output:0%lstm_808/strided_slice/stack:output:0'lstm_808/strided_slice/stack_1:output:0'lstm_808/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_808/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_808/zeros/packedPacklstm_808/strided_slice:output:0 lstm_808/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_808/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_808/zerosFilllstm_808/zeros/packed:output:0lstm_808/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_808/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_808/zeros_1/packedPacklstm_808/strided_slice:output:0"lstm_808/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_808/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_808/zeros_1Fill lstm_808/zeros_1/packed:output:0lstm_808/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_808/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_808/transpose	Transposelstm_807/transpose_1:y:0 lstm_808/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_808/Shape_1Shapelstm_808/transpose:y:0*
T0*
_output_shapes
:h
lstm_808/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_808/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_808/strided_slice_1StridedSlicelstm_808/Shape_1:output:0'lstm_808/strided_slice_1/stack:output:0)lstm_808/strided_slice_1/stack_1:output:0)lstm_808/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_808/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_808/TensorArrayV2TensorListReserve-lstm_808/TensorArrayV2/element_shape:output:0!lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_808/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_808/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_808/transpose:y:0Glstm_808/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_808/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_808/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_808/strided_slice_2StridedSlicelstm_808/transpose:y:0'lstm_808/strided_slice_2/stack:output:0)lstm_808/strided_slice_2/stack_1:output:0)lstm_808/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_808/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp5lstm_808_lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_808/lstm_cell_808/MatMulMatMul!lstm_808/strided_slice_2:output:04lstm_808/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_808/lstm_cell_808/MatMul_1MatMullstm_808/zeros:output:06lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_808/lstm_cell_808/addAddV2'lstm_808/lstm_cell_808/MatMul:product:0)lstm_808/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp6lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_808/lstm_cell_808/BiasAddBiasAddlstm_808/lstm_cell_808/add:z:05lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_808/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_808/lstm_cell_808/splitSplit/lstm_808/lstm_cell_808/split/split_dim:output:0'lstm_808/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_808/lstm_cell_808/SigmoidSigmoid%lstm_808/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_808/lstm_cell_808/Sigmoid_1Sigmoid%lstm_808/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_808/lstm_cell_808/mulMul$lstm_808/lstm_cell_808/Sigmoid_1:y:0lstm_808/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_808/lstm_cell_808/ReluRelu%lstm_808/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_808/lstm_cell_808/mul_1Mul"lstm_808/lstm_cell_808/Sigmoid:y:0)lstm_808/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_808/lstm_cell_808/add_1AddV2lstm_808/lstm_cell_808/mul:z:0 lstm_808/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_808/lstm_cell_808/Sigmoid_2Sigmoid%lstm_808/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2y
lstm_808/lstm_cell_808/Relu_1Relu lstm_808/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_808/lstm_cell_808/mul_2Mul$lstm_808/lstm_cell_808/Sigmoid_2:y:0+lstm_808/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_808/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_808/TensorArrayV2_1TensorListReserve/lstm_808/TensorArrayV2_1/element_shape:output:0!lstm_808/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_808/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_808/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_808/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_808/whileWhile$lstm_808/while/loop_counter:output:0*lstm_808/while/maximum_iterations:output:0lstm_808/time:output:0!lstm_808/TensorArrayV2_1:handle:0lstm_808/zeros:output:0lstm_808/zeros_1:output:0!lstm_808/strided_slice_1:output:0@lstm_808/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_808_lstm_cell_808_matmul_readvariableop_resource7lstm_808_lstm_cell_808_matmul_1_readvariableop_resource6lstm_808_lstm_cell_808_biasadd_readvariableop_resource*
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
lstm_808_while_body_4913070*'
condR
lstm_808_while_cond_4913069*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_808/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_808/TensorArrayV2Stack/TensorListStackTensorListStacklstm_808/while:output:3Blstm_808/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_808/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_808/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_808/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_808/strided_slice_3StridedSlice4lstm_808/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_808/strided_slice_3/stack:output:0)lstm_808/strided_slice_3/stack_1:output:0)lstm_808/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_808/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_808/transpose_1	Transpose4lstm_808/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_808/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_808/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_809/ShapeShapelstm_808/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_809/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_809/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_809/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_809/strided_sliceStridedSlicelstm_809/Shape:output:0%lstm_809/strided_slice/stack:output:0'lstm_809/strided_slice/stack_1:output:0'lstm_809/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_809/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_809/zeros/packedPacklstm_809/strided_slice:output:0 lstm_809/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_809/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_809/zerosFilllstm_809/zeros/packed:output:0lstm_809/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_809/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_809/zeros_1/packedPacklstm_809/strided_slice:output:0"lstm_809/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_809/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_809/zeros_1Fill lstm_809/zeros_1/packed:output:0lstm_809/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_809/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_809/transpose	Transposelstm_808/transpose_1:y:0 lstm_809/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_809/Shape_1Shapelstm_809/transpose:y:0*
T0*
_output_shapes
:h
lstm_809/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_809/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_809/strided_slice_1StridedSlicelstm_809/Shape_1:output:0'lstm_809/strided_slice_1/stack:output:0)lstm_809/strided_slice_1/stack_1:output:0)lstm_809/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_809/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_809/TensorArrayV2TensorListReserve-lstm_809/TensorArrayV2/element_shape:output:0!lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_809/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_809/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_809/transpose:y:0Glstm_809/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_809/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_809/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_809/strided_slice_2StridedSlicelstm_809/transpose:y:0'lstm_809/strided_slice_2/stack:output:0)lstm_809/strided_slice_2/stack_1:output:0)lstm_809/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_809/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp5lstm_809_lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_809/lstm_cell_809/MatMulMatMul!lstm_809/strided_slice_2:output:04lstm_809/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_809/lstm_cell_809/MatMul_1MatMullstm_809/zeros:output:06lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_809/lstm_cell_809/addAddV2'lstm_809/lstm_cell_809/MatMul:product:0)lstm_809/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp6lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_809/lstm_cell_809/BiasAddBiasAddlstm_809/lstm_cell_809/add:z:05lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_809/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_809/lstm_cell_809/splitSplit/lstm_809/lstm_cell_809/split/split_dim:output:0'lstm_809/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_809/lstm_cell_809/SigmoidSigmoid%lstm_809/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_809/lstm_cell_809/Sigmoid_1Sigmoid%lstm_809/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_809/lstm_cell_809/mulMul$lstm_809/lstm_cell_809/Sigmoid_1:y:0lstm_809/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_809/lstm_cell_809/ReluRelu%lstm_809/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_809/lstm_cell_809/mul_1Mul"lstm_809/lstm_cell_809/Sigmoid:y:0)lstm_809/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_809/lstm_cell_809/add_1AddV2lstm_809/lstm_cell_809/mul:z:0 lstm_809/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_809/lstm_cell_809/Sigmoid_2Sigmoid%lstm_809/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
y
lstm_809/lstm_cell_809/Relu_1Relu lstm_809/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_809/lstm_cell_809/mul_2Mul$lstm_809/lstm_cell_809/Sigmoid_2:y:0+lstm_809/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_809/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_809/TensorArrayV2_1TensorListReserve/lstm_809/TensorArrayV2_1/element_shape:output:0!lstm_809/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_809/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_809/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_809/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_809/whileWhile$lstm_809/while/loop_counter:output:0*lstm_809/while/maximum_iterations:output:0lstm_809/time:output:0!lstm_809/TensorArrayV2_1:handle:0lstm_809/zeros:output:0lstm_809/zeros_1:output:0!lstm_809/strided_slice_1:output:0@lstm_809/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_809_lstm_cell_809_matmul_readvariableop_resource7lstm_809_lstm_cell_809_matmul_1_readvariableop_resource6lstm_809_lstm_cell_809_biasadd_readvariableop_resource*
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
lstm_809_while_body_4913209*'
condR
lstm_809_while_cond_4913208*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_809/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_809/TensorArrayV2Stack/TensorListStackTensorListStacklstm_809/while:output:3Blstm_809/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_809/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_809/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_809/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_809/strided_slice_3StridedSlice4lstm_809/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_809/strided_slice_3/stack:output:0)lstm_809/strided_slice_3/stack_1:output:0)lstm_809/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_809/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_809/transpose_1	Transpose4lstm_809/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_809/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_809/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_269/MatMul/ReadVariableOpReadVariableOp(dense_269_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_269/MatMulMatMul!lstm_809/strided_slice_3:output:0'dense_269/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_269/BiasAdd/ReadVariableOpReadVariableOp)dense_269_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_269/BiasAddBiasAdddense_269/MatMul:product:0(dense_269/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_269/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_269/BiasAdd/ReadVariableOp ^dense_269/MatMul/ReadVariableOp.^lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp-^lstm_807/lstm_cell_807/MatMul/ReadVariableOp/^lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp^lstm_807/while.^lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp-^lstm_808/lstm_cell_808/MatMul/ReadVariableOp/^lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp^lstm_808/while.^lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp-^lstm_809/lstm_cell_809/MatMul/ReadVariableOp/^lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp^lstm_809/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_269/BiasAdd/ReadVariableOp dense_269/BiasAdd/ReadVariableOp2B
dense_269/MatMul/ReadVariableOpdense_269/MatMul/ReadVariableOp2^
-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp-lstm_807/lstm_cell_807/BiasAdd/ReadVariableOp2\
,lstm_807/lstm_cell_807/MatMul/ReadVariableOp,lstm_807/lstm_cell_807/MatMul/ReadVariableOp2`
.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp.lstm_807/lstm_cell_807/MatMul_1/ReadVariableOp2 
lstm_807/whilelstm_807/while2^
-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp-lstm_808/lstm_cell_808/BiasAdd/ReadVariableOp2\
,lstm_808/lstm_cell_808/MatMul/ReadVariableOp,lstm_808/lstm_cell_808/MatMul/ReadVariableOp2`
.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp.lstm_808/lstm_cell_808/MatMul_1/ReadVariableOp2 
lstm_808/whilelstm_808/while2^
-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp-lstm_809/lstm_cell_809/BiasAdd/ReadVariableOp2\
,lstm_809/lstm_cell_809/MatMul/ReadVariableOp,lstm_809/lstm_cell_809/MatMul/ReadVariableOp2`
.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp.lstm_809/lstm_cell_809/MatMul_1/ReadVariableOp2 
lstm_809/whilelstm_809/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4914730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914730___redundant_placeholder05
1while_while_cond_4914730___redundant_placeholder15
1while_while_cond_4914730___redundant_placeholder25
1while_while_cond_4914730___redundant_placeholder3
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
№
Э
/__inference_lstm_cell_808_layer_call_fn_4915725

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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4911121o
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
Л8
┌
while_body_4912354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915574

inputs>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4915490*
condR
while_cond_4915489*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_4912353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4912353___redundant_placeholder05
1while_while_cond_4912353___redundant_placeholder15
1while_while_cond_4912353___redundant_placeholder25
1while_while_cond_4912353___redundant_placeholder3
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
№
Э
/__inference_lstm_cell_807_layer_call_fn_4915610

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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910625o
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
РJ
Б
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914199

inputs?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4914115*
condR
while_cond_4914114*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЬT
п
*sequential_269_lstm_809_while_body_4910468L
Hsequential_269_lstm_809_while_sequential_269_lstm_809_while_loop_counterR
Nsequential_269_lstm_809_while_sequential_269_lstm_809_while_maximum_iterations-
)sequential_269_lstm_809_while_placeholder/
+sequential_269_lstm_809_while_placeholder_1/
+sequential_269_lstm_809_while_placeholder_2/
+sequential_269_lstm_809_while_placeholder_3K
Gsequential_269_lstm_809_while_sequential_269_lstm_809_strided_slice_1_0ѕ
Ѓsequential_269_lstm_809_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_809_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_269_lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0:2(`
Nsequential_269_lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0:
([
Msequential_269_lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0:(*
&sequential_269_lstm_809_while_identity,
(sequential_269_lstm_809_while_identity_1,
(sequential_269_lstm_809_while_identity_2,
(sequential_269_lstm_809_while_identity_3,
(sequential_269_lstm_809_while_identity_4,
(sequential_269_lstm_809_while_identity_5I
Esequential_269_lstm_809_while_sequential_269_lstm_809_strided_slice_1є
Ђsequential_269_lstm_809_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_809_tensorarrayunstack_tensorlistfromtensor\
Jsequential_269_lstm_809_while_lstm_cell_809_matmul_readvariableop_resource:2(^
Lsequential_269_lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource:
(Y
Ksequential_269_lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource:(ѕбBsequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpбAsequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpбCsequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpа
Osequential_269/lstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_269/lstm_809/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_269_lstm_809_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_809_tensorarrayunstack_tensorlistfromtensor_0)sequential_269_lstm_809_while_placeholderXsequential_269/lstm_809/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOpLsequential_269_lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_269/lstm_809/while/lstm_cell_809/MatMulMatMulHsequential_269/lstm_809/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOpNsequential_269_lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_269/lstm_809/while/lstm_cell_809/MatMul_1MatMul+sequential_269_lstm_809_while_placeholder_2Ksequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_269/lstm_809/while/lstm_cell_809/addAddV2<sequential_269/lstm_809/while/lstm_cell_809/MatMul:product:0>sequential_269/lstm_809/while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOpMsequential_269_lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_269/lstm_809/while/lstm_cell_809/BiasAddBiasAdd3sequential_269/lstm_809/while/lstm_cell_809/add:z:0Jsequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_269/lstm_809/while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_269/lstm_809/while/lstm_cell_809/splitSplitDsequential_269/lstm_809/while/lstm_cell_809/split/split_dim:output:0<sequential_269/lstm_809/while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_269/lstm_809/while/lstm_cell_809/SigmoidSigmoid:sequential_269/lstm_809/while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_269/lstm_809/while/lstm_cell_809/Sigmoid_1Sigmoid:sequential_269/lstm_809/while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_269/lstm_809/while/lstm_cell_809/mulMul9sequential_269/lstm_809/while/lstm_cell_809/Sigmoid_1:y:0+sequential_269_lstm_809_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_269/lstm_809/while/lstm_cell_809/ReluRelu:sequential_269/lstm_809/while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_269/lstm_809/while/lstm_cell_809/mul_1Mul7sequential_269/lstm_809/while/lstm_cell_809/Sigmoid:y:0>sequential_269/lstm_809/while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_269/lstm_809/while/lstm_cell_809/add_1AddV23sequential_269/lstm_809/while/lstm_cell_809/mul:z:05sequential_269/lstm_809/while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_269/lstm_809/while/lstm_cell_809/Sigmoid_2Sigmoid:sequential_269/lstm_809/while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_269/lstm_809/while/lstm_cell_809/Relu_1Relu5sequential_269/lstm_809/while/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_269/lstm_809/while/lstm_cell_809/mul_2Mul9sequential_269/lstm_809/while/lstm_cell_809/Sigmoid_2:y:0@sequential_269/lstm_809/while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_269/lstm_809/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_269_lstm_809_while_placeholder_1)sequential_269_lstm_809_while_placeholder5sequential_269/lstm_809/while/lstm_cell_809/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_269/lstm_809/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_269/lstm_809/while/addAddV2)sequential_269_lstm_809_while_placeholder,sequential_269/lstm_809/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_269/lstm_809/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_269/lstm_809/while/add_1AddV2Hsequential_269_lstm_809_while_sequential_269_lstm_809_while_loop_counter.sequential_269/lstm_809/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_269/lstm_809/while/IdentityIdentity'sequential_269/lstm_809/while/add_1:z:0#^sequential_269/lstm_809/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_269/lstm_809/while/Identity_1IdentityNsequential_269_lstm_809_while_sequential_269_lstm_809_while_maximum_iterations#^sequential_269/lstm_809/while/NoOp*
T0*
_output_shapes
: А
(sequential_269/lstm_809/while/Identity_2Identity%sequential_269/lstm_809/while/add:z:0#^sequential_269/lstm_809/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_269/lstm_809/while/Identity_3IdentityRsequential_269/lstm_809/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_269/lstm_809/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_269/lstm_809/while/Identity_4Identity5sequential_269/lstm_809/while/lstm_cell_809/mul_2:z:0#^sequential_269/lstm_809/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_269/lstm_809/while/Identity_5Identity5sequential_269/lstm_809/while/lstm_cell_809/add_1:z:0#^sequential_269/lstm_809/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_269/lstm_809/while/NoOpNoOpC^sequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpB^sequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpD^sequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_269_lstm_809_while_identity/sequential_269/lstm_809/while/Identity:output:0"]
(sequential_269_lstm_809_while_identity_11sequential_269/lstm_809/while/Identity_1:output:0"]
(sequential_269_lstm_809_while_identity_21sequential_269/lstm_809/while/Identity_2:output:0"]
(sequential_269_lstm_809_while_identity_31sequential_269/lstm_809/while/Identity_3:output:0"]
(sequential_269_lstm_809_while_identity_41sequential_269/lstm_809/while/Identity_4:output:0"]
(sequential_269_lstm_809_while_identity_51sequential_269/lstm_809/while/Identity_5:output:0"ю
Ksequential_269_lstm_809_while_lstm_cell_809_biasadd_readvariableop_resourceMsequential_269_lstm_809_while_lstm_cell_809_biasadd_readvariableop_resource_0"ъ
Lsequential_269_lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resourceNsequential_269_lstm_809_while_lstm_cell_809_matmul_1_readvariableop_resource_0"џ
Jsequential_269_lstm_809_while_lstm_cell_809_matmul_readvariableop_resourceLsequential_269_lstm_809_while_lstm_cell_809_matmul_readvariableop_resource_0"љ
Esequential_269_lstm_809_while_sequential_269_lstm_809_strided_slice_1Gsequential_269_lstm_809_while_sequential_269_lstm_809_strided_slice_1_0"і
Ђsequential_269_lstm_809_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_809_tensorarrayunstack_tensorlistfromtensorЃsequential_269_lstm_809_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_809_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOpBsequential_269/lstm_809/while/lstm_cell_809/BiasAdd/ReadVariableOp2є
Asequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOpAsequential_269/lstm_809/while/lstm_cell_809/MatMul/ReadVariableOp2і
Csequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOpCsequential_269/lstm_809/while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Г
╣
*__inference_lstm_808_layer_call_fn_4914364
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911249|
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
Л8
┌
while_body_4914445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4914114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4914114___redundant_placeholder05
1while_while_cond_4914114___redundant_placeholder15
1while_while_cond_4914114___redundant_placeholder25
1while_while_cond_4914114___redundant_placeholder3
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
*__inference_lstm_808_layer_call_fn_4914353
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911058|
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
»8
ј
E__inference_lstm_807_layer_call_and_return_conditional_losses_4910708

inputs(
lstm_cell_807_4910626:	љ(
lstm_cell_807_4910628:	dљ$
lstm_cell_807_4910630:	љ
identityѕб%lstm_cell_807/StatefulPartitionedCallбwhile;
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
%lstm_cell_807/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_807_4910626lstm_cell_807_4910628lstm_cell_807_4910630*
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910625n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_807_4910626lstm_cell_807_4910628lstm_cell_807_4910630*
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
while_body_4910639*
condR
while_cond_4910638*K
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
NoOpNoOp&^lstm_cell_807/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_807/StatefulPartitionedCall%lstm_cell_807/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_4910829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4910829___redundant_placeholder05
1while_while_cond_4910829___redundant_placeholder15
1while_while_cond_4910829___redundant_placeholder25
1while_while_cond_4910829___redundant_placeholder3
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
while_cond_4911972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911972___redundant_placeholder05
1while_while_cond_4911972___redundant_placeholder15
1while_while_cond_4911972___redundant_placeholder25
1while_while_cond_4911972___redundant_placeholder3
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
█
е
*sequential_269_lstm_808_while_cond_4910328L
Hsequential_269_lstm_808_while_sequential_269_lstm_808_while_loop_counterR
Nsequential_269_lstm_808_while_sequential_269_lstm_808_while_maximum_iterations-
)sequential_269_lstm_808_while_placeholder/
+sequential_269_lstm_808_while_placeholder_1/
+sequential_269_lstm_808_while_placeholder_2/
+sequential_269_lstm_808_while_placeholder_3N
Jsequential_269_lstm_808_while_less_sequential_269_lstm_808_strided_slice_1e
asequential_269_lstm_808_while_sequential_269_lstm_808_while_cond_4910328___redundant_placeholder0e
asequential_269_lstm_808_while_sequential_269_lstm_808_while_cond_4910328___redundant_placeholder1e
asequential_269_lstm_808_while_sequential_269_lstm_808_while_cond_4910328___redundant_placeholder2e
asequential_269_lstm_808_while_sequential_269_lstm_808_while_cond_4910328___redundant_placeholder3*
&sequential_269_lstm_808_while_identity
┬
"sequential_269/lstm_808/while/LessLess)sequential_269_lstm_808_while_placeholderJsequential_269_lstm_808_while_less_sequential_269_lstm_808_strided_slice_1*
T0*
_output_shapes
: {
&sequential_269/lstm_808/while/IdentityIdentity&sequential_269/lstm_808/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_269_lstm_808_while_identity/sequential_269/lstm_808/while/Identity:output:0*(
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
аK
Ц
E__inference_lstm_807_layer_call_and_return_conditional_losses_4913913
inputs_0?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4913829*
condR
while_cond_4913828*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╔	
э
F__inference_dense_269_layer_call_and_return_conditional_losses_4915593

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
Л8
┌
while_body_4914258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_808_while_cond_4913069.
*lstm_808_while_lstm_808_while_loop_counter4
0lstm_808_while_lstm_808_while_maximum_iterations
lstm_808_while_placeholder 
lstm_808_while_placeholder_1 
lstm_808_while_placeholder_2 
lstm_808_while_placeholder_30
,lstm_808_while_less_lstm_808_strided_slice_1G
Clstm_808_while_lstm_808_while_cond_4913069___redundant_placeholder0G
Clstm_808_while_lstm_808_while_cond_4913069___redundant_placeholder1G
Clstm_808_while_lstm_808_while_cond_4913069___redundant_placeholder2G
Clstm_808_while_lstm_808_while_cond_4913069___redundant_placeholder3
lstm_808_while_identity
є
lstm_808/while/LessLesslstm_808_while_placeholder,lstm_808_while_less_lstm_808_strided_slice_1*
T0*
_output_shapes
: ]
lstm_808/while/IdentityIdentitylstm_808/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_808_while_identity lstm_808/while/Identity:output:0*(
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
Ш

ц
0__inference_sequential_269_layer_call_fn_4912107
lstm_807_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_807_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912082o
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
_user_specified_namelstm_807_input
О
є
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910771

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
чT
я
*sequential_269_lstm_808_while_body_4910329L
Hsequential_269_lstm_808_while_sequential_269_lstm_808_while_loop_counterR
Nsequential_269_lstm_808_while_sequential_269_lstm_808_while_maximum_iterations-
)sequential_269_lstm_808_while_placeholder/
+sequential_269_lstm_808_while_placeholder_1/
+sequential_269_lstm_808_while_placeholder_2/
+sequential_269_lstm_808_while_placeholder_3K
Gsequential_269_lstm_808_while_sequential_269_lstm_808_strided_slice_1_0ѕ
Ѓsequential_269_lstm_808_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_808_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_269_lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚a
Nsequential_269_lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚\
Msequential_269_lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚*
&sequential_269_lstm_808_while_identity,
(sequential_269_lstm_808_while_identity_1,
(sequential_269_lstm_808_while_identity_2,
(sequential_269_lstm_808_while_identity_3,
(sequential_269_lstm_808_while_identity_4,
(sequential_269_lstm_808_while_identity_5I
Esequential_269_lstm_808_while_sequential_269_lstm_808_strided_slice_1є
Ђsequential_269_lstm_808_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_808_tensorarrayunstack_tensorlistfromtensor]
Jsequential_269_lstm_808_while_lstm_cell_808_matmul_readvariableop_resource:	d╚_
Lsequential_269_lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚Z
Ksequential_269_lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕбBsequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpбAsequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpбCsequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpа
Osequential_269/lstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_269/lstm_808/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_269_lstm_808_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_808_tensorarrayunstack_tensorlistfromtensor_0)sequential_269_lstm_808_while_placeholderXsequential_269/lstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOpLsequential_269_lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_269/lstm_808/while/lstm_cell_808/MatMulMatMulHsequential_269/lstm_808/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOpNsequential_269_lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_269/lstm_808/while/lstm_cell_808/MatMul_1MatMul+sequential_269_lstm_808_while_placeholder_2Ksequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_269/lstm_808/while/lstm_cell_808/addAddV2<sequential_269/lstm_808/while/lstm_cell_808/MatMul:product:0>sequential_269/lstm_808/while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOpMsequential_269_lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_269/lstm_808/while/lstm_cell_808/BiasAddBiasAdd3sequential_269/lstm_808/while/lstm_cell_808/add:z:0Jsequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_269/lstm_808/while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_269/lstm_808/while/lstm_cell_808/splitSplitDsequential_269/lstm_808/while/lstm_cell_808/split/split_dim:output:0<sequential_269/lstm_808/while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_269/lstm_808/while/lstm_cell_808/SigmoidSigmoid:sequential_269/lstm_808/while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_269/lstm_808/while/lstm_cell_808/Sigmoid_1Sigmoid:sequential_269/lstm_808/while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_269/lstm_808/while/lstm_cell_808/mulMul9sequential_269/lstm_808/while/lstm_cell_808/Sigmoid_1:y:0+sequential_269_lstm_808_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_269/lstm_808/while/lstm_cell_808/ReluRelu:sequential_269/lstm_808/while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_269/lstm_808/while/lstm_cell_808/mul_1Mul7sequential_269/lstm_808/while/lstm_cell_808/Sigmoid:y:0>sequential_269/lstm_808/while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_269/lstm_808/while/lstm_cell_808/add_1AddV23sequential_269/lstm_808/while/lstm_cell_808/mul:z:05sequential_269/lstm_808/while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_269/lstm_808/while/lstm_cell_808/Sigmoid_2Sigmoid:sequential_269/lstm_808/while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_269/lstm_808/while/lstm_cell_808/Relu_1Relu5sequential_269/lstm_808/while/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_269/lstm_808/while/lstm_cell_808/mul_2Mul9sequential_269/lstm_808/while/lstm_cell_808/Sigmoid_2:y:0@sequential_269/lstm_808/while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_269/lstm_808/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_269_lstm_808_while_placeholder_1)sequential_269_lstm_808_while_placeholder5sequential_269/lstm_808/while/lstm_cell_808/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_269/lstm_808/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_269/lstm_808/while/addAddV2)sequential_269_lstm_808_while_placeholder,sequential_269/lstm_808/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_269/lstm_808/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_269/lstm_808/while/add_1AddV2Hsequential_269_lstm_808_while_sequential_269_lstm_808_while_loop_counter.sequential_269/lstm_808/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_269/lstm_808/while/IdentityIdentity'sequential_269/lstm_808/while/add_1:z:0#^sequential_269/lstm_808/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_269/lstm_808/while/Identity_1IdentityNsequential_269_lstm_808_while_sequential_269_lstm_808_while_maximum_iterations#^sequential_269/lstm_808/while/NoOp*
T0*
_output_shapes
: А
(sequential_269/lstm_808/while/Identity_2Identity%sequential_269/lstm_808/while/add:z:0#^sequential_269/lstm_808/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_269/lstm_808/while/Identity_3IdentityRsequential_269/lstm_808/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_269/lstm_808/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_269/lstm_808/while/Identity_4Identity5sequential_269/lstm_808/while/lstm_cell_808/mul_2:z:0#^sequential_269/lstm_808/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_269/lstm_808/while/Identity_5Identity5sequential_269/lstm_808/while/lstm_cell_808/add_1:z:0#^sequential_269/lstm_808/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_269/lstm_808/while/NoOpNoOpC^sequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpB^sequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpD^sequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_269_lstm_808_while_identity/sequential_269/lstm_808/while/Identity:output:0"]
(sequential_269_lstm_808_while_identity_11sequential_269/lstm_808/while/Identity_1:output:0"]
(sequential_269_lstm_808_while_identity_21sequential_269/lstm_808/while/Identity_2:output:0"]
(sequential_269_lstm_808_while_identity_31sequential_269/lstm_808/while/Identity_3:output:0"]
(sequential_269_lstm_808_while_identity_41sequential_269/lstm_808/while/Identity_4:output:0"]
(sequential_269_lstm_808_while_identity_51sequential_269/lstm_808/while/Identity_5:output:0"ю
Ksequential_269_lstm_808_while_lstm_cell_808_biasadd_readvariableop_resourceMsequential_269_lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0"ъ
Lsequential_269_lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resourceNsequential_269_lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0"џ
Jsequential_269_lstm_808_while_lstm_cell_808_matmul_readvariableop_resourceLsequential_269_lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0"љ
Esequential_269_lstm_808_while_sequential_269_lstm_808_strided_slice_1Gsequential_269_lstm_808_while_sequential_269_lstm_808_strided_slice_1_0"і
Ђsequential_269_lstm_808_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_808_tensorarrayunstack_tensorlistfromtensorЃsequential_269_lstm_808_while_tensorarrayv2read_tensorlistgetitem_sequential_269_lstm_808_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpBsequential_269/lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp2є
Asequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpAsequential_269/lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp2і
Csequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpCsequential_269/lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4911599

inputs'
lstm_cell_809_4911517:2('
lstm_cell_809_4911519:
(#
lstm_cell_809_4911521:(
identityѕб%lstm_cell_809/StatefulPartitionedCallбwhile;
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
%lstm_cell_809/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_809_4911517lstm_cell_809_4911519lstm_cell_809_4911521*
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911471n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_809_4911517lstm_cell_809_4911519lstm_cell_809_4911521*
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
while_body_4911530*
condR
while_cond_4911529*K
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
NoOpNoOp&^lstm_cell_809/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_809/StatefulPartitionedCall%lstm_cell_809/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Л8
┌
while_body_4913829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_807_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_807_matmul_readvariableop_resource:	љG
4while_lstm_cell_807_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_807/BiasAdd/ReadVariableOpб)while/lstm_cell_807/MatMul/ReadVariableOpб+while/lstm_cell_807/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_807/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_807/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_807/addAddV2$while/lstm_cell_807/MatMul:product:0&while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_807/BiasAddBiasAddwhile/lstm_cell_807/add:z:02while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_807/splitSplit,while/lstm_cell_807/split/split_dim:output:0$while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_807/SigmoidSigmoid"while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_1Sigmoid"while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_807/mulMul!while/lstm_cell_807/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_807/ReluRelu"while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_807/mul_1Mulwhile/lstm_cell_807/Sigmoid:y:0&while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_807/add_1AddV2while/lstm_cell_807/mul:z:0while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_807/Sigmoid_2Sigmoid"while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_807/Relu_1Reluwhile/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_807/mul_2Mul!while/lstm_cell_807/Sigmoid_2:y:0(while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_807/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_807/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_807/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_807/BiasAdd/ReadVariableOp*^while/lstm_cell_807/MatMul/ReadVariableOp,^while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_807_biasadd_readvariableop_resource5while_lstm_cell_807_biasadd_readvariableop_resource_0"n
4while_lstm_cell_807_matmul_1_readvariableop_resource6while_lstm_cell_807_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_807_matmul_readvariableop_resource4while_lstm_cell_807_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_807/BiasAdd/ReadVariableOp*while/lstm_cell_807/BiasAdd/ReadVariableOp2V
)while/lstm_cell_807/MatMul/ReadVariableOp)while/lstm_cell_807/MatMul/ReadVariableOp2Z
+while/lstm_cell_807/MatMul_1/ReadVariableOp+while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4911179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911179___redundant_placeholder05
1while_while_cond_4911179___redundant_placeholder15
1while_while_cond_4911179___redundant_placeholder25
1while_while_cond_4911179___redundant_placeholder3
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
╔	
э
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075

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
я

ю
0__inference_sequential_269_layer_call_fn_4912872

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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912671o
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
АC
Щ

lstm_808_while_body_4913497.
*lstm_808_while_lstm_808_while_loop_counter4
0lstm_808_while_lstm_808_while_maximum_iterations
lstm_808_while_placeholder 
lstm_808_while_placeholder_1 
lstm_808_while_placeholder_2 
lstm_808_while_placeholder_3-
)lstm_808_while_lstm_808_strided_slice_1_0i
elstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚R
?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚M
>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
lstm_808_while_identity
lstm_808_while_identity_1
lstm_808_while_identity_2
lstm_808_while_identity_3
lstm_808_while_identity_4
lstm_808_while_identity_5+
'lstm_808_while_lstm_808_strided_slice_1g
clstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensorN
;lstm_808_while_lstm_cell_808_matmul_readvariableop_resource:	d╚P
=lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚K
<lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpб2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpб4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpЉ
@lstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_808/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0lstm_808_while_placeholderIlstm_808/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_808/while/lstm_cell_808/MatMulMatMul9lstm_808/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_808/while/lstm_cell_808/MatMul_1MatMullstm_808_while_placeholder_2<lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_808/while/lstm_cell_808/addAddV2-lstm_808/while/lstm_cell_808/MatMul:product:0/lstm_808/while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_808/while/lstm_cell_808/BiasAddBiasAdd$lstm_808/while/lstm_cell_808/add:z:0;lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_808/while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_808/while/lstm_cell_808/splitSplit5lstm_808/while/lstm_cell_808/split/split_dim:output:0-lstm_808/while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_808/while/lstm_cell_808/SigmoidSigmoid+lstm_808/while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_808/while/lstm_cell_808/Sigmoid_1Sigmoid+lstm_808/while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_808/while/lstm_cell_808/mulMul*lstm_808/while/lstm_cell_808/Sigmoid_1:y:0lstm_808_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_808/while/lstm_cell_808/ReluRelu+lstm_808/while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_808/while/lstm_cell_808/mul_1Mul(lstm_808/while/lstm_cell_808/Sigmoid:y:0/lstm_808/while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_808/while/lstm_cell_808/add_1AddV2$lstm_808/while/lstm_cell_808/mul:z:0&lstm_808/while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_808/while/lstm_cell_808/Sigmoid_2Sigmoid+lstm_808/while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_808/while/lstm_cell_808/Relu_1Relu&lstm_808/while/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_808/while/lstm_cell_808/mul_2Mul*lstm_808/while/lstm_cell_808/Sigmoid_2:y:01lstm_808/while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_808/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_808_while_placeholder_1lstm_808_while_placeholder&lstm_808/while/lstm_cell_808/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_808/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_808/while/addAddV2lstm_808_while_placeholderlstm_808/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_808/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_808/while/add_1AddV2*lstm_808_while_lstm_808_while_loop_counterlstm_808/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_808/while/IdentityIdentitylstm_808/while/add_1:z:0^lstm_808/while/NoOp*
T0*
_output_shapes
: ј
lstm_808/while/Identity_1Identity0lstm_808_while_lstm_808_while_maximum_iterations^lstm_808/while/NoOp*
T0*
_output_shapes
: t
lstm_808/while/Identity_2Identitylstm_808/while/add:z:0^lstm_808/while/NoOp*
T0*
_output_shapes
: А
lstm_808/while/Identity_3IdentityClstm_808/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_808/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_808/while/Identity_4Identity&lstm_808/while/lstm_cell_808/mul_2:z:0^lstm_808/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_808/while/Identity_5Identity&lstm_808/while/lstm_cell_808/add_1:z:0^lstm_808/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_808/while/NoOpNoOp4^lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp3^lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp5^lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_808_while_identity lstm_808/while/Identity:output:0"?
lstm_808_while_identity_1"lstm_808/while/Identity_1:output:0"?
lstm_808_while_identity_2"lstm_808/while/Identity_2:output:0"?
lstm_808_while_identity_3"lstm_808/while/Identity_3:output:0"?
lstm_808_while_identity_4"lstm_808/while/Identity_4:output:0"?
lstm_808_while_identity_5"lstm_808/while/Identity_5:output:0"T
'lstm_808_while_lstm_808_strided_slice_1)lstm_808_while_lstm_808_strided_slice_1_0"~
<lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource>lstm_808_while_lstm_cell_808_biasadd_readvariableop_resource_0"ђ
=lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource?lstm_808_while_lstm_cell_808_matmul_1_readvariableop_resource_0"|
;lstm_808_while_lstm_cell_808_matmul_readvariableop_resource=lstm_808_while_lstm_cell_808_matmul_readvariableop_resource_0"╠
clstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensorelstm_808_while_tensorarrayv2read_tensorlistgetitem_lstm_808_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp3lstm_808/while/lstm_cell_808/BiasAdd/ReadVariableOp2h
2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp2lstm_808/while/lstm_cell_808/MatMul/ReadVariableOp2l
4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp4lstm_808/while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4910989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_808_4911013_0:	d╚0
while_lstm_cell_808_4911015_0:	2╚,
while_lstm_cell_808_4911017_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_808_4911013:	d╚.
while_lstm_cell_808_4911015:	2╚*
while_lstm_cell_808_4911017:	╚ѕб+while/lstm_cell_808/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_808/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_808_4911013_0while_lstm_cell_808_4911015_0while_lstm_cell_808_4911017_0*
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4910975П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_808/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_808/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_808/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_808/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_808_4911013while_lstm_cell_808_4911013_0"<
while_lstm_cell_808_4911015while_lstm_cell_808_4911015_0"<
while_lstm_cell_808_4911017while_lstm_cell_808_4911017_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_808/StatefulPartitionedCall+while/lstm_cell_808/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Л8
┌
while_body_4914731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
»8
ј
E__inference_lstm_808_layer_call_and_return_conditional_losses_4911249

inputs(
lstm_cell_808_4911167:	d╚(
lstm_cell_808_4911169:	2╚$
lstm_cell_808_4911171:	╚
identityѕб%lstm_cell_808/StatefulPartitionedCallбwhile;
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
%lstm_cell_808/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_808_4911167lstm_cell_808_4911169lstm_cell_808_4911171*
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4911121n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_808_4911167lstm_cell_808_4911169lstm_cell_808_4911171*
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
while_body_4911180*
condR
while_cond_4911179*K
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
NoOpNoOp&^lstm_cell_808/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_808/StatefulPartitionedCall%lstm_cell_808/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914958

inputs?
,lstm_cell_808_matmul_readvariableop_resource:	d╚A
.lstm_cell_808_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_808_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_808/BiasAdd/ReadVariableOpб#lstm_cell_808/MatMul/ReadVariableOpб%lstm_cell_808/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_808/MatMul/ReadVariableOpReadVariableOp,lstm_cell_808_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_808/MatMulMatMulstrided_slice_2:output:0+lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_808_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_808/MatMul_1MatMulzeros:output:0-lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_808/addAddV2lstm_cell_808/MatMul:product:0 lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_808_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_808/BiasAddBiasAddlstm_cell_808/add:z:0,lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_808/splitSplit&lstm_cell_808/split/split_dim:output:0lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_808/SigmoidSigmoidlstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_1Sigmoidlstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_808/mulMullstm_cell_808/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_808/ReluRelulstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_808/mul_1Mullstm_cell_808/Sigmoid:y:0 lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_808/add_1AddV2lstm_cell_808/mul:z:0lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_808/Sigmoid_2Sigmoidlstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_808/Relu_1Relulstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_808/mul_2Mullstm_cell_808/Sigmoid_2:y:0"lstm_cell_808/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_808_matmul_readvariableop_resource.lstm_cell_808_matmul_1_readvariableop_resource-lstm_cell_808_biasadd_readvariableop_resource*
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
while_body_4914874*
condR
while_cond_4914873*K
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
NoOpNoOp%^lstm_cell_808/BiasAdd/ReadVariableOp$^lstm_cell_808/MatMul/ReadVariableOp&^lstm_cell_808/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_808/BiasAdd/ReadVariableOp$lstm_cell_808/BiasAdd/ReadVariableOp2J
#lstm_cell_808/MatMul/ReadVariableOp#lstm_cell_808/MatMul/ReadVariableOp2N
%lstm_cell_808/MatMul_1/ReadVariableOp%lstm_cell_808/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
љ
Х
*__inference_lstm_809_layer_call_fn_4914980
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4911599o
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
Э
┤
*__inference_lstm_809_layer_call_fn_4915002

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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912273o
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
║
╚
while_cond_4915489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4915489___redundant_placeholder05
1while_while_cond_4915489___redundant_placeholder15
1while_while_cond_4915489___redundant_placeholder25
1while_while_cond_4915489___redundant_placeholder3
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
Ѕ#
в
while_body_4911339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_809_4911363_0:2(/
while_lstm_cell_809_4911365_0:
(+
while_lstm_cell_809_4911367_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_809_4911363:2(-
while_lstm_cell_809_4911365:
()
while_lstm_cell_809_4911367:(ѕб+while/lstm_cell_809/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_809/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_809_4911363_0while_lstm_cell_809_4911365_0while_lstm_cell_809_4911367_0*
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911325П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_809/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_809/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_809/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_809_4911363while_lstm_cell_809_4911363_0"<
while_lstm_cell_809_4911365while_lstm_cell_809_4911365_0"<
while_lstm_cell_809_4911367while_lstm_cell_809_4911367_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_809/StatefulPartitionedCall+while/lstm_cell_809/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
АC
Щ

lstm_807_while_body_4912931.
*lstm_807_while_lstm_807_while_loop_counter4
0lstm_807_while_lstm_807_while_maximum_iterations
lstm_807_while_placeholder 
lstm_807_while_placeholder_1 
lstm_807_while_placeholder_2 
lstm_807_while_placeholder_3-
)lstm_807_while_lstm_807_strided_slice_1_0i
elstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0:	љR
?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0:	dљM
>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0:	љ
lstm_807_while_identity
lstm_807_while_identity_1
lstm_807_while_identity_2
lstm_807_while_identity_3
lstm_807_while_identity_4
lstm_807_while_identity_5+
'lstm_807_while_lstm_807_strided_slice_1g
clstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensorN
;lstm_807_while_lstm_cell_807_matmul_readvariableop_resource:	љP
=lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource:	dљK
<lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource:	љѕб3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpб2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpб4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpЉ
@lstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_807/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0lstm_807_while_placeholderIlstm_807/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOpReadVariableOp=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_807/while/lstm_cell_807/MatMulMatMul9lstm_807/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_807/while/lstm_cell_807/MatMul_1MatMullstm_807_while_placeholder_2<lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_807/while/lstm_cell_807/addAddV2-lstm_807/while/lstm_cell_807/MatMul:product:0/lstm_807/while/lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_807/while/lstm_cell_807/BiasAddBiasAdd$lstm_807/while/lstm_cell_807/add:z:0;lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_807/while/lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_807/while/lstm_cell_807/splitSplit5lstm_807/while/lstm_cell_807/split/split_dim:output:0-lstm_807/while/lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_807/while/lstm_cell_807/SigmoidSigmoid+lstm_807/while/lstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_807/while/lstm_cell_807/Sigmoid_1Sigmoid+lstm_807/while/lstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_807/while/lstm_cell_807/mulMul*lstm_807/while/lstm_cell_807/Sigmoid_1:y:0lstm_807_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_807/while/lstm_cell_807/ReluRelu+lstm_807/while/lstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_807/while/lstm_cell_807/mul_1Mul(lstm_807/while/lstm_cell_807/Sigmoid:y:0/lstm_807/while/lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_807/while/lstm_cell_807/add_1AddV2$lstm_807/while/lstm_cell_807/mul:z:0&lstm_807/while/lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_807/while/lstm_cell_807/Sigmoid_2Sigmoid+lstm_807/while/lstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_807/while/lstm_cell_807/Relu_1Relu&lstm_807/while/lstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_807/while/lstm_cell_807/mul_2Mul*lstm_807/while/lstm_cell_807/Sigmoid_2:y:01lstm_807/while/lstm_cell_807/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_807/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_807_while_placeholder_1lstm_807_while_placeholder&lstm_807/while/lstm_cell_807/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_807/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_807/while/addAddV2lstm_807_while_placeholderlstm_807/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_807/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_807/while/add_1AddV2*lstm_807_while_lstm_807_while_loop_counterlstm_807/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_807/while/IdentityIdentitylstm_807/while/add_1:z:0^lstm_807/while/NoOp*
T0*
_output_shapes
: ј
lstm_807/while/Identity_1Identity0lstm_807_while_lstm_807_while_maximum_iterations^lstm_807/while/NoOp*
T0*
_output_shapes
: t
lstm_807/while/Identity_2Identitylstm_807/while/add:z:0^lstm_807/while/NoOp*
T0*
_output_shapes
: А
lstm_807/while/Identity_3IdentityClstm_807/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_807/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_807/while/Identity_4Identity&lstm_807/while/lstm_cell_807/mul_2:z:0^lstm_807/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_807/while/Identity_5Identity&lstm_807/while/lstm_cell_807/add_1:z:0^lstm_807/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_807/while/NoOpNoOp4^lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp3^lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp5^lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_807_while_identity lstm_807/while/Identity:output:0"?
lstm_807_while_identity_1"lstm_807/while/Identity_1:output:0"?
lstm_807_while_identity_2"lstm_807/while/Identity_2:output:0"?
lstm_807_while_identity_3"lstm_807/while/Identity_3:output:0"?
lstm_807_while_identity_4"lstm_807/while/Identity_4:output:0"?
lstm_807_while_identity_5"lstm_807/while/Identity_5:output:0"T
'lstm_807_while_lstm_807_strided_slice_1)lstm_807_while_lstm_807_strided_slice_1_0"~
<lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource>lstm_807_while_lstm_cell_807_biasadd_readvariableop_resource_0"ђ
=lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource?lstm_807_while_lstm_cell_807_matmul_1_readvariableop_resource_0"|
;lstm_807_while_lstm_cell_807_matmul_readvariableop_resource=lstm_807_while_lstm_cell_807_matmul_readvariableop_resource_0"╠
clstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensorelstm_807_while_tensorarrayv2read_tensorlistgetitem_lstm_807_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp3lstm_807/while/lstm_cell_807/BiasAdd/ReadVariableOp2h
2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp2lstm_807/while/lstm_cell_807/MatMul/ReadVariableOp2l
4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp4lstm_807/while/lstm_cell_807/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
═
Ѓ
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911471

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
О
є
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4910975

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
while_body_4914588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4913971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4913971___redundant_placeholder05
1while_while_cond_4913971___redundant_placeholder15
1while_while_cond_4913971___redundant_placeholder25
1while_while_cond_4913971___redundant_placeholder3
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
while_cond_4911672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4911672___redundant_placeholder05
1while_while_cond_4911672___redundant_placeholder15
1while_while_cond_4911672___redundant_placeholder25
1while_while_cond_4911672___redundant_placeholder3
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
е8
І
E__inference_lstm_809_layer_call_and_return_conditional_losses_4911408

inputs'
lstm_cell_809_4911326:2('
lstm_cell_809_4911328:
(#
lstm_cell_809_4911330:(
identityѕб%lstm_cell_809/StatefulPartitionedCallбwhile;
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
%lstm_cell_809/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_809_4911326lstm_cell_809_4911328lstm_cell_809_4911330*
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911325n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_809_4911326lstm_cell_809_4911328lstm_cell_809_4911330*
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
while_body_4911339*
condR
while_cond_4911338*K
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
NoOpNoOp&^lstm_cell_809/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_809/StatefulPartitionedCall%lstm_cell_809/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Ж
Ѓ
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912783
lstm_807_input#
lstm_807_4912756:	љ#
lstm_807_4912758:	dљ
lstm_807_4912760:	љ#
lstm_808_4912763:	d╚#
lstm_808_4912765:	2╚
lstm_808_4912767:	╚"
lstm_809_4912770:2("
lstm_809_4912772:
(
lstm_809_4912774:(#
dense_269_4912777:

dense_269_4912779:
identityѕб!dense_269/StatefulPartitionedCallб lstm_807/StatefulPartitionedCallб lstm_808/StatefulPartitionedCallб lstm_809/StatefulPartitionedCallЊ
 lstm_807/StatefulPartitionedCallStatefulPartitionedCalllstm_807_inputlstm_807_4912756lstm_807_4912758lstm_807_4912760*
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4912603«
 lstm_808/StatefulPartitionedCallStatefulPartitionedCall)lstm_807/StatefulPartitionedCall:output:0lstm_808_4912763lstm_808_4912765lstm_808_4912767*
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4912438ф
 lstm_809/StatefulPartitionedCallStatefulPartitionedCall)lstm_808/StatefulPartitionedCall:output:0lstm_809_4912770lstm_809_4912772lstm_809_4912774*
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4912273џ
!dense_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_809/StatefulPartitionedCall:output:0dense_269_4912777dense_269_4912779*
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
F__inference_dense_269_layer_call_and_return_conditional_losses_4912075y
IdentityIdentity*dense_269/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_269/StatefulPartitionedCall!^lstm_807/StatefulPartitionedCall!^lstm_808/StatefulPartitionedCall!^lstm_809/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_269/StatefulPartitionedCall!dense_269/StatefulPartitionedCall2D
 lstm_807/StatefulPartitionedCall lstm_807/StatefulPartitionedCall2D
 lstm_808/StatefulPartitionedCall lstm_808/StatefulPartitionedCall2D
 lstm_809/StatefulPartitionedCall lstm_809/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_807_input
═
Ѓ
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4911325

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
─8
н
while_body_4915490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_809_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_809_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_809_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_809_matmul_readvariableop_resource:2(F
4while_lstm_cell_809_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_809_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_809/BiasAdd/ReadVariableOpб)while/lstm_cell_809/MatMul/ReadVariableOpб+while/lstm_cell_809/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_809/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_809_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_809/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_809_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_809/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_809/addAddV2$while/lstm_cell_809/MatMul:product:0&while/lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_809_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_809/BiasAddBiasAddwhile/lstm_cell_809/add:z:02while/lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_809/splitSplit,while/lstm_cell_809/split/split_dim:output:0$while/lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_809/SigmoidSigmoid"while/lstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_1Sigmoid"while/lstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_809/mulMul!while/lstm_cell_809/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_809/ReluRelu"while/lstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_809/mul_1Mulwhile/lstm_cell_809/Sigmoid:y:0&while/lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_809/add_1AddV2while/lstm_cell_809/mul:z:0while/lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_809/Sigmoid_2Sigmoid"while/lstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_809/Relu_1Reluwhile/lstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_809/mul_2Mul!while/lstm_cell_809/Sigmoid_2:y:0(while/lstm_cell_809/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_809/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_809/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_809/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_809/BiasAdd/ReadVariableOp*^while/lstm_cell_809/MatMul/ReadVariableOp,^while/lstm_cell_809/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_809_biasadd_readvariableop_resource5while_lstm_cell_809_biasadd_readvariableop_resource_0"n
4while_lstm_cell_809_matmul_1_readvariableop_resource6while_lstm_cell_809_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_809_matmul_readvariableop_resource4while_lstm_cell_809_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_809/BiasAdd/ReadVariableOp*while/lstm_cell_809/BiasAdd/ReadVariableOp2V
)while/lstm_cell_809/MatMul/ReadVariableOp)while/lstm_cell_809/MatMul/ReadVariableOp2Z
+while/lstm_cell_809/MatMul_1/ReadVariableOp+while/lstm_cell_809/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915431

inputs>
,lstm_cell_809_matmul_readvariableop_resource:2(@
.lstm_cell_809_matmul_1_readvariableop_resource:
(;
-lstm_cell_809_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_809/BiasAdd/ReadVariableOpб#lstm_cell_809/MatMul/ReadVariableOpб%lstm_cell_809/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_809/MatMul/ReadVariableOpReadVariableOp,lstm_cell_809_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_809/MatMulMatMulstrided_slice_2:output:0+lstm_cell_809/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_809/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_809_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_809/MatMul_1MatMulzeros:output:0-lstm_cell_809/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_809/addAddV2lstm_cell_809/MatMul:product:0 lstm_cell_809/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_809/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_809_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_809/BiasAddBiasAddlstm_cell_809/add:z:0,lstm_cell_809/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_809/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_809/splitSplit&lstm_cell_809/split/split_dim:output:0lstm_cell_809/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_809/SigmoidSigmoidlstm_cell_809/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_1Sigmoidlstm_cell_809/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_809/mulMullstm_cell_809/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_809/ReluRelulstm_cell_809/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_809/mul_1Mullstm_cell_809/Sigmoid:y:0 lstm_cell_809/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_809/add_1AddV2lstm_cell_809/mul:z:0lstm_cell_809/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_809/Sigmoid_2Sigmoidlstm_cell_809/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_809/Relu_1Relulstm_cell_809/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_809/mul_2Mullstm_cell_809/Sigmoid_2:y:0"lstm_cell_809/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_809_matmul_readvariableop_resource.lstm_cell_809_matmul_1_readvariableop_resource-lstm_cell_809_biasadd_readvariableop_resource*
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
while_body_4915347*
condR
while_cond_4915346*K
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
NoOpNoOp%^lstm_cell_809/BiasAdd/ReadVariableOp$^lstm_cell_809/MatMul/ReadVariableOp&^lstm_cell_809/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_809/BiasAdd/ReadVariableOp$lstm_cell_809/BiasAdd/ReadVariableOp2J
#lstm_cell_809/MatMul/ReadVariableOp#lstm_cell_809/MatMul/ReadVariableOp2N
%lstm_cell_809/MatMul_1/ReadVariableOp%lstm_cell_809/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_808_layer_call_fn_4915708

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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4910975o
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
Н
Ё
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915887

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
Л8
┌
while_body_4914874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_808_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_808_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_808_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_808_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_808_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_808_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_808/BiasAdd/ReadVariableOpб)while/lstm_cell_808/MatMul/ReadVariableOpб+while/lstm_cell_808/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_808/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_808_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_808/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_808/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_808/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_808_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_808/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_808/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_808/addAddV2$while/lstm_cell_808/MatMul:product:0&while/lstm_cell_808/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_808/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_808_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_808/BiasAddBiasAddwhile/lstm_cell_808/add:z:02while/lstm_cell_808/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_808/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_808/splitSplit,while/lstm_cell_808/split/split_dim:output:0$while/lstm_cell_808/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_808/SigmoidSigmoid"while/lstm_cell_808/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_1Sigmoid"while/lstm_cell_808/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_808/mulMul!while/lstm_cell_808/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_808/ReluRelu"while/lstm_cell_808/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_808/mul_1Mulwhile/lstm_cell_808/Sigmoid:y:0&while/lstm_cell_808/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_808/add_1AddV2while/lstm_cell_808/mul:z:0while/lstm_cell_808/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_808/Sigmoid_2Sigmoid"while/lstm_cell_808/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_808/Relu_1Reluwhile/lstm_cell_808/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_808/mul_2Mul!while/lstm_cell_808/Sigmoid_2:y:0(while/lstm_cell_808/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_808/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_808/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_808/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_808/BiasAdd/ReadVariableOp*^while/lstm_cell_808/MatMul/ReadVariableOp,^while/lstm_cell_808/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_808_biasadd_readvariableop_resource5while_lstm_cell_808_biasadd_readvariableop_resource_0"n
4while_lstm_cell_808_matmul_1_readvariableop_resource6while_lstm_cell_808_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_808_matmul_readvariableop_resource4while_lstm_cell_808_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_808/BiasAdd/ReadVariableOp*while/lstm_cell_808/BiasAdd/ReadVariableOp2V
)while/lstm_cell_808/MatMul/ReadVariableOp)while/lstm_cell_808/MatMul/ReadVariableOp2Z
+while/lstm_cell_808/MatMul_1/ReadVariableOp+while/lstm_cell_808/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
О
є
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4910625

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
*__inference_lstm_807_layer_call_fn_4913759

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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4911757s
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
я

ю
0__inference_sequential_269_layer_call_fn_4912845

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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912082o
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
РJ
Б
E__inference_lstm_807_layer_call_and_return_conditional_losses_4911757

inputs?
,lstm_cell_807_matmul_readvariableop_resource:	љA
.lstm_cell_807_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_807_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_807/BiasAdd/ReadVariableOpб#lstm_cell_807/MatMul/ReadVariableOpб%lstm_cell_807/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_807/MatMul/ReadVariableOpReadVariableOp,lstm_cell_807_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_807/MatMulMatMulstrided_slice_2:output:0+lstm_cell_807/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_807/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_807_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_807/MatMul_1MatMulzeros:output:0-lstm_cell_807/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_807/addAddV2lstm_cell_807/MatMul:product:0 lstm_cell_807/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_807/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_807_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_807/BiasAddBiasAddlstm_cell_807/add:z:0,lstm_cell_807/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_807/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_807/splitSplit&lstm_cell_807/split/split_dim:output:0lstm_cell_807/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_807/SigmoidSigmoidlstm_cell_807/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_1Sigmoidlstm_cell_807/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_807/mulMullstm_cell_807/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_807/ReluRelulstm_cell_807/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_807/mul_1Mullstm_cell_807/Sigmoid:y:0 lstm_cell_807/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_807/add_1AddV2lstm_cell_807/mul:z:0lstm_cell_807/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_807/Sigmoid_2Sigmoidlstm_cell_807/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_807/Relu_1Relulstm_cell_807/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_807/mul_2Mullstm_cell_807/Sigmoid_2:y:0"lstm_cell_807/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_807_matmul_readvariableop_resource.lstm_cell_807_matmul_1_readvariableop_resource-lstm_cell_807_biasadd_readvariableop_resource*
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
while_body_4911673*
condR
while_cond_4911672*K
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
NoOpNoOp%^lstm_cell_807/BiasAdd/ReadVariableOp$^lstm_cell_807/MatMul/ReadVariableOp&^lstm_cell_807/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_807/BiasAdd/ReadVariableOp$lstm_cell_807/BiasAdd/ReadVariableOp2J
#lstm_cell_807/MatMul/ReadVariableOp#lstm_cell_807/MatMul/ReadVariableOp2N
%lstm_cell_807/MatMul_1/ReadVariableOp%lstm_cell_807/MatMul_1/ReadVariableOp2
whilewhile:S O
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
lstm_807_input;
 serving_default_lstm_807_input:0         =
	dense_2690
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
2dense_269/kernel
:2dense_269/bias
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
0:.	љ2lstm_807/lstm_cell_807/kernel
::8	dљ2'lstm_807/lstm_cell_807/recurrent_kernel
*:(љ2lstm_807/lstm_cell_807/bias
0:.	d╚2lstm_808/lstm_cell_808/kernel
::8	2╚2'lstm_808/lstm_cell_808/recurrent_kernel
*:(╚2lstm_808/lstm_cell_808/bias
/:-2(2lstm_809/lstm_cell_809/kernel
9:7
(2'lstm_809/lstm_cell_809/recurrent_kernel
):'(2lstm_809/lstm_cell_809/bias
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
2Adam/dense_269/kernel/m
!:2Adam/dense_269/bias/m
5:3	љ2$Adam/lstm_807/lstm_cell_807/kernel/m
?:=	dљ2.Adam/lstm_807/lstm_cell_807/recurrent_kernel/m
/:-љ2"Adam/lstm_807/lstm_cell_807/bias/m
5:3	d╚2$Adam/lstm_808/lstm_cell_808/kernel/m
?:=	2╚2.Adam/lstm_808/lstm_cell_808/recurrent_kernel/m
/:-╚2"Adam/lstm_808/lstm_cell_808/bias/m
4:22(2$Adam/lstm_809/lstm_cell_809/kernel/m
>:<
(2.Adam/lstm_809/lstm_cell_809/recurrent_kernel/m
.:,(2"Adam/lstm_809/lstm_cell_809/bias/m
':%
2Adam/dense_269/kernel/v
!:2Adam/dense_269/bias/v
5:3	љ2$Adam/lstm_807/lstm_cell_807/kernel/v
?:=	dљ2.Adam/lstm_807/lstm_cell_807/recurrent_kernel/v
/:-љ2"Adam/lstm_807/lstm_cell_807/bias/v
5:3	d╚2$Adam/lstm_808/lstm_cell_808/kernel/v
?:=	2╚2.Adam/lstm_808/lstm_cell_808/recurrent_kernel/v
/:-╚2"Adam/lstm_808/lstm_cell_808/bias/v
4:22(2$Adam/lstm_809/lstm_cell_809/kernel/v
>:<
(2.Adam/lstm_809/lstm_cell_809/recurrent_kernel/v
.:,(2"Adam/lstm_809/lstm_cell_809/bias/v
ј2І
0__inference_sequential_269_layer_call_fn_4912107
0__inference_sequential_269_layer_call_fn_4912845
0__inference_sequential_269_layer_call_fn_4912872
0__inference_sequential_269_layer_call_fn_4912723└
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913299
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913726
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912753
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912783└
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
"__inference__wrapped_model_4910558lstm_807_input"ў
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
*__inference_lstm_807_layer_call_fn_4913737
*__inference_lstm_807_layer_call_fn_4913748
*__inference_lstm_807_layer_call_fn_4913759
*__inference_lstm_807_layer_call_fn_4913770Н
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4913913
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914056
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914199
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914342Н
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
*__inference_lstm_808_layer_call_fn_4914353
*__inference_lstm_808_layer_call_fn_4914364
*__inference_lstm_808_layer_call_fn_4914375
*__inference_lstm_808_layer_call_fn_4914386Н
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914529
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914672
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914815
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914958Н
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
*__inference_lstm_809_layer_call_fn_4914969
*__inference_lstm_809_layer_call_fn_4914980
*__inference_lstm_809_layer_call_fn_4914991
*__inference_lstm_809_layer_call_fn_4915002Н
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915145
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915288
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915431
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915574Н
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
+__inference_dense_269_layer_call_fn_4915583б
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
F__inference_dense_269_layer_call_and_return_conditional_losses_4915593б
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
%__inference_signature_wrapper_4912818lstm_807_input"ћ
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
/__inference_lstm_cell_807_layer_call_fn_4915610
/__inference_lstm_cell_807_layer_call_fn_4915627Й
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915659
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915691Й
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
/__inference_lstm_cell_808_layer_call_fn_4915708
/__inference_lstm_cell_808_layer_call_fn_4915725Й
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915757
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915789Й
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
/__inference_lstm_cell_809_layer_call_fn_4915806
/__inference_lstm_cell_809_layer_call_fn_4915823Й
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915855
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915887Й
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
"__inference__wrapped_model_4910558Ђ()*+,-./0;б8
1б.
,і)
lstm_807_input         
ф "5ф2
0
	dense_269#і 
	dense_269         д
F__inference_dense_269_layer_call_and_return_conditional_losses_4915593\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_269_layer_call_fn_4915583O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_807_layer_call_and_return_conditional_losses_4913913і()*OбL
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914056і()*OбL
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914199q()*?б<
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
E__inference_lstm_807_layer_call_and_return_conditional_losses_4914342q()*?б<
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
*__inference_lstm_807_layer_call_fn_4913737}()*OбL
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
*__inference_lstm_807_layer_call_fn_4913748}()*OбL
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
*__inference_lstm_807_layer_call_fn_4913759d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_807_layer_call_fn_4913770d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914529і+,-OбL
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914672і+,-OбL
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914815q+,-?б<
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
E__inference_lstm_808_layer_call_and_return_conditional_losses_4914958q+,-?б<
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
*__inference_lstm_808_layer_call_fn_4914353}+,-OбL
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
*__inference_lstm_808_layer_call_fn_4914364}+,-OбL
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
*__inference_lstm_808_layer_call_fn_4914375d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_808_layer_call_fn_4914386d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915145}./0OбL
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915288}./0OбL
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915431m./0?б<
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
E__inference_lstm_809_layer_call_and_return_conditional_losses_4915574m./0?б<
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
*__inference_lstm_809_layer_call_fn_4914969p./0OбL
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
*__inference_lstm_809_layer_call_fn_4914980p./0OбL
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
*__inference_lstm_809_layer_call_fn_4914991`./0?б<
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
*__inference_lstm_809_layer_call_fn_4915002`./0?б<
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915659§()*ђб}
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
J__inference_lstm_cell_807_layer_call_and_return_conditional_losses_4915691§()*ђб}
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
/__inference_lstm_cell_807_layer_call_fn_4915610ь()*ђб}
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
/__inference_lstm_cell_807_layer_call_fn_4915627ь()*ђб}
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915757§+,-ђб}
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
J__inference_lstm_cell_808_layer_call_and_return_conditional_losses_4915789§+,-ђб}
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
/__inference_lstm_cell_808_layer_call_fn_4915708ь+,-ђб}
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
/__inference_lstm_cell_808_layer_call_fn_4915725ь+,-ђб}
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915855§./0ђб}
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
J__inference_lstm_cell_809_layer_call_and_return_conditional_losses_4915887§./0ђб}
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
/__inference_lstm_cell_809_layer_call_fn_4915806ь./0ђб}
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
/__inference_lstm_cell_809_layer_call_fn_4915823ь./0ђб}
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912753y()*+,-./0Cб@
9б6
,і)
lstm_807_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_269_layer_call_and_return_conditional_losses_4912783y()*+,-./0Cб@
9б6
,і)
lstm_807_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913299q()*+,-./0;б8
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
K__inference_sequential_269_layer_call_and_return_conditional_losses_4913726q()*+,-./0;б8
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
0__inference_sequential_269_layer_call_fn_4912107l()*+,-./0Cб@
9б6
,і)
lstm_807_input         
p 

 
ф "і         а
0__inference_sequential_269_layer_call_fn_4912723l()*+,-./0Cб@
9б6
,і)
lstm_807_input         
p

 
ф "і         ў
0__inference_sequential_269_layer_call_fn_4912845d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_269_layer_call_fn_4912872d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_4912818Њ()*+,-./0MбJ
б 
Cф@
>
lstm_807_input,і)
lstm_807_input         "5ф2
0
	dense_269#і 
	dense_269         