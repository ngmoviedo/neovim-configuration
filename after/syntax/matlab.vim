" Vim syntax file
syn keyword matlabStatement		return function arguments
syn keyword matlabLabel			case switch break continue
syn keyword matlabConditional		else elseif end if otherwise
syn keyword matlabRepeat		do for while parfor spmd
" MT_ADDON - added exception-specific keywords
syn keyword matlabExceptions		try catch retrhow throw
syn keyword matlabOO			classdef properties events methods

syn keyword matlabTodo			contained  TODO NOTE FIXME XXX
syn keyword matlabScope			global persistent

syn keyword matlabConstant	eps Inf NaN pi

" trigonometric
syn keyword matlabImplicit      acos acosd acosh acot acotd acoth acsc acscd acsch asec asecd asech asin asind asinh
syn keyword matlabImplicit 		atan atan2 atand atanh cos cosd cosh cot cotd coth csc cscd csch hypot sec secd
syn keyword matlabImplicit      sech sin sind sinh tan tand tanh
" exponential
syn keyword matlabImplicit      exp expm1 log log10 log1p log2 nextpow2 nthroot pow2 reallog realpow realsqrt sqrt
" Complex
syn keyword matlabOperator		abs angle complex conj cplxpair  imag real sign unwrap
" Rounding and Remainder
syn keyword matlabOperator      ceil fix floor idivide mod rem round
"Discrete Math (e.g., Prime Factors)
syn keyword matlabOperator      factor factorial gcd isprime lcm nchoosek perms primes rat rats
"Polynomials
syn keyword matlabOperator      conv deconv poly polyder polyeig polyfit polyint polyval polyvalm residue roots
"Numeric Types
syn keyword matlabOperator      arrayfun cast cat class find intmax intmin intwarning ipermute isa isequal isequalwithequalnans isfinite isinf isnan isnumeric isreal isscalar isvector permute realmax realmin reshape squeeze zeros
"Characters and Strings
syn keyword matlabFunction		cellstr char eval findstr isstr regexp sprintf sscanf strcat strcmp strcmpi strings strjust strmatch strread strrep strtrim strvcat
"Structures
syn keyword matlabFunction		cell2struct deal fieldnames getfield  isfield isstruct orderfields rmfield setfield struct struct2cell structfun
"Cell Arrays
syn keyword matlabFunction		cell cell2mat celldisp cellfun cellplot iscell iscellstr mat2cell num2cell
" Tables
syn keyword matlabFunction		table array2table table2array cell2table table2cell readtable struct2table table2struct uitable
"Function Handles
syn keyword matlabFunction		feval func2str functions str2func
"Java Classes and Objects
syn keyword matlabFunction		clear depfun exist im2java inmem javaaddpath javaArray javachk Generate javaclasspath javaMethod javaObject javarmpath methodsview usejava which
"Data Type Identification
syn keyword matlabFunction		ischar isfloat isinteger isjava islogical isobject validateattributes who whos
"Data type conversion
"Numeric
syn keyword matlabFunction		double int8 int16 int32 int64 single typecast uint8 uint16 uint32 uint64
"String to Numeric
syn keyword matlabFunction		base2dec bin2dec hex2dec hex2num str2double str2num unicode2native
"Numeric to String
syn keyword matlabFunction		dec2base dec2bin dec2hex int2str mat2str native2unicode num2str
"Other Conversions
syn keyword matlabFunction		datestr logical num2hex str2mat
"String Creation
syn keyword matlabFunction		blanks
"String Identification
syn keyword matlabFunction		isletter isspace isstrprop validatestring 
"String Manipulation
syn keyword matlabFunction		deblank lower upper
"String Parsing
syn keyword matlabFunction		regexpi regexprep regexptranslate strfind strtok 
"String Evaluation
syn keyword matlabFunction		evalc evalin
"String Comparison
syn keyword matlabFunction		strncmp strncmpi
"Bit-wise Functions
syn keyword matlabFunction  	bitand bitcmp bitget bitmax bitor bitset bitshift bitxor swapbytes
"Logical Functions
syn keyword matlabFunction		all and any iskeyword isvarname not or xor
"Predefined Dialog Boxes
syn keyword matlabFunction      dialog errordlg export2wsdlg helpdlg inputdlg listdlg msgbox printdlg printpreview questdlg uigetdir uigetfile uigetpref uiopen uiputfile uisave uisetcolor uisetfont waitbar warndlg
"Deploying User Interfaces
syn keyword matlabFunction       guidata guihandles movegui openfig
"Developing User Interfaces
syn keyword matlabFunction       addpref getappdata getpref ginput guide inspect isappdata ispref rmappdata rmpref setappdata setpref uisetpref waitfor waitforbuttonpress
"User Interface Objects
syn keyword matlabFunction		 uibuttongroup uicontextmenu uicontrol uimenu uipanel uipushtool uitoggletool uitoolbar menu
"Finding Objects from Callbacks
syn keyword matlabFunction		 findall findfigs findobj gcbf gcbo 
"GUI Utility Functions
syn keyword matlabFunction		 align getpixelposition listfonts selectmoveresize setpixelposition textwrap uistack
"Controlling Program Execution
syn keyword matlabFunction		 uiresume uiwait	
"Basic Plots and Graphs
syn keyword matlabFunction		 box errorbar hold  loglog  plot plot3 plotyy polar semilogx semilogy subplot
"Plotting Tools
syn keyword matlabFunction		 figurepalette pan plotbrowser plotedit plottools propertyeditor rotate3d  showplottool zoom 

"Annotating Plots
syn keyword matlabFunction		 annotation clabel datacursormode datetick gtext legend  line rectangle texlabel title xlabel ylabel zlabel
"Area, Bar, and Pie Plots
syn keyword matlabFunction		 area bar barh bar3 bar3h pareto pie pie3
"Contour Plots
syn keyword matlabFunction		 contour contour3  contourc contourf ezcontour ezcontourf
"Direction and Velocity Plots
syn keyword matlabFunction		 comet comet3 compass feather quiver quiver3 
"Discrete Data Plots
syn keyword matlabFunction		 stairs stem stem3
"Function Plots
syn keyword matlabFunction		 ezmesh ezmeshc ezplot ezplot3 ezpolar ezsurf ezsurfc fplot 
"Histograms
syn keyword matlabFunction		 hist histc rose imhist
"Polygons and Surfaces
syn keyword matlabFunction		 convhull cylinder delaunay delaunay3 delaunayn dsearch dsearchn ellipsoid fill fill3 inpolygon pcolor  polyarea rectint ribbon slice sphere tsearch tsearchn voronoi waterfall
"Scatter/Bubble Plots
syn keyword matlabFunction		 plotmatrix scatter scatter3
"Animation
syn keyword matlabFunction		 getframe im2frame movie  noanimate
"Bit-Mapped Images
syn keyword matlabFunction		 frame2im image imagesc imfinfo imformats imread imwrite ind2rgb
"Printing
syn keyword matlabFunction		 frameedit hgexport orient print printopt saveas 
"Handle Graphics
syn keyword matlabFunction		 allchild ancestor copyobj delete gca gco get ishandle propedit set
"Object 
syn keyword matlabFunction		 axes figure hggroup hgtransform light patch
"root object	
syn keyword matlabFunction		 surface text
"Plot Objects
syn keyword matlabFunction		 clf close closereq drawnow gcf hgload hgsave newplot opengl refresh
"Axes Operations
syn keyword matlabFunction		 axis cla grid ishold makehgtform
"Operating on Object Properties
syn keyword matlabFunction		 linkaxes linkprop refreshdata
"Data analysis
"Basic Operations
syn keyword matlabFunction		 brush cumprod cumsum linkdata prod sort sortrows sum 
"Descriptive Statistics
syn keyword matlabFunction		 corrcoef cov max mean median min mode std var
"Filtering and Convolution
syn keyword matlabFunction		 conv2 convn detrend filter filter2 
"Interpolation and Regression
syn keyword matlabFunction		 interp1 interp2 interp3 interpn mldivide mrdivide
"Fourier Transforms
syn keyword matlabFunction		 fft fft2 fftn fftshift fftw ifft ifft2 ifftn ifftshift
"Derivatives and Integrals
syn keyword matlabFunction		 cumtrapz del2 diff gradient trapz 
"File Operations
syn keyword matlabFunction		 cd copyfile dir fileattrib filebrowser isdir lookfor ls matlabroot mkdir movefile pwd recycle rehash rmdir toolboxdir type what
"Operating System Interface
syn keyword matlabFunction		 clipboard computer dos getenv hostid maxNumCompThreads perl setenv system unix winqueryreg
"MATLAB Version and License
syn keyword matlabFunction		 ismac ispc isstudent isunix javachk license prefdir usejava ver verLessThan version 
"Basic Information
syn keyword matlabFunction		 disp display isempty issparse length ndims numel size 
"Elementary Matrices and Arrays
syn keyword matlabFunction		 blkdiag diag eye freqspace ind2sub linspace logspace meshgrid ndgrid ones rand randn sub2ind 
"Array Operations
syn keyword matlabFunction		 accumarray bsxfun cross dot kron tril triu 
"Array Manipulation
syn keyword matlabFunction		 circshift flipdim fliplr flipud horzcat inline repmat rot90 shiftdim vectorize vertcat 
"Specialized Matrices
syn keyword matlabFunction		 compan gallery hadamard hankel hilb invhilb magic pascal rosser toeplitz vander wilkinson
"Matrix Analysis
syn keyword matlabFunction		 cond condeig det norm normest null orth rank rcond rref subspace trace
"Linear Equations
syn keyword matlabFunction		 chol cholinc condest funm ilu inv linsolve lscov lsqnonneg lu luinc pinv qr 
"Eigenvalues and Singular Values
syn keyword matlabFunction		 balance cdf2rdf eig eigs gsvd hess ordeig ordqz ordschur rsf2csf schur sqrtm ss2tf svd svds
"Matrix Logarithms and Exponentials
syn keyword matlabFunction		 expm logm 
"Factorization
syn keyword matlabFunction		 cholupdate planerot qrdelete qrinsert qrupdate qz 
"Interpolation
syn keyword matlabFunction		 griddata griddata3 griddatan interp1q interpft mkpp padecoef pchip ppval spline unmkpp 
"Delaunay Triangulation and Tessellation
syn keyword matlabFunction		 tetramesh trimesh triplot trisurf 
"Convex Hull
syn keyword matlabFunction		 convhulln	
"Voronoi Diagrams
syn keyword matlabFunction		 voronoin
"Cartesian Coordinate System Conversion
syn keyword matlabFunction		 cart2pol cart2sph pol2cart sph2cart 
"Ordinary Differential Equations (IVP)
syn keyword matlabFunction		 decic deval ode15i ode23 ode45 ode113 ode15s ode23s ode23t ode23tb odefile odeget odeset odextend
"Delay Differential Equations
syn keyword matlabFunction		 dde23 ddeget ddesd ddeset 
"Boundary Value Problems
syn keyword matlabFunction		 bvp4c bvp5c bvpget bvpinit bvpset bvpxtend
"Partial Differential Equations
syn keyword matlabFunction		 pdepe pdeval 
"Optimization
syn keyword matlabFunction		 fminbnd fminsearch fzero optimget optimset
"Numerical Integration (Quadrature)
syn keyword matlabFunction		 dblquad quad quadgk quadl quadv triplequad
"Specialized Math
syn keyword matlabFunction		 airy besselh besseli besselj besselk bessely beta betainc betaln ellipj ellipke erf erfc erfcx erfinv erfcinv expint gamma gammainc gammaln legendre psi
"Elementary Sparse Matrices
syn keyword matlabFunction		 spdiags speye sprand sprandn sprandsym
"Full to Sparse Conversion
syn keyword matlabFunction		 full sparse spconvert
"Working with Sparse Matrices
syn keyword matlabFunction		 nnz nonzeros nzmax spalloc spfun spones spparms spy 
"Reordering Algorithms
syn keyword matlabFunction		 amd colamd colperm dmperm ldl randperm symamd symrcm 
"Linear Algebra
syn keyword matlabFunction		 spaugment sprank 
"Linear Equations (Iterative Methods)
syn keyword matlabFunction		 bicg bicgstab cgs gmres lsqr minres pcg qmr symmlq 
"Tree Operations
syn keyword matlabFunction		 etree etreeplot gplot symbfact treelayout treeplot 
"Timeseries
"General Purpose
syn keyword matlabFunction		 getdatasamplesize getqualitydesc timeseries tsprops tstool
"Data Manipulation
syn keyword matlabFunction		 addsample ctranspose delsample getabstime getinterpmethod getsampleusingtime idealfilter resample setabstime setinterpmethod synchronize transpose
"Event Data
syn keyword matlabFunction		 addevent delevent gettsafteratevent gettsafterevent gettsatevent gettsbeforeatevent gettsbeforeevent  gettsbetweenevents
"Descriptive Statistics
syn keyword matlabFunction		 iqr

"Time Series Collections
"General Purpose
syn keyword matlabFunction		 tscollection
"Data Manipulation
syn keyword matlabFunction		 addsampletocollection addts delsamplefromcollection gettimeseriesnames removets settimeseriesnames
"Set Functions
syn keyword matlabFunction		 intersect ismember issorted setdiff setxor union unique 
"Date and Time Functions
syn keyword matlabFunction		 addtodate calendar clock cputime date datenum datevec eomday etime now weekday
"M-File Functions and Scripts
syn keyword matlabFunction		 addOptional addParamValue addRequired createCopy depdir echo input inputname inputParser mfilename namelengthmax nargchk nargin nargout nargoutchk parse pcode
"script	Script M-file description
syn keyword matlabFunction		 varargin varargout
"Evaluation of Expressions and Functions
syn keyword matlabFunction		 ans assert builtin pause run script symvar
"Timer Functions
syn keyword matlabFunction		 isvalid start startat stop timer timerfind timerfindall wait 
"Variables and Functions in Memory
syn keyword matlabFunction		 assignin datatipinfo genvarname isglobal memory mislocked mlock munlock pack
"Control Flow
syn keyword matlabFunction		 parfor
"Error Handling
syn keyword matlabFunction		 addCause error ferror getReport last lasterr lasterror lastwarn warning
"Classes and Objects
syn keyword matlabFunction		 addlistener addprop dynamicprops 
"events 	Display class event names
syn keyword matlabFunction		 findprop getdisp handle hgsetget inferiorto loadobj metaclass notify saveobj setdisp subsasgn subsindex subsref substruct superiorto 
"File Name Construction
syn keyword matlabFunction		 filemarker fileparts filesep fullfile tempdir tempname 
"Opening, Loading, Saving Files
syn keyword matlabFunction		 daqread filehandle importdata load open save uiimport winopen 
"Memory Mapping
syn keyword matlabFunction		 memmapfile
"Low-Level File I/O
syn keyword matlabFunction		 fclose feof fgetl fgets fopen fprintf fread frewind fscanf fseek ftell fwrite 

"Text Files
syn keyword matlabFunction		 csvread csvwrite dlmread dlmwrite textread textscan
"XML Documents
syn keyword matlabFunction		 xmlread xmlwrite xslt
"Microsoft Excel Functions
syn keyword matlabFunction		 xlsfinfo xlsread xlswrite
"Lotus 1-2-3 Functions
syn keyword matlabFunction		 wk1finfo wk1read wk1write
"Common Data Format (CDF)
syn keyword matlabFunction		 cdfepoch cdfinfo cdfread cdfwrite todatenum 
"Flexible Image Transport System
syn keyword matlabFunction		 fitsinfo fitsread 
"Hierarchical Data Format (HDF)
syn keyword matlabFunction		 hdf hdf5 hdf5info hdf5read hdf5write hdfinfo hdfread hdftool 
"Band-Interleaved Data
syn keyword matlabFunction		 multibandread multibandwrite

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link matlabConstant 		Costant

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
