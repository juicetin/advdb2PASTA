package buffer.policy;

import buffer.BufferFrame;

import java.util.List;
import java.util.Random;

/**
 * Random Replacement Policy
 * - Randomly selects a page from the pool for replacement
 */
public class RandomReplacementPolicy implements ReplacementPolicy {

    private Random mGenerator;

    public RandomReplacementPolicy() {
        mGenerator = new Random();
    }

    @Override
    public String getName() {
        return "RANDOM POLICY";
    }

    @Override
    public BufferFrame choose(List<BufferFrame> pool) {
        assert pool.size() > 0 : "Expects a pool of at least size 1";
        // Pick a random index, try and get that frame
        int randomIndex = mGenerator.nextInt(pool.size());
        return pool.get(randomIndex);
    }

    @Override
    public void notify(List<BufferFrame> pool, BufferFrame frame) {}
}
