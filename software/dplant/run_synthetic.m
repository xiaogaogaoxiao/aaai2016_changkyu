s = RandStream('mt19937ar','Seed',1);
RandStream.setGlobalStream(s);
reset(s,0);

nmatlabs = 4;
if verLessThan('matlab', '8.2')
    if matlabpool('size') == 0 
       matlabpool(nmatlabs) ;
    end
else
    poolobj = gcp('nocreate'); % If no pool, do not create new one.
    if isempty(poolobj)
        parpool(nmatlabs);
    end
end

clearvars;
env_setting;
range_models      = [4:6 8:10 12:13];

% range_experiments = 1;
% experiments;

range_experiments = 2;
experiments;

