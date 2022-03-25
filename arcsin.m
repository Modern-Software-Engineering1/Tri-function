%%%%%%%%%       arcsin����������          %%%%%%%%%%%%%%
%������������֣���Χ��-1,1��
%����������Ƕ�
function ArcsinResult = arcsin(InputNum)

if (InputNum > 1)
    msgbox('error!!! Please Re-enter!');
elseif(InputNum < -1)
    msgbox('error!!! Please Re-enter!');
else
    temp = InputNum;
    ArcsinResult= InputNum;
    n = 1;
    while(abs(temp) >= 1e-6)
        temp = temp * (2 * n - 1) * (2 * n - 1) * InputNum * InputNum / ((2 * n) * (2 * n + 1));
        n = n + 1;
        ArcsinResult = ArcsinResult + temp;
    end
    ArcsinResult = roundn(rad2deg(ArcsinResult),-2);
end 