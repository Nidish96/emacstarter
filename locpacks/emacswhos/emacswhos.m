function [out] = emacswhos(wrkspc)
    % Provide whos, augmented so Emacs picks it up to display in a special buffer.

    % args = varargin;
    
    nso = emacsnetshell('fetch');
    
    if isempty(nso)
        cookie = true;
    else
        cookie = false;
    end

    switch nargout
      case 0
        if cookie
            disp('<EMACSCAP>(*MATLAB Workspace*)');
        end
        try
            % disp(wrkspc);
            maxNameSize = 0;
            for i=1:length(wrkspc)
                if max(size(wrkspc(i).name)) > maxNameSize
                    maxNameSize = max(size(wrkspc(i).name));
                end
            end
            for i=1:length(wrkspc)
                vrblPrintString = wrkspc(i).name + "\t\t\t\t";
                pStrFormat = "%-" + string(maxNameSize) + "s \t %s %s \n";
                dstr = string(wrkspc(i).size(1));
                vrblSizeDims = length(wrkspc(i).size);
                vrblPrintString = vrblPrintString + wrkspc(i).size(1);
                for j=2:vrblSizeDims
                    vrblPrintString = vrblPrintString + "x" + wrkspc(i).size(j);
                    dstr = dstr + "x" + string(wrkspc(i).size(j));
                end
                vrblPrintString = vrblPrintString + " " + wrkspc(i).class + "\n";
                % fprintf(vrblPrintString);
                % fprintf('%-24s \t %s %s \n', wrkspc(i).name, dstr, wrkspc(i).class);
                fprintf(pStrFormat, wrkspc(i).name, dstr, wrkspc(i).class);
            end
        catch ERR
            disp(ERR)
        end
        if cookie
            disp('</EMACSCAP>');
        end
    case 1
        % [out] = who(args{:});
        [out] = whos();
    end
end
