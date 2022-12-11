#https://paiza.jp/works/mondai/a_rank_level_up_problems/ruby/a_rank_snake_mapmove_boss/result?token=22a817c3391265ed132493f1bb74815d
H, W, @sy, @sx, N = gets.chomp.split.map(&:to_i)
ans = []
instruction = []

H.times do
    ans << gets.chomp.split(//).map(&:to_s)
end

# 向いている方向 northが0で、時計回りにeast=1,south=2, west=3
# Lの場合は-1,Rの場合は+1してから4で割ったあまりを計算
@direction = 0

# instructionのL/Rを受け取って、次の方向を決定する
def direction_change(ins)
    if ins == "L"
        @direction = (@direction - 1) % 4
    else
        @direction = (@direction + 1) % 4
    end
    # p "次の方向は#{@direction}"

end


# 現在のdirectionを受け取って、次の場所を決定する
def set_next_place
    direction_setting = [[0,-1],[1,0],[0,1],[-1,0]]
    @sx += direction_setting[@direction][0]
    @sy += direction_setting[@direction][1]
end

N.times do
    instruction << gets.chomp.split
end

now = 0

def submit(ans)
    ans.each do |a|
        puts a.join
    end
end


while now <= 100
    if now < instruction[N-1][0].to_i
        N.times do |i|
            while now < instruction[i][0].to_i
                # p "今が#{now}時で、次の方向転換は#{instruction[i][0].to_i}時。場所が(#{@sx},#{@sy})、その場所は#{ans[@sy][@sx]}"
                if  @sy >=0 && @sx >= 0 && @sy < H && @sx < W && ans[@sy][@sx] == "."
                    ans[@sy][@sx] = "*"
                    set_next_place()
                    now += 1
                else
                    submit(ans)
                    return
                end
            end
            direction_change(instruction[i][1].to_s)
        end
    else
        p "今が#{now}時で、方向転換はなし。場所が(#{@sx},#{@sy})、その場所は#{ans[@sy][@sx]}"
        if ans[@sy][@sx] == "." && @sy >=0 && @sx >= 0
            ans[@sy][@sx] = "*"
            set_next_place()
            now += 1
        else
            submit(ans)
            return
        end
    end
end

submit(ans)
